import { NavLink } from 'react-router-dom';

const logoImage = require('../../assets/nav-logo.png');

const Navigation = ({device}) => {
  return(
    <menu className={`navbar-menu ${device}`}>
      {device === 'mobile' ? (
        ''
      ) : (
        <NavLink to='/'>
          <img
              src={logoImage}
              alt='Little Lemon Restaurant Logo'
              className='nav-image'
          ></img>
        </NavLink>
      )}
      <NavLink className='hover-effect' to='/'>
        <h1>Home</h1>
      </NavLink>
      <NavLink className='hover-effect' to='/about'>
        <h1>About</h1>
      </NavLink>
      <NavLink className='hover-effect' to='/menu'>
        <h1>Menu</h1>
      </NavLink>
      <NavLink className='hover-effect' to='/reservations'>
        <h1>Reservation</h1>
      </NavLink>
      <NavLink className='hover-effect' to='/order'>
        <h1>Order</h1>
      </NavLink>
      <NavLink className='hover-effect' to='/login'>
        <h1>Login</h1>
      </NavLink>
    </menu>
  );
}

export default Navigation;