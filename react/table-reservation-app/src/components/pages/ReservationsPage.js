import Header from "../Header";
import ReservationForm from "../reservation-form/ReservationForm";
const ReservationsPage = () => {
  return(
    <main>
      <Header title='Reservations Page' />
      <ReservationForm availableTimes={[1, 2, 3, 4]}/>
    </main>
  );
}

export default ReservationsPage;