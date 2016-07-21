FROM golang:1.5
RUN echo "Asia/Shanghai" > /etc/timezone
RUN dpkg-reconfigure -f noninteractive tzdata
ADD stathub-go /opt/stathub
#RUN git clone https://github.com/zhongpei/stathub-go.git /opt/stathub
WORKDIR /opt/stathub
RUN ./build.sh
COPY ./stathub-go/setup_local.sh /opt/stathub/setup_local.sh
RUN ./setup_local.sh
WORKDIR /var/stathub
CMD [ "./service", "start" ]
