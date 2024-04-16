import * as React from 'react';
import { View, Text, StyleSheet } from 'react-native';

export default function LittleLemonHeader(){
  return(
    <View style={styles.container}>
      <Text style={styles.text}>Little Lemon Restaurant</Text>
    </View>
  );
}

const styles = StyleSheet.create({
  container: {
    backgroundColor: '#f4ce14',
  },
  text: {
    fontSize: 25,
    padding: 10,
    paddingTop: 50,
    color: 'black', 
    textAlign: 'center'
  }
});