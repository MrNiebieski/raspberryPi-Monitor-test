export DISPLAY=:0
raspivid -o - -t 99999 -w 200 -h 200 -fps 25|cvlc -vvv stream:///dev/stdin --sout '#standard{access=http,mux=ts,dst=:8090}' :demux=h264
