import ReactDOM from 'react-dom';
import { useEffect } from 'react';

const Modal = ({children, actionBar, onClose}) => {
  useEffect(() => {
    document.body.classList.add('overflow-hidden');
    // disable scrolling if modal is open
    return () => {
      // enable scrolling as the modal is closed
      document.body.classList.remove('overflow-hidden');
    }
  }, [])

  return ReactDOM.createPortal(
    <div>
      <div onClick={onClose} 
           style={{
            position: 'fixed',
            top: 0,
            right: 0,
            bottom: 0,
            left: 0,
            backgroundColor: '#495e57',
            opacity: 0.8,
            zIndex: 100
          }}
      >
      </div>
      <div style={{
            position: 'fixed',
            top: '3rem',
            right: '3rem',
            bottom: '3rem',
            left: '3rem',
            padding: '2rem',
            backgroundColor: '#edefee',
            borderRadius: '1rem',
            zIndex: 200
           }}
      >
        <div style={{
              display: 'flex',
              flexDirection: 'column',
              justifyContent: 'space-between',
              height: '100%'
             }}>
          {children}
          <div style={{
            display: 'flex',
            justifyContent: 'end',
          }}
               
          >{actionBar}</div>
        </div>
      </div>
    </div>,
    document.getElementById('backdrop-root')
  );
}

export default Modal;