import './App.css';
import { BrowserRouter } from 'react-router-dom';


import Navbar from './components/navigation/Navbar';
import Content from './components/navigation/Content';
import Footer from './components/Footer';

const App = () => {
  return (
      // <AlertProvider>
        <BrowserRouter>
          <Navbar />
          <Content />
          <Footer />
        </BrowserRouter>
      // </AlertProvider>
  );
}

export default App;
