import React, { useState, useEffect } from 'react';
import { Link } from 'react-router-dom';
import { getContentList } from '../services/contentService';

const Home = () => {
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

  return (
    <div>
      <h1>Content Library</h1>
      <Link to="/add-content">Add Content</Link>
      <ul>
        {contentList.map((content) => (
          <li key={content.id}>
            <Link to={`/edit-content/${content.id}`}>{content.title}</Link>
          </li>
        ))}
      </ul>
    </div>
  );
};

export default Home;