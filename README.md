# Kanban Frontend

This is the Angular frontend application for the Kanban board project. It provides a responsive and user-friendly interface to interact with the backend API and manage tasks in real-time.

## Prerequisites

- Node.js (recommended version 20.x)
- npm (comes with Node.js)
- Docker (optional, for containerized deployment)

## Running Locally

1. Clone the repository and navigate to the frontend directory.
2. Install dependencies:
   ```bash
   npm install
   ```
3. Start the development server:
   ```bash
   npm start
   ```
4. Open your browser and go to `http://localhost:4200`.

## Building for Production

To build the application for production, run:
```bash
npm run build -- --configuration=production
```

The build artifacts will be stored in the `dist/kanban/browser` directory.

## Running with Docker

You can build and run the frontend using Docker with the provided Dockerfile:

1. Build the Docker image:
   ```bash
   docker build -t kanban-frontend .
   ```
2. Run the Docker container:
   ```bash
   docker run -d -p 80:80 kanban-frontend
   ```
3. Access the frontend at `http://localhost`.

This Docker setup uses Nginx to serve the built Angular application.

## Notes

- This frontend is designed to work with the Kanban backend API.
- Make sure the backend API is running and accessible.

---

**Generated with**: Angular CLI 17.3.8  
**Node Version**: 20.x (recommended)