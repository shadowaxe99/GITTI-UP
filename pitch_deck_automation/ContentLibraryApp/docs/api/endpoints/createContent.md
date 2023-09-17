# Create Content Endpoint

## Description
This endpoint is used to create new content in the ContentLibraryApp.

## URL

POST /api/content


## Request
- Method: POST
- Headers:
  - Content-Type: application/json
  - Authorization: Bearer [access_token]
- Body:
  - title (string, required): The title of the content.
  - description (string, required): The description of the content.
  - tags (array of strings, optional): The tags associated with the content.

## Response
- Status Code: 201 Created
- Body:
  - id (string): The unique identifier of the created content.
  - title (string): The title of the content.
  - description (string): The description of the content.
  - tags (array of strings): The tags associated with the content.
  - createdAt (string): The timestamp when the content was created.

## Error Responses
- Status Code: 400 Bad Request
  - Body:
    - message (string): The error message.

- Status Code: 401 Unauthorized
  - Body:
    - message (string): The error message.

## Example
### Request

POST /api/content
Content-Type: application/json
Authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiIxMjM0NTY3ODkwIiwibmFtZSI6IkpvaG4gRG9lIiwiaWF0IjoxNTE2MjM5MDIyfQ.SflKxwRJSMeKKF2QT4fwpMeJf36POk6yJV_adQssw5c

{
  "title": "Sample Content",
  "description": "This is a sample content",
  "tags": ["sample", "content"]
}


### Response

HTTP/1.1 201 Created

{
  "id": "1234567890",
  "title": "Sample Content",
  "description": "This is a sample content",
  "tags": ["sample", "content"],
  "createdAt": "2022-01-01T12:00:00Z"
}
