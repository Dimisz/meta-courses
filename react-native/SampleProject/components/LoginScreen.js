import React, { useState } from 'react';
import { 
  ScrollView, 
  Text, 
  StyleSheet, 
  KeyboardAvoidingView, 
  TextInput, 
  Alert,
  Pressable
} from 'react-native';

const LoginScreen = () => {
  const [username, onChangeUsername] = useState('');
  const [password, onChangePassword] = useState('');
  const [email, onChangeEmail] = useState('');
  const [loggedIn, setLoggedIn] = useState(false);

  return(
    <KeyboardAvoidingView 
    style={styles.container}
    behavior={Platform.OS === 'ios' ? 'padding' : 'height'}
    >
      <Text style={styles.headerText}>Welcome to Little Lemon</Text>
      {!loggedIn && (
          <ScrollView keyboardDismissMode='on-drag'>
            <Text style={styles.regularText}>Login to continue</Text>
            <TextInput 
                  style={styles.input}
                  placeholder='Username'
                  value={username}
                  onChangeText={onChangeUsername}
                  onFocus={() => {Alert.alert('Username is focused')}}
                  onBlur={() => {Alert.alert('Username is now blurred')}}
                  clearButtonMode={'always'}
            />
            <TextInput 
                  style={styles.input}
                  placeholder='email'
                  value={email}
                  onChangeText={onChangeEmail}
                  keyboardType='email-address'
            />
            <TextInput
                  style={styles.input}
                  placeholder='password'
                  value={password}
                  onChangeText={onChangePassword}
                  secureTextEntry={true}
            />
            <Pressable
                style={styles.button}
                onPress={() => {setLoggedIn(!loggedIn)}}
            >
              <Text style={styles.buttonText}>Log In</Text>
            </Pressable>
          </ScrollView>
        )
      }
      {loggedIn && (
        <>
          <Text style={styles.regularText}>You are logged in!</Text>
          <Pressable
                style={styles.button}
                onPress={() => {setLoggedIn(!loggedIn)}}
            >
              <Text style={styles.buttonText}>Log Out</Text>
            </Pressable>
        </>
      )
      }
      
    </KeyboardAvoidingView>
  )
}

const styles = StyleSheet.create({
  container: {
    flex: 1
  },
  headerText: {
    padding: 40,
    fontSize: 30,
    color: '#edefee',
    textAlign: 'center'
  },
  regularText: {
    fontSize: 24,
    padding: 20,
    marginVertical: 8,
    color: '#edefee',
    textAlign: 'center'
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
  button: {
    fontSize: 22,
    padding: 10,
    marginVertical: 8,
    margin: 40,
    backgroundColor: '#edefee',
    borderColor: '#edefee',
    borderWidth: 2,
    borderRadius: 12
  },
  buttonText: {
    color: '#333333',
    textAlign: 'center',
    fontSize: 32
  },
  infoSection: {
    fontSize: 24,
    padding: 20,
    marginVertical: 8,
    color: '#edefee',
    textAlign: 'center',
    backgroundColor: '#495e57'
  }
});

export default LoginScreen;