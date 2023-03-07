echo "Building the application... \n"
docker build -f Application/Dockerfile -t assembly Application

echo "Running the application... \n"
docker run assembly