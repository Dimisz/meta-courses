import React, { useReducer } from 'react';

const reducer = (state, action) => {
  if(action.type === 'buy_ingredients'){
    return {money: state.money - 5};
  }
  if(action.type === 'sell_a_meal'){
    return {money: state.money + 15};
  }
  if(action.type === 'celebrity_visit'){
    return {money: state.money + 500};
  }
}

const UseReducer = () => {
  const initialState = {money: 100};
  const [state, dispatch] = useReducer(reducer, initialState);

  return(
    <>
      <h1>Wallet: {state.money}</h1>
      <div>
        <button onClick={() => dispatch({type: 'buy_ingredients'})}>Shopping for veggies</button>
        <button onClick={() => dispatch({type: 'sell_a_meal'})}>Serve a meal</button>
        <button onClick={() => dispatch({type: 'celebrity_visit'})}>Celebrity visit</button>
      </div>
    </>
  );
}

export default UseReducer;