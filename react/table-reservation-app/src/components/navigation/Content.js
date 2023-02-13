import { Routes, Route } from 'react-router-dom';

import HomePage from "../pages/HomePage";
import AboutPage from "../pages/AboutPage";
import LoginPage from "../pages/LoginPage";
import MenuPage from "../pages/MenuPage";
import OrderPage from "../pages/OrderPage";
import ReservationsPage from "../pages/ReservationsPage";
import ConfirmationPage from '../pages/ConfirmationPage';
const Content = () => {
  return(
    <Routes>
        <Route exact path="/" element={<HomePage />} />
        <Route exact path="about" element={<AboutPage />} />
        <Route exact path="reservations" element={<ReservationsPage />} />
        <Route exact path="order" element={<OrderPage />} />
        <Route exact path="login" element={<LoginPage />} />
        <Route exact path="menu" element={<MenuPage />} />
        <Route exact path="menu" element={<MenuPage />} />
        <Route exact path="confirmation" element={<ConfirmationPage />} />
    </Routes>
  );
}

export default Content;