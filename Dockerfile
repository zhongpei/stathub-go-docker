FROM golang:1.5
RUN echo "Asia/Shanghai" > /etc/timezone
RUN dpkg-reconfigure -f noninteracgolang:1.5
RUN git clone https://github.com/zhongpei/stathub-go.git
RUN ./build.sh
RUN ./setup_local.sh
CMD [ "./service", "start" ]
