FROM nvidia/cuda:10.1-base-ubuntu18.04 

WORKDIR /app

# python
RUN apt-get update && apt-get install -y \
    python3.8 \
    python3-pip \
    && rm -rf /var/lib/apt/lists/*

# pytorch
RUN pip3 install --no-cache-dir torch==1.6.0+cu101 \
    torchvision==0.7.0+cu101 \
    -f https://download.pytorch.org/whl/torch_stable.html

COPY requirements.txt .

# other packages
RUN pip3 install --no-cache-dir -r requirements.txt
