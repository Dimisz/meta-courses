import React, { useState } from 'react';
import { ScrollView, Text, StyleSheet, KeyboardAvoidingView, TextInput} from 'react-native';

const LoginScreen = () => {
  const [username, onChangeUsername] = useState('');
  const [password, onChangePassword] = useState('');

  return(
    <KeyboardAvoidingView 
    style={styles.container}
    behavior={Platform.OS === 'ios' ? 'padding' : 'height'}
    >
      <ScrollView keyboardDismissMode='on-drag'>
        <Text style={styles.headerText}>Welcome to Little Lemon</Text>
        <Text style={styles.regularText}>Login to continue</Text>
        <TextInput 
              style={styles.input}
              placeholder='Username'
              value={username}
              onChangeText={onChangeUsername}
        />
        <TextInput
              style={styles.input}
              placeholder='password'
              value={password}
              onChangeText={onChangePassword}
              secureTextEntry={true}
        />

      </ScrollView>
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
    color: 'edefee',
    textAlign: 'center'
  },
  regularText: {
    fontSize: 24,
    padding: 20,
    marginVertical: 8,
    color: 'edefee',
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
});

export default LoginScreen;