import * as React from 'react';
import { Text, View, StyleSheet } from 'react-native';

const WelcomeScreen = () => {
  return(
    <View style={styles.container}>
      <Text style={styles.head}>
      Welcome to Little Lemon
      </Text>
      <Text style={styles.body}>
      Little Lemon is a charming neighborhood bistro that serves simple food and classic cocktails in a lively but casual environment. We would love to hear more about your experience with us!
      </Text>
    </View>
  );
}

const styles = StyleSheet.create({
  container: {
    flex: 1
  },
  head: {
    padding: 40,
    fontSize: 30,
    color: '#EDEFEE',
    textAlign: 'center',
  },
  body: {
    fontSize: 24,
    padding: 20,
    marginVertical: 8,
    color: '#EDEFEE',
    textAlign: 'center',
  }
});

export default WelcomeScreen;