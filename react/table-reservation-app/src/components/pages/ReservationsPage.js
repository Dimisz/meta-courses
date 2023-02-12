import Header from "../Header";
// import ReservationForm from "../reservation-form/ReservationForm";
import FormikReservationForm from "../formik-form/FormikReservationForm";
const ReservationsPage = () => {
  return(
    <main>
      <Header title='Reservations Page' />
      <FormikReservationForm availableTimes={[1, 2, 3, 4]}/>
    </main>
  );
}

export default ReservationsPage;