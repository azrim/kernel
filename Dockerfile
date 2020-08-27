FROM azrim89/kurumi:rev-3

RUN useradd runner --create-home

USER runner
WORKDIR /home/runner

RUN git clone https://github.com/silont-project/kernel_xiaomi_ginkgo -b new --depth=1 /home/runner/kernel

RUN git config --global user.name "azrim"
RUN git config --global user.email "mirzaspc@gmail.com"

COPY build.sh /home/runner/kernel/build.sh

CMD ["bash", "kernel/build.sh"]
