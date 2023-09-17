import React from 'react';
import { render, screen } from '@testing-library/react';
import ContentList from '../../src/components/ContentList';

test('renders content list component', () => {
  render(<ContentList />);
  const contentListElement = screen.getByTestId('content-list');
  expect(contentListElement).toBeInTheDocument();
});

test('displays correct number of content items', () => {
  const mockContent = [
    { id: 1, title: 'Content 1', description: 'This is content 1' },
    { id: 2, title: 'Content 2', description: 'This is content 2' },
    { id: 3, title: 'Content 3', description: 'This is content 3' },
  ];

  render(<ContentList content={mockContent} />);
  const contentItems = screen.getAllByTestId('content-item');
  expect(contentItems.length).toBe(mockContent.length);
});

test('displays correct content item details', () => {
  const mockContent = [
    { id: 1, title: 'Content 1', description: 'This is content 1' },
  ];

  render(<ContentList content={mockContent} />);
  const contentItem = screen.getByTestId('content-item');
  expect(contentItem).toHaveTextContent('Content 1');
  expect(contentItem).toHaveTextContent('This is content 1');
});