import { useState, useEffect } from "react";
import { NavLink } from "react-router-dom";
// import { NavLink } from "react-router-dom";

import Input from "./form-components/Input";
import Select from "./form-components/Select";
import Modal from "./modal-component/Modal";
import ModalMessage from "./modal-component/ModalMessage";

const ReservationForm = ({availableTimes, updateTimes}) => {
  const [firstName, setFirstName] = useState("");
  const [lastName, setLastName] = useState("");
  const [email, setEmail] = useState("");
  const [phoneNumber, setPhoneNumber] = useState("");

  const [numPeople, setNumPeople] = useState(0);

  const [date, setDate] = useState("");
  const [timeSelected, setTimeSelected] = useState('17:00');

  const [occasion, setOccasion] = useState("None");
  const [preferences, setPreferences] = useState("None");
  const [comments, setComments] = useState("None");

  const [timeOptions, setTimeOptions] = useState(availableTimes);

  const [showModal, setShowModal] = useState(false);

  const handleCloseModal = () => {
    setShowModal(false);
  };

  const actionBar = <div>
                      <button
                        className="action-button" 
                        style={{backgroundColor: '#ee6b6e'}}
                        onClick={handleCloseModal}>
                          Change
                      </button>
                      <NavLink  to='/'
                        style={{marginLeft: '3rem'}}
                        className="action-button" 
                        onClick={handleCloseModal}>
                          Confirm
                      </NavLink>
                    </div>;

  const modal = <Modal onClose={handleCloseModal} actionBar={actionBar}>
    <ModalMessage firstName={firstName}
                  lastName={lastName}
                  date={date}
                  time={timeSelected}
                  occasion={occasion}
                  preferences={preferences}
                  comments={comments}
    />
  </Modal>

  useEffect(() => {
    updateTimes(date)
  }, [date]);

  const handleSubmit = (e) => {
    e.preventDefault();
    setShowModal(true);
    /*
    if(firstName.length === 0){
      alert('First name is required');
    }
    else if(lastName.length === 0){
      alert('Last name is required');
    }
    else if(email.length === 0){
      alert('Email address is required');
    }
    else if(phoneNumber.length === 0){
      alert('Phone Number is required');
    }
    else if(numPeople === 0){
      alert('Select number of people');
    }
    else if(date === 'dd.mm.yyyy'){
      alert('Select date');
    }
    else if(timeSelected === 0){
      alert('Select time');
    }
    else{
      alert(`${firstName} ${lastName}! You are booking a table for ${numPeople} on ${date} at ${timeSelected}. ${phoneNumber} ${email}`);
    }
    */
  }

  return (
    <>
    {/* <div className='relative'> */}
    <div>
      {showModal && modal}
    </div>
    <form className="reservation-form" onSubmit={handleSubmit}>
      <Input 
        id='firstName' 
        type='text'
        label='First Name' 
        value={firstName} 
        handleChange={(e) => setFirstName(e.target.value)}
      />
      <Input 
        id='lastName' 
        type='text'
        label='Last Name' 
        value={lastName} 
        handleChange={(e) => setLastName(e.target.value)}
      />
      <Input 
        id='email' 
        type='email'
        label='Email' 
        value={email} 
        handleChange={(e) => setEmail(e.target.value)}
      />
      <Input 
        id='phoneNumber' 
        type='phoneNumber'
        label='Phone Number' 
        value={phoneNumber} 
        handleChange={(e) => setPhoneNumber(e.target.value)}
      />

      <Input 
        id='numPeople' 
        type='number'
        label='Number of Diners' 
        value={numPeople} 
        handleChange={(e) => setNumPeople(e.target.value)}
        min={0}
        max={100}
      />

      <Input 
        id='date' 
        type='date'
        label='Select Date' 
        value={date} 
        handleChange={(e) => setDate(e.target.value)}
      />    

      <Select id='time' 
              label='Select Time' 
              options={timeOptions} 
              value={timeSelected}
              handleSelection={(e) => setTimeSelected(e.target.value)}
              required={true}
      />

      <Select id='occasion' 
              label="Select Occasion (Optional)"
              value={occasion}
              handleSelection={(e) => setOccasion(e.target.value)}
              options={['None', 'Birthday', 'Annivarsary', 'Engagement', 'Other']}
              required={false}
      />

      <Select id='preferences' 
              label="Seating Preferences (Optional)"
              value={preferences}
              handleSelection={(e) => setPreferences(e.target.value)}
              options={['None', 'Indoors', 'Outdoor (Patio)', 'Outdoor (Sidewalk)']}
              required={false}
      />

      <div>
        <label htmlFor="comments">Additional Comments (Optional)</label> <br></br>
        <textarea
          id="comments"
          rows={8}
          cols={50}
          placeholder="Additional Comments"
          value={comments}
          onChange={(e) => setComments(e.target.value)}
        ></textarea>
      </div>

      <div class='last-para'>
        <br></br>
        <small>
          <p>
            Note: You cannot edit your reservation after submission. Please
            double-check your answer before submitting your reservation request.
          </p>
        </small>
        <button type="submit" className="action-button" to="/confirmation">
          Book Table
        </button>
      </div>
    </form>
    </>
  );
}

export default ReservationForm;