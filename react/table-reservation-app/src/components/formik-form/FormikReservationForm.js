import { useState } from "react";
import { NavLink } from "react-router-dom";
import React, { useEffect } from 'react';



import { useFormik } from 'formik';
import * as Yup from 'yup';
import { 
  FormControl, 
  FormErrorMessage, 
  FormLabel,
  Select,
  Textarea,
  Input,
  Button,
  ChakraProvider
} from '@chakra-ui/react';

import useSubmit from '../../hooks/useSubmit';
import {useAlertContext} from '../../context/alertContext';
// import { AlertProvider } from "../../context/alertContext";
import Alert from "../reservation-form/Alert";

export default function FormikReservationForm(props) {
  const { isLoading, response, submit } = useSubmit();
  const onOpen = useAlertContext();

  // const [fName, setFName] = useState("");
  // const [lName, setLName] = useState("");
  // const [email, setEmail] = useState("");
  // const [tel, setTel] = useState("");
  // const [people, setPeople] = useState(1);
  // const [date, setDate] = useState("");
  // const [occasion, setOccasion] = useState("");
  // const [preferences, setPreferences] = useState("");
  // const [comments, setComments] = useState("");
  const formik = useFormik({
    initialValues: {
      firstName: '',
      lastName: '',
      email: '',
      phoneNumber: '',
      numDiners: 1,
      date: '',
      time: '',
      occassion: '',
      preferences: '',
      comment: ''
    },
    onSubmit: (values) => {
      submit('https://john.com/reservation', values);
    },
    validationSchema: Yup.object({
      firstName: Yup.string().required('Required'),
      lastName: Yup.string().required('Required'),
      email: Yup.string().email('Invalid email address'),
      phoneNumber: Yup.string().required('Required'),
      numDiners: Yup.string().required('Required'),
      date: Yup.string().required('Required'),
      time: Yup.string().required('Required'),
      occasion: Yup.string().optional(),
      preferences: Yup.string().optional(),
      comment: Yup.string().optional()
    })
  });

  useEffect(() => {
    if(response){
      onOpen(response.type, response.message);
      if(response.type === 'success'){
        formik.resetForm();
      }
    }
  }, [response]);

  const [finalTime, setFinalTime] = useState(
    props.availableTimes.map((times) => <option>{times}</option>)
  );


  return (
    <ChakraProvider>
      {/* <AlertProvider> */}
    <form className="reservation-form" onSubmit={formik.handleSubmit}>
      <FormControl isInvalid={!!formik.errors.firstName && formik.touched.firstName}>
        <FormLabel htmlFor="firstName">First Name</FormLabel> <br></br>
        <Input
          type="text"
          id="firstName"
          name='firstName'
          placeholder="First Name"
          // required
          {...formik.getFieldProps("firstName")}
          // minLength={2}
          // maxLength={50}
          // value={fName}
          // onChange={(e) => setFName(e.target.value)}
        ></Input>
        <FormErrorMessage>{formik.errors.firstName}</FormErrorMessage>
      </FormControl>

      <FormControl isInvalid={!!formik.errors.lastName && formik.touched.lastName}>
        <FormLabel htmlFor="lName">Last Name</FormLabel> <br></br>
        <Input
          type="text"
          id="lastName"
          name='lastName'
          placeholder="Last Name"
          {...formik.getFieldProps("lastName")}
          // minLength={2}
          // maxLength={50}
          // value={lName}
          // onChange={(e) => setLName(e.target.value)}
        ></Input>
        <FormErrorMessage>{formik.errors.lastName}</FormErrorMessage>
      </FormControl>

      <FormControl isInvalid={!!formik.errors.email && formik.touched.email}>
        <FormLabel htmlFor="email">Email</FormLabel> <br></br>
        <Input
          type="email"
          id="email"
          name='email'
          placeholder="Email"
          {...formik.getFieldProps("lastName")}
          // value={email}
          // required
          // minLength={4}
          // maxLength={200}
          // onChange={(e) => setEmail(e.target.value)}
        ></Input>
        <FormErrorMessage>{formik.errors.email}</FormErrorMessage>
      </FormControl>

      <FormControl isInvalid={!!formik.errors.phoneNumber && formik.touched.phoneNumber}>
        <FormLabel htmlFor='phoneNumber'>Phone Number</FormLabel> <br></br>
        <Input
          type="tel"
          id="phoneNumber"
          name="phoneNumber"
          placeholder="(xxx)-xxx-xxxx"
          {...formik.getFieldProps("phoneNumber")}
          // value={tel}
          // required
          // minLength={10}
          // maxLength={25}
          // onChange={(e) => setTel(e.target.value)}
        ></Input>
        <FormErrorMessage>{formik.errors.email}</FormErrorMessage>
      </FormControl>

      <FormControl>
        <FormLabel htmlFor="numDiners">Number of Diners</FormLabel> <br></br>
        <Input
          type="number"
          id="numDiners"
          name="numDiners"
          placeholder="Number of People"
          {...formik.getFieldProps("numDiners")}
          // value={people}
          // required
          min={1}
          max={100}
          // onChange={(e) => setPeople(e.target.value)}
        ></Input>
      </FormControl>

      <FormControl>
        <FormLabel htmlFor="date">Select Date</FormLabel> <br></br>
        <Input
          type="date"
          id="date"
          name="date"
          {...formik.getFieldProps("date")}
          // required
          // value={date}
          // onChange={handleDateChange}
        ></Input>
      </FormControl>

      <FormControl>
        <FormLabel htmlFor="time">Select Time</FormLabel> <br></br>
        <Select id="time" name="time" required {...formik.getFieldProps("time")}>
          {finalTime}
        </Select>
      </FormControl>

      <FormControl>
        <FormLabel htmlFor="occasion">Occasion</FormLabel> <br></br>
        <Select
          id="occasion"
          name="occasion"
          {...formik.getFieldProps("occasion")}
          // value={occasion}
          // onChange={(e) => setOccasion(e.target.value)}
        >
          <option value="None">None</option>
          <option value="Birthday">Birthday</option>
          <option value="Anniversary">Anniversary</option>
          <option value="Engagement">Engagement</option>
          <option value="Other">Other</option>
        </Select>
      </FormControl>

      <FormControl>
        <FormLabel htmlFor="preferences">Seating preferences</FormLabel> <br></br>
        <Select
          id="preferences"
          name="preferences"
          {...formik.getFieldProps("preferences")}
          // value={preferences}
          // onChange={(e) => setPreferences(e.target.value)}
        >
          <option value="None">None</option>
          <option value="Indoors">Indoors</option>
          <option value="Outdoor (Patio)">Outdoor (Patio)</option>
          <option value="Outdoor (Sidewalk)">Outdoor (Sidewalk)</option>
        </Select>
      </FormControl>

      <FormControl isInvalid={!!formik.errors.comment && formik.touched.comment}>
        <FormLabel htmlFor="comments">Additional Comments</FormLabel> <br></br>
        <Textarea
          id="comments"
          rows={8}
          cols={50}
          placeholder="Additional Comments"
          {...formik.getFieldProps("comment")}
          // value={comments}
          // onChange={(e) => setComments(e.target.value)}
        ></Textarea>
        <FormErrorMessage>{formik.errors.comment}</FormErrorMessage>
      </FormControl>

      <div class='last-para'>
        <br></br>
        <small>
          <p>
            Note: You cannot edit your reservation after submission. Please
            double-check your answer before submitting your reservation request.
          </p>
        </small>
        <Button type="submit" 
                colorScheme="purple" 
                width="full" isLoading={isLoading}
        > 
          Book Table 
        </Button> 
        {/* <button className="action-button" to="/confirmation">
          Book Table
        </button> */}
      </div>
    </form>
    {/* <Alert /> */}
    {/* </AlertProvider> */}
    </ChakraProvider>
  );
}