# Copy dependencies
cp ../requirements.txt .

# Build Docker
sudo docker build -t ml:test .
rm requirements.txt

# Run Docker
sudo docker run -it --rm -v $(pwd)/../:/project ml:test
