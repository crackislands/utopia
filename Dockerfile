FROM debian:buster-slim
RUN cd /tmp && \
apt update && \
apt full-upgrade -y && \
apt install wget libglib2.0-0 netbase -y && \
wget https://update.u.is/downloads/uam/linux/uam-latest_amd64.deb && \
dpkg -i /tmp/uam-latest_amd64.deb
CMD /opt/uam/uam --pk 6770A9BB538606D1A477A9849384D8EA3BC42A789E9EEE7F1A34A9B8CE9AC228 --no-ui
