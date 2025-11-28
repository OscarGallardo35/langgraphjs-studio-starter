#!/bin/bash

# Build and run the container
docker compose up --build -d

echo "LangGraph Studio desplegado en http://localhost:3000"