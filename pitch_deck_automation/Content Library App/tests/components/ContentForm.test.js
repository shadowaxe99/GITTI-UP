import React from 'react';
import { render, fireEvent } from '@testing-library/react';
import ContentForm from '../../src/components/ContentForm';

test('renders content form', () => {
  const { getByLabelText } = render(<ContentForm />);
  const titleInput = getByLabelText('Title');
  const descriptionInput = getByLabelText('Description');
  const submitButton = getByLabelText('Submit');

  expect(titleInput).toBeInTheDocument();
  expect(descriptionInput).toBeInTheDocument();
  expect(submitButton).toBeInTheDocument();
});

test('submits form with correct values', () => {
  const handleSubmit = jest.fn();
  const { getByLabelText } = render(<ContentForm onSubmit={handleSubmit} />);
  const titleInput = getByLabelText('Title');
  const descriptionInput = getByLabelText('Description');
  const submitButton = getByLabelText('Submit');

  fireEvent.change(titleInput, { target: { value: 'Test Title' } });
  fireEvent.change(descriptionInput, { target: { value: 'Test Description' } });
  fireEvent.click(submitButton);

  expect(handleSubmit).toHaveBeenCalledWith({
    title: 'Test Title',
    description: 'Test Description',
  });
});