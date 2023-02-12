import Header from "../Header";
import ReservationForm from "../reservation-form/ReservationForm";
import { useReducer } from "react";
import { fetchAPI } from "../../reservationsAPI";
const ReservationsPage = () => {
  const updateTimes = (date) => {
    return fetchAPI(date);
  }

  const output = fetchAPI(new Date());
  const [availableTimes, dispatch] = useReducer(updateTimes, output);

  return(
    <main>
      <Header title='Reservations Page' />
      <ReservationForm availableTimes={availableTimes} updateTimes={dispatch}/>
    </main>
  );
}

export default ReservationsPage;