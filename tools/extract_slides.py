# -*- coding: utf-8 -*-
"""從 Zoom 螢幕錄影中抽出投影片：偵測換頁 → 存圖 + 時間碼索引"""
import cv2, numpy as np, os, sys, json, time

# 投影片區域（1440x750 版面，已目視確認 19 支一致）
CROP = dict(x0=150, y0=130, x1=925, y1=700)
SAMPLE_SEC   = 1.5    # 每 1.5 秒取樣一次
DIFF_TH      = 6.0    # 換頁判定：平均絕對差 > 此值
STABLE_TH    = 2.0    # 穩定判定：與前一取樣差 < 此值
DEDUP_TH     = 3.5    # 與「上一張已存」的差 < 此值就不存（避免重複）
MIN_GAP_SEC  = 3.0    # 兩張投影片至少間隔

def sig(frame):
    c = frame[CROP['y0']:CROP['y1'], CROP['x0']:CROP['x1']]
    g = cv2.cvtColor(c, cv2.COLOR_BGR2GRAY)
    return cv2.resize(g, (192, 144)).astype(np.float32), c

def diff(a, b):
    return float(np.mean(np.abs(a - b)))

def process(video, outdir, tag):
    os.makedirs(outdir, exist_ok=True)
    cap = cv2.VideoCapture(video)
    fps = cap.get(cv2.CAP_PROP_FPS) or 30.0
    total = int(cap.get(cv2.CAP_PROP_FRAME_COUNT))
    step = max(1, int(round(fps * SAMPLE_SEC)))
    prev_s = None; last_saved_s = None; last_saved_t = -999
    slides = []; idx = 0; fno = 0
    pending = None   # (sig, crop, t) 等待穩定
    t0 = time.time()
    while True:
        ok = cap.grab()
        if not ok: break
        if fno % step == 0:
            ok, frame = cap.retrieve()
            if ok and frame is not None:
                t = fno / fps
                s, crop = sig(frame)
                if prev_s is None:
                    pending = (s, crop, t)
                else:
                    d = diff(s, prev_s)
                    if d > DIFF_TH:
                        pending = (s, crop, t)          # 剛換頁，等穩定
                    elif pending is not None and d < STABLE_TH:
                        ps, pc, pt = pending
                        new = (last_saved_s is None or diff(s, last_saved_s) > DEDUP_TH)
                        if new and (pt - last_saved_t) > MIN_GAP_SEC:
                            idx += 1
                            mm, ss = int(pt // 60), int(pt % 60)
                            name = f"{tag}_s{idx:03d}_{mm:03d}m{ss:02d}s.png"
                            ok2, buf = cv2.imencode(".png", crop)
                            if ok2:
                                open(os.path.join(outdir, name), "wb").write(buf.tobytes())
                                slides.append(dict(n=idx, t=round(pt,1),
                                                   ts=f"{mm//60:02d}:{mm%60:02d}:{ss:02d}",
                                                   file=name))
                                last_saved_s = s; last_saved_t = pt
                        pending = None
                prev_s = s
        fno += 1
    cap.release()
    el = time.time() - t0
    return slides, el, total/fps if fps else 0

if __name__ == "__main__":
    video, outdir, tag = sys.argv[1], sys.argv[2], sys.argv[3]
    slides, el, dur = process(video, outdir, tag)
    json.dump(slides, open(os.path.join(outdir, f"{tag}_index.json"), "w",
              encoding="utf-8"), ensure_ascii=False, indent=1)
    print(f"{tag}: {len(slides)} 張投影片 / 影片 {dur/60:.0f} 分 / 耗時 {el:.0f} 秒")
