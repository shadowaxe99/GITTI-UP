
# Update Content

Endpoint: /api/content/{contentId}
Method: PUT

## Request
- Headers:
  - Content-Type: application/json
  - Authorization: Bearer {access_token}

- Path Parameters:
  - contentId: The ID of the content to be updated

- Request Body:
  - title (string, optional): The updated title of the content
  - description (string, optional): The updated description of the content
  - tags (array of strings, optional): The updated tags of the content

## Response
- Status Code: 200 OK
- Response Body:
  - id (string): The ID of the updated content
  - title (string): The updated title of the content
  - description (string): The updated description of the content
  - tags (array of strings): The updated tags of the content

- Status Code: 400 Bad Request
- Response Body:
  - error (string): The error message

- Status Code: 401 Unauthorized
- Response Body:
  - error (string): The error message

- Status Code: 404 Not Found
- Response Body:
  - error (string): The error message

