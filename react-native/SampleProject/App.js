import { StatusBar } from 'expo-status-bar';
import { StyleSheet, Text, View } from 'react-native';

import LittleLemonHeader from './components/LittleLemonHeader';

export default function App() {
  return (
    <View style={styles.container}>
      <LittleLemonHeader />
    </View>
  );
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    justifyContent: 'flex-start',
    padding: 45,
    backgroundColor: '#ffe',
    alignItems: 'center',
    backgroundColor: '#495E57',
    
  },
});
