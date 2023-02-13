const ModalMessage = ({firstName, lastName, date, time, occasion, preferences, comments }) => {
  return(
    <div style={{fontSize: '1.2rem'}}>
      <h1>Dear {firstName} {lastName}!</h1>
      <h2>Please confirm your reservation details:</h2>
      <p>Date: {date}</p>
      <p>Time: {time}</p>
      <p>Selected Occasion (Optional): {occasion}</p>
      <p>Seating Preferences (Optional): {preferences}</p>
      <p>Comment (Optional): {comments}</p>
    </div>
  )
}

export default ModalMessage;