ffmpeg -loop 1 -i image.png -i  input.mp4 -filter_complex "[1:v]colorkey=0x000000:0.5:0.5[ckout];[0:v][ckout]overlay[out]" -map "[out]" -t 20   -c:a copy -c:v libx264 output.mp4


