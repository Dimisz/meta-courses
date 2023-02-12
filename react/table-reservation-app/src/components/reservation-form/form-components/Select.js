import { useState } from 'react';

const Select = ({ id, label, options, value, handleSelection, required }) => {
  const [borderStyle, setBorderStyle] = useState({});
  
  const setAlert = () => {
    if(required){
      if(value == 0){
        setBorderStyle({border: 'solid red 2px', backgroundColor: '#ffcbd1'});
      }
    }
  };

  const clearAlert = () => {
    setBorderStyle({});
  };

  return(
    <div>
        <label htmlFor={id}>{label}</label> <br></br>
        <select id="time"  
                value={value}
                onChange={handleSelection}
                onFocus={clearAlert}
                onBlur={setAlert}
                style={borderStyle}
                required={required}
        >
          {options.map((option) => {
            return(
              <option value={option} key={option}>{option}</option>
            )
          })}
        </select>
      </div>
  );
}
export default Select;