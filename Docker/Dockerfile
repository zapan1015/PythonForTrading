# Python for Algorithmic Trading

FROM ubuntu:22.04

ADD install.sh /
RUN chmod u+x /install.sh
RUN /install.sh
ENV PATH /root/miniconda3/bin:$PATH

CMD ["ipython"]
