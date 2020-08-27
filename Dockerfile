FROM azrim89/kurumi:rev-3

RUN git clone https://github.com/silont-project/kernel_xiaomi_ginkgo -b new --depth=1 $HOME/kernel

RUN git config --global user.name "azrim"
RUN git config --global user.email "mirzaspc@gmail.com"

COPY build.sh /home/runner/build.sh

CMD ["bash", "build.sh"]
