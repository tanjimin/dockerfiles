FROM ubuntu:18.04 

# python
RUN apt-get update && apt-get install -y \
    python3.8 \
    python3-pip \
    && rm -rf /var/lib/apt/lists/*

# project specific
WORKDIR /project


# Install base ml packages
RUN pip3 install \
    pandas==1.1.1 \
    scikit-learn==0.23.2

# Install pandas-profiling
RUN apt-get update && apt-get install -y \
    llvm-10 \
    && rm -rf /var/lib/apt/lists/* \ 
    && export LLVM_CONFIG=llvm-config-10 \
    && pip3 install \ 
    pandas-profiling==2.8.0 

# Install other python packages
COPY requirements.txt .
RUN pip3 install --no-cache-dir -r requirements.txt \
    && rm requirements.txt \
    && rm -rf ~/.cache/pip
