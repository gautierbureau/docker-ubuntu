FROM ubuntu
RUN apt-get upgrade && apt-get update && apt-get install -y gcc && apt-get install -y gdb && apt-get install -y llvm && apt-get install -y build-essential && apt-get install -y clang && apt-get update && apt-get clean && rm -rf /var/lib/apt/lists/*

# Example very clever to install a library 
# RUN apt-get update &&  apt-get install  -y \
#     build-essential \
#     libpcre3-dev \
#     curl \
#     python \
#     python-pygments \
#  && apt-get clean \
#  && rm -rf /var/lib/apt/lists/*
#
# RUN mkdir /cfg
#
# RUN cd /tmp \
#  && curl -L https://github.com/danmar/cppcheck/archive/1.77.tar.gz | tar xz \
#  && cd cppcheck-1.77 \
#  && SRCDIR=build CFGDIR=/cfg HAVE_RULES=yes CXXFLAGS="-O2 -DNDEBUG -Wall -Wno-sign-compare -Wno-unused-function" make \
#  && SRCDIR=build CFGDIR=/cfg HAVE_RULES=yes CXXFLAGS="-O2 -DNDEBUG -Wall -Wno-sign-compare -Wno-unused-function" make install \
#  && cd \
# && rm -r /tmp/cppcheck-1.77

# Install Latex
# RUN apt-get update && apt-get install  -y \
#     biber \
#     curl \
#     texlive-full \
#     git \
#     gnuplot \
#     python-matplotlib \
#     make \
#  && apt-get clean \
# && rm -rf /var/lib/apt/lists/*