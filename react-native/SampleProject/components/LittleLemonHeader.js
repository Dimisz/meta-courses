import * as React from 'react';
import { StyleSheet, View, Text} from 'react-native';

const LittleLemonHeader = () => {
  return(
    <View style={styles.container}>
      <Text style={styles.text}>Little Lemon</Text>
    </View>
  );
}

const styles = StyleSheet.create({
  container: {
    flex: 0.1,
    backgroundColor: '#ee9972',
    //justifyContent: 'flex-start',
    paddingTop: 30,
    alignItems: 'center',
  },
  text: {
    padding: 20,
    fontSize: 30,
    fontWeight: 'bold',
    color: '#333333'
  }
});

export default LittleLemonHeader;