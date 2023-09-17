# API Endpoints

## Create Content
Endpoint: `/api/content`
Method: `POST`
Description: Create new content in the Content Library.

Request Body:

{
  "title": "Example Title",
  "description": "Example Description",
  "author": "John Doe",
  "tags": ["tag1", "tag2"],
  "content": "Example Content"
}


Response:

{
  "id": "123456789",
  "title": "Example Title",
  "description": "Example Description",
  "author": "John Doe",
  "tags": ["tag1", "tag2"],
  "content": "Example Content",
  "createdAt": "2022-01-01T00:00:00Z",
  "updatedAt": "2022-01-01T00:00:00Z"
}


## Update Content
Endpoint: `/api/content/{contentId}`
Method: `PUT`
Description: Update existing content in the Content Library.

Request Body:

{
  "title": "Updated Title",
  "description": "Updated Description",
  "author": "Jane Smith",
  "tags": ["tag1", "tag3"],
  "content": "Updated Content"
}


Response:

{
  "id": "123456789",
  "title": "Updated Title",
  "description": "Updated Description",
  "author": "Jane Smith",
  "tags": ["tag1", "tag3"],
  "content": "Updated Content",
  "createdAt": "2022-01-01T00:00:00Z",
  "updatedAt": "2022-01-02T00:00:00Z"
}


## Delete Content
Endpoint: `/api/content/{contentId}`
Method: `DELETE`
Description: Delete content from the Content Library.

Response:

{
  "message": "Content deleted successfully"
}


## Get Content
Endpoint: `/api/content/{contentId}`
Method: `GET`
Description: Get content from the Content Library.

Response:

{
  "id": "123456789",
  "title": "Example Title",
  "description": "Example Description",
  "author": "John Doe",
  "tags": ["tag1", "tag2"],
  "content": "Example Content",
  "createdAt": "2022-01-01T00:00:00Z",
  "updatedAt": "2022-01-01T00:00:00Z"
}
