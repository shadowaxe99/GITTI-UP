
# Authentication

To access the ContentLibraryApp API, authentication is required. The API uses token-based authentication using JSON Web Tokens (JWT).

## Request

To authenticate, send a POST request to the `/auth/login` endpoint with the following parameters:

- `username`: The username of the user.
- `password`: The password of the user.

Example request:


POST /auth/login
Content-Type: application/json

{
  "username": "example_user",
  "password": "example_password"
}


## Response

If the authentication is successful, the API will respond with a JSON object containing the access token.

Example response:


{
  "access_token": "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiIxMjM0NTY3ODkwIiwibmFtZSI6IkpvaG4gRG9lIiwiaWF0IjoxNTE2MjM5MDIyfQ.SflKxwRJSMeKKF2QT4fwpMeJf36POk6yJV_adQssw5c"
}


## Authorization

To authorize requests to protected endpoints, include the access token in the `Authorization` header of the request.

Example request with authorization header:


GET /api/content
Authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiIxMjM0NTY3ODkwIiwibmFtZSI6IkpvaG4gRG9lIiwiaWF0IjoxNTE2MjM5MDIyfQ.SflKxwRJSMeKKF2QT4fwpMeJf36POk6yJV_adQssw5c


If the access token is invalid or expired, the API will respond with a 401 Unauthorized status code.


