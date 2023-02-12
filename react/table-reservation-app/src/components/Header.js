import HeroImage from '../assets/food/food4.webp';

const Header = ({title}) => {
  return(
    <header className="reserve-table">
      <img
        className="header-reserve"
        src={HeroImage}
        alt="Little Lemon Ingredients"
      ></img>
      <div className="reserve-header-text">
        <h1>{title}</h1>
      </div>
    </header>
  );
}

export default Header;