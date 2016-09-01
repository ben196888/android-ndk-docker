FROM phusion/baseimage
MAINTAINER ben196888 <ben196888@gmail.com>

ENV HOME /root

CMD ["/sbin/my_init"]

# Enable ssh
RUN rm -f /etc/service/sshd/down
EXPOSE 22

# Install required packages
RUN apt-get update -qq
RUN apt-get install -yqq unzip

# Download Android ndk
ENV ANDROID_NDK_HOME /opt/android-ndk-r12b
RUN cd /opt && curl -O https://dl.google.com/android/repository/android-ndk-r12b-linux-x86_64.zip
RUN cd /opt && unzip -q android-ndk-r12b-linux-x86_64.zip
RUN rm -rf /opt/android-ndk-r12b-linux-x86_64.zip
ENV PATH ${PATH} ${ANDROID_NDK_HOME}

# Clean up
RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*