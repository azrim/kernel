FROM azrim89/kurumi:rev-3

RUN git clone https://github.com/silont-project/kernel_xiaomi_ginkgo -b new --depth=1 /mnt/workdir/kernel

RUN git config --global user.name "azrim"
RUN git config --global user.email "mirzaspc@gmail.com"

COPY build.sh /mnt/workdir/kernel/build.sh

CMD ["bash", "/mnt/workdir/kernel/build.sh"]
