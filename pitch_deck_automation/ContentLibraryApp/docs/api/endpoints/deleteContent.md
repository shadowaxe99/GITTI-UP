
# Delete Content

Endpoint: `/api/content/{contentId}`
Method: DELETE

## Request
No request body is required.

## Response
- 204 No Content: Content successfully deleted.
- 404 Not Found: Content not found.

## Example
Request:

DELETE /api/content/1234567890 HTTP/1.1
Host: example.com


Response:

HTTP/1.1 204 No Content

