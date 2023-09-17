
import api from '../utils/api';

export const getContent = async () => {
  try {
    const response = await api.get('/content');
    return response.data;
  } catch (error) {
    console.error('Error getting content:', error);
    throw error;
  }
};

export const createContent = async (content) => {
  try {
    const response = await api.post('/content', content);
    return response.data;
  } catch (error) {
    console.error('Error creating content:', error);
    throw error;
  }
};

export const updateContent = async (id, content) => {
  try {
    const response = await api.put(`/content/${id}`, content);
    return response.data;
  } catch (error) {
    console.error('Error updating content:', error);
    throw error;
  }
};

export const deleteContent = async (id) => {
  try {
    const response = await api.delete(`/content/${id}`);
    return response.data;
  } catch (error) {
    console.error('Error deleting content:', error);
    throw error;
  }
};

