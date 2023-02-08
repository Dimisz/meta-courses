import React from 'react';

const UseRef = () => {
  const formInputRef = React.useRef(null);

  const focusInput = () => {
    formInputRef.current.focus();
  }

  return(
    <>
      <h1>Using useRef to access underlying DOM</h1>
      <input ref={formInputRef} type='text' />
      <button onClick={focusInput}>
        Focus Input
      </button>
    </>
  );
}

export default UseRef;