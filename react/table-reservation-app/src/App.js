import './App.css';
import { BrowserRouter } from 'react-router-dom';

import Navbar from './components/navigation/Navbar';
import Content from './components/navigation/Content';
function App() {
  return (
    <BrowserRouter>
      <Navbar />
      <Content/>
    </BrowserRouter>
  );
}

export default App;
