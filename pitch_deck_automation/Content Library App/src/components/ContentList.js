import React, { useState, useEffect } from 'react';
import { getContentList, deleteContent } from '../services/contentService';

const ContentList = () => {
  const [contentList, setContentList] = useState([]);

  useEffect(() => {
    fetchContentList();
  }, []);

  const fetchContentList = async () => {
    try {
      const response = await getContentList();
      setContentList(response.data);
    } catch (error) {
      console.error('Error fetching content list:', error);
    }
  };

  const handleDelete = async (contentId) => {
    try {
      await deleteContent(contentId);
      fetchContentList();
    } catch (error) {
      console.error('Error deleting content:', error);
    }
  };

  return (
    <div>
      <h2>Content List</h2>
      {contentList.map((content) => (
        <div key={content.id}>
          <h3>{content.title}</h3>
          <p>{content.description}</p>
          <button onClick={() => handleDelete(content.id)}>Delete</button>
        </div>
      ))}
    </div>
  );
};

export default ContentList;