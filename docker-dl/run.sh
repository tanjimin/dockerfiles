# Copy dependencies
cp ../requirements.txt .

# Build Docker
sudo docker build -t dl:test .

# Run Docker
sudo docker run -it --rm --gpus all -v $(pwd)/../:/app dl:test
