import { StatusBar } from 'expo-status-bar';
import { StyleSheet, Text, View } from 'react-native';

import LittleLemonHeader from './components/LittleLemonHeader';
import LittleLemonFooter from './components/LittleLemonFooter';

export default function App() {
  return (
    <>
      <View style={styles.container}>
        <LittleLemonHeader />
      </View>
      <View>
        <LittleLemonFooter />
      </View>
    </>
  );
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    justifyContent: 'flex-start',
    // paddingTop: 45,
    // backgroundColor: '#ffe',
    // alignItems: 'center',
    backgroundColor: '#495E57',
    
  },
});
