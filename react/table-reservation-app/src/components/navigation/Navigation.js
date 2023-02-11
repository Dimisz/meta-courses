import { NavLink } from 'react-router-dom';

import logoImage from '../../assets/nav-logo.png';

const links = [
  { to: '/', text: 'Home' },
  { to: 'about', text: 'About' },
  { to: 'menu', text: 'Menu' },
  { to: 'reservations', text: 'Reservations' },
  { to: 'order', text: 'Order' },
  { to: 'login', text: 'Login' }
];

const activeStyle = {
  textDecoration: "underline",
};

const renderedLinks = links.map((link) => {
  return(
    <NavLink key={link.text} 
             to={link.to}
             className='hover-effect'
             style={({ isActive }) =>
              isActive ? activeStyle : undefined
            }
    >
      <h1>{link.text}</h1>
    </NavLink>
  );
});

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
      {renderedLinks}
    </menu>
  );
}

export default Navigation;