# Messagely App

Messagely is a messaging application built with Node.js (Express) for the backend application, no frontend implementation. It allows users to register, log in, send messages to other users, and view messages sent to or received from other users. The app also includes proper authentication and authorization for secure communication.

## Features

1. **User Authentication**:
   - User registration and login with password encryption (bcrypt).
   - JWT-based authentication for secure access.

2. **Messaging**:
   - Send messages to other users.
   - View messages sent to and received from other users.
   - Mark messages as read.

4. **Backend**:
   - RESTful API built with Express.js.
   - PostgreSQL database for persistent data storage.

5. **Security**:
   - Passwords hashed using bcrypt.
   - Authorization middleware ensures only authorized users can access specific endpoints.
---

## Folder Structure

### Backend:
```
backend/
├── db/                  # Database connection setup
├── models/              # Database models (User, Message)
├── routes/              # API routes (auth, users, messages)
├── middleware/          # Authentication and authorization middleware
├── app.js               # Express app setup
├── server.js            # Server initialization
└── config.js            # Configuration (e.g., environment variables)
```

### Frontend:
        ### TO BE IMPLEMENTED....

---

## API Endpoints

### Authentication:
- `POST /auth/register`: Register a new user.
- `POST /auth/login`: Log in an existing user.

### Users:
- `GET /users`: Get a list of all users.
- `GET /users/:username`: Get details for a specific user.

### Messages:
- `POST /messages`: Send a message.
- `GET /messages/:id`: Get details of a specific message.
- `POST /messages/:id/read`: Mark a message as read.

---

## Technologies Used

### Backend:
- Node.js
- Express.js
- PostgreSQL
- bcrypt
- JWT (jsonwebtoken)
---
