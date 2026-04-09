## Dockerized Node.js User Profile Application

This project is a full-stack containerized application consisting of a Node.js frontend/backend, a MongoDB database, and a Mongo-Express administrative UI.

### A System Architecture
The application runs as a multi-container stack within a dedicated Docker network (mongo-network), ensuring seamless communication between services using container hostnames.

### B Tech Stack & Container Images
The following verified versions are used to ensure hardware compatibility (specifically addressing AVX requirements) and stability:
* Node.js: 18-alpine (LTS version)
* MongoDB: 4.4 (Compatible with non-AVX CPUs)
* Mongo-Express: latest

### C Local Development Setup

Before containerizing, you can run the app directly on your host machine.

#### Step 1. PowerShell Script Fix on Windows
If you encounter a "scripts are disabled" error when running npm, follow these steps to update your execution policy:
	a. Open PowerShell as Administrator.
	b. Execute the following command:
	PowerShell
	Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser
	c. Type 'A' (Yes to All) and press Enter.

#### Step 2. Local Installation
Navigate to the app/ folder and install dependencies:

	cd app
	npm install
	node server.js

#### Step 3. Docker Deployment
To launch the entire stack using Docker Compose, navigate to the root directory and run:

	docker-compose up -d

#### Access Points
	Service			    URL
	Node.js App		    http://localhost:3000
	Mongo-Express UI	http://localhost:8081

Note: when you access Mongo-Express UI first time on local or on aws ec2-instance, you will get a Browser Base64 authentication 
    use admin/pass credentials to launch mongo-express UI.
#### Step 4. Data Persistence
Persistent data is stored in a Docker named volume.
* Volume Name: mongo-data

#### Step 5. Maintenance Commands
	* When my-app (Node App) is updated, need to rebuild the customer image: 
        docker build -t my-app:1.x .
        docker-compose up -d
	* Check Logs: docker logs my-app:1.x
	* Remove Stack: docker-compose down

Fix PowerShell Execution Policy for npm (https://www.youtube.com/watch?v=6vdQi_BK-uM)
This video provides a direct walkthrough of identifying and resolving PowerShell permission errors, ensuring your Node.js environment is correctly configured for local development.

