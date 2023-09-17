const contentService = require('../../src/services/contentService');

test('should return all content', () => {
  const allContent = contentService.getAllContent();
  expect(allContent).toHaveLength(3);
});

test('should return content by id', () => {
  const content = contentService.getContentById(1);
  expect(content).toEqual({
    id: 1,
    title: 'Sample Content 1',
    description: 'This is the first sample content',
  });
});

test('should add new content', () => {
  const newContent = {
    title: 'New Content',
    description: 'This is a new content',
  };
  const addedContent = contentService.addContent(newContent);
  expect(addedContent).toEqual({
    id: 4,
    title: 'New Content',
    description: 'This is a new content',
  });
});

test('should update content', () => {
  const updatedContent = {
    id: 1,
    title: 'Updated Content',
    description: 'This is an updated content',
  };
  const content = contentService.updateContent(updatedContent);
  expect(content).toEqual({
    id: 1,
    title: 'Updated Content',
    description: 'This is an updated content',
  });
});

test('should delete content', () => {
  const deletedContent = contentService.deleteContent(2);
  expect(deletedContent).toEqual({
    id: 2,
    title: 'Sample Content 2',
    description: 'This is the second sample content',
  });
});