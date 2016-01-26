FROM perl:5.20

RUN apt-get update && apt-get install -yy cpanminus=1.7014-1

ADD . /innotop
WORKDIR /innotop
RUN cpanm --notest --installdeps .
RUN perl Makefile.PL
