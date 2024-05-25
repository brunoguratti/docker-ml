
# Docker ML Project

## Overview
This project is an example of a machine learning application containerized using Docker. The application serves a machine learning model that can be accessed through a `/predict` endpoint.

## Instructions to Build and Run the Docker Container

### Build the Docker Image
To build the Docker image, navigate to the project directory and run the following command:
```sh
sudo docker build -t ml-app .
```

### Run the Docker Container
To run the Docker container and map port 4000 on your host to port 80 in the container, use the following command:
```sh
sudo docker run -p 4000:80 ml-app
```

## Instructions to Test the ML Endpoint

### Using `curl`
You can test the `/predict` endpoint using `curl` by sending a POST request with JSON data:
```sh
curl -X POST http://localhost:4000/predict -H "Content-Type: application/json" -d '{"input": [5.1, 3.5, 1.4, 0.2]}'
```

### Using Postman
1. Open Postman.
2. Create a new POST request.
3. Set the URL to `http://localhost:4000/predict`.
4. Set the header `Content-Type` to `application/json`.
5. Set the body to the following JSON:
```json
{
  "input": [5.1, 3.5, 1.4, 0.2]
}
```
6. Click "Send" to see the prediction response.
7. The response will be a JSON object with the predicted class label.
```json
{
    "prediction": 0
}
```

## Additional Information
- Ensure Docker is installed on your machine. For installation instructions, refer to the [Docker documentation](https://docs.docker.com/get-docker/).
- The machine learning model used in this project is a simple example using the Iris dataset. Modify the `train_model.py` script to train and serve your own models.
- Make sure the required Python packages are listed in the `requirements.txt` file.
