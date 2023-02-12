import { useState } from 'react';

const Input = ({id, type, label, value, handleChange, ...rest}) => {
  const placeholder = label.toLowerCase();
  const [borderStyle, setBorderStyle] = useState({});
  const [placeholderText, setPlaceholderText] = useState(placeholder);

  const setAlert = () => {
    if(value.length === 0){
      setBorderStyle({border: 'solid red 2px', backgroundColor: '#ffcbd1'});
      setPlaceholderText(`${placeholder} is required...`)
    }
    if(value === 0){
      setBorderStyle({border: 'solid red 2px', backgroundColor: '#ffcbd1'});
    }

    if(value === 'dd.mm.yyyy'){
      setBorderStyle({border: 'solid red 2px', backgroundColor: '#ffcbd1'});
    }
  };

  const clearAlert = () => {
    setBorderStyle({});
    setPlaceholderText(placeholder);
  };

  return(
    <div>
        <label htmlFor={id}>{label}</label> <br></br>
        <input
          style={borderStyle}
          type={type}
          id={id}
          placeholder={placeholderText}
          required
          minLength={2}
          maxLength={50}
          value={value}
          onChange={handleChange}
          onFocus={clearAlert}
          onBlur={setAlert}
          {...rest}

        ></input>
      </div>
  )
}

export default Input;