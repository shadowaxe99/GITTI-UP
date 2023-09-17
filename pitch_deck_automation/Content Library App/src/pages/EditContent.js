import React, { useState, useEffect } from 'react';
import { useParams, useHistory } from 'react-router-dom';
import { getContent, updateContent } from '../services/contentService';

const EditContent = () => {
  const { id } = useParams();
  const history = useHistory();
  const [content, setContent] = useState({});

  useEffect(() => {
    const fetchContent = async () => {
      const response = await getContent(id);
      setContent(response.data);
    };

    fetchContent();
  }, [id]);

  const handleInputChange = (e) => {
    const { name, value } = e.target;
    setContent((prevContent) => ({
      ...prevContent,
      [name]: value,
    }));
  };

  const handleSubmit = async (e) => {
    e.preventDefault();
    await updateContent(id, content);
    history.push('/');
  };

  return (
    <div>
      <h2>Edit Content</h2>
      <form onSubmit={handleSubmit}>
        <div>
          <label>Title:</label>
          <input
            type="text"
            name="title"
            value={content.title || ''}
            onChange={handleInputChange}
          />
        </div>
        <div>
          <label>Description:</label>
          <textarea
            name="description"
            value={content.description || ''}
            onChange={handleInputChange}
          ></textarea>
        </div>
        <button type="submit">Update</button>
      </form>
    </div>
  );
};

export default EditContent;