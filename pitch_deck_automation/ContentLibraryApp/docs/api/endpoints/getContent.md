
# Get Content

Endpoint to retrieve content from the Content Library.

## URL


GET /api/content/{contentId}


## Parameters

| Name      | Type   | Description           |
| --------- | ------ | --------------------- |
| contentId | string | ID of the content item |

## Request

- Headers

  - Authorization: Bearer {access_token}

## Response

- Status Code: 200 OK

- Body

  
  {
    "id": "123456",
    "title": "Sample Content",
    "description": "This is a sample content item",
    "author": "John Doe",
    "createdAt": "2021-01-01T12:00:00Z",
    "updatedAt": "2021-01-01T12:30:00Z"
  }
  

- Status Code: 404 Not Found

- Body

  
  {
    "error": "Content not found"
  }
  

## Error Responses

- Status Code: 401 Unauthorized

- Body

  
  {
    "error": "Unauthorized"
  }
  

- Status Code: 500 Internal Server Error

- Body

  
  {
    "error": "Internal Server Error"
  }
  
