import { NavLink } from "react-router-dom";
const Footer = () => {
  return (
    <footer>
      <menu>
        <li className="img-footer">
          <img
            src={require("../assets/footer-logo.png")}
            alt="Little Lemon logo"
          ></img>
        </li>
        <li className="contact">
          <h1 className="footer-header">Navigation</h1>
          <ul className="footer-links">
            <NavLink to="/">Home</NavLink>
            <NavLink to="/about">About</NavLink>
            <NavLink to="/menu">Menu</NavLink>
            <NavLink to="/reservations">Reservations</NavLink>
            <NavLink to="/order">Order</NavLink>
            <NavLink to="/login">Login</NavLink>
          </ul>
        </li>

        <li>
          <h1 className="footer-header">Contact</h1>
          <ul className="footer-links">
            <li>2395 Maldove Way,</li>
            <li>Chicago Illinois</li>
            <br></br>
            <li>(629)-243-6827</li>
            <br></br>
            <a
              href="mailto: info@littlelemon.com"
              target="_blank"
              rel="noreferrer"
            >
              info@littlelemon.com
            </a>
          </ul>
        </li>
        <li>
          <h1 className="footer-header">Connect</h1>
          <ul className="footer-links">
            <a
              href="https://www.facebook.com/thelittlelemonshop/"
              target="_blank"
              rel="noreferrer"
            >
              Facebook
            </a>
            <a
              href="https://www.instagram.com/littlelemonmoon/"
              target="_blank"
              rel="noreferrer"
            >
              Instagram
            </a>
            <a
              href="https://www.youtube.com/watch?v=3Li-FfypZYE"
              target="_blank"
              rel="noreferrer"
            >
              Join us!
            </a>
          </ul>
        </li>
      </menu>
    </footer>
  );
}

export default Footer;