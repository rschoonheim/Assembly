echo "Building the application... \n"
docker build -q -f Application/Dockerfile -t assembly Application
clear
echo "Running the application... \n"
docker run assembly