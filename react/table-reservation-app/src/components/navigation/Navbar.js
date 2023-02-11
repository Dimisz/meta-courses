import React, { useState } from 'react';
import Navigation from './Navigation';

import hamburgerIcon from '../../assets/hamburger.png';
import closeIcon from '../../assets/close.png';
import logoImage from '../../assets/nav-logo.png';

const Navbar = () => {
  const [hamburgerOpen, setHamburgerOpen] = useState(false);
  const toggle = () => {
    setHamburgerOpen(!hamburgerOpen);
  }
  return(
    <nav>
      <nav className="burger">
        <img
          src={logoImage}
          alt="Little Lemon logo"
          className="nav-image"
        ></img>

        <button className="burger-icon" onClick={toggle}>
          <img src={hamburgerOpen ? closeIcon : hamburgerIcon} alt="Navigation Bar" />
        </button>
      </nav>
      <Navigation device="desktop" />
      {hamburgerOpen ? <Navigation device="mobile" /> : ""}
    </nav>
  );
}

export default Navbar;