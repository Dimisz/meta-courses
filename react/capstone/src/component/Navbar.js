import React from 'react';

const Navbar = () => {
  return(
    <nav>
      <div>
        <Logo />
      </div>
      <div>
        <ul>
          <li>
            <a href='/'>Home</a>
          </li>
          <li>
            <a href='/menu'>Menu</a>
          </li>
          <li>
            <a href='/order'>Order</a>
          </li>
          <li>
            <a href='/reserve'>Reservation</a>
          </li>
          <li>
            <a href='/contact'>Contact</a>
          </li>
        </ul>
      </div>
    </nav>
  );
}

export default Navbar;