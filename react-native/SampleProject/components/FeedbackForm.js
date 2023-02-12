import React, { useState } from 'react';
import { ScrollView, StyleSheet, Text, TextInput, KeyboardAvoidingView, Platform } from 'react-native';

const FeedbackForm = () => {
  const [firstName, setFirstName] = useState('');
  const [lastName, setLastName] = useState('');
  const [message, setMessage] = useState('');
  const [phoneNumber, setPhoneNumber] = useState('');
return(  
  <KeyboardAvoidingView 
    style={styles.container}
    behavior={Platform.OS === 'ios' ? 'padding' : 'height'}
  
  >
    <ScrollView keyboardDismissMode='on-drag'>
      <Text style={styles.headingSection}>How was your visit to Little Lemon?</Text> 
      <Text style={styles.infoSection}>Little Lemon is a charming neighborhood bistro that serves simple food and classic cocktails in a lively but casual environment. We would love to hear your experience with us!</Text> 
      <TextInput
        style={styles.input}
        value={firstName} 
        onChangeText={setFirstName}
        placeholder='First name'
      />
      <TextInput 
        style={styles.input}
        value={lastName}
        onChangeText={setLastName}
        placeholder='Last Name'
      />
      <TextInput 
        style={styles.messageInput}
        value={message}
        onChangeText={setMessage}
        placeholder='Leave your review here'
        multiline={true}
      />
      <TextInput 
        style={styles.input}
        value={phoneNumber}
        onChangeText={setPhoneNumber}
        placeholder='phonenumber'
        keyboardType='phone-pad'
      />
    </ScrollView>
  </KeyboardAvoidingView>
);
}
export default FeedbackForm;

const styles = StyleSheet.create({ 
  container: { 
    flex: 1, 
  }, 
  input: { 
    height: 40, 
    margin: 12, 
    borderWidth: 1, 
    padding: 10, 
    fontSize: 16, 
    borderColor: 'EDEFEE', 
    backgroundColor: '#F4CE14', 
  }, 
  messageInput: { 
    height: 100, 
    margin: 12, 
    borderWidth: 1, 
    padding: 10, 
    fontSize: 16, 
    backgroundColor: '#F4CE14', 
  }, 
  infoSection: { 
    fontSize: 24, 
    padding: 20, 
    marginVertical: 8, 
    color: '#EDEFEE', 
    textAlign: 'center', 
    backgroundColor: '#495E57', 
  }, 
  headingSection: { 
    fontSize: 28, 
    padding: 20, 
    marginVertical: 8, 
    color: '#EDEFEE', 
    textAlign: 'center', 
    backgroundColor: '#495E57', 
  }, 
}); 
