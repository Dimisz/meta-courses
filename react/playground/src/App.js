import logo from './logo.svg';
import './App.css';
import { useState } from 'react';
// import Fetch from './lectures/Fetch';
// import UseRef from './lectures/UseRef';
// import UseReducer from './lectures/UseReducer';
// function App() {
//   return (
//     <UseReducer/>
//   );
// }


const Button = ({ children, ...rest }) => (
  <button onClick={() => console.log("ButtonClick")} {...rest}>
    {children}
  </button>
);

const withClick = (Component) => {
  const handleClick = () => {
    console.log("WithClick");
  };

  return(props) => {
    return<Component {...props} onClick={handleClick} />;
  };
};

const MyButton = withClick(Button);

export default function App() {
  return <MyButton onClick={() => console.log("AppClick")}>Submit</MyButton>;
}
// export default App;
