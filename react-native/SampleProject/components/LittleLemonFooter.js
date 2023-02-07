import * as React from 'react';
import { StyleSheet, View, Text} from 'react-native';

const LittleLemonFooter = () => {
  return(
    <View style={styles.container}>
      <Text style={styles.text}>All rights reserved by Little Lemon, 2022</Text>
    </View>
  )
};

const styles = StyleSheet.create({
  container: {
    marginBottom: 10,
    backgroundColor: '#F4CE14',
  }, 
  text: {
    fontSize: 18,
    color: 'black',
    textAlign: 'center'
  }
});

export default LittleLemonFooter;