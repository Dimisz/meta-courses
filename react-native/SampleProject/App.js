import { StyleSheet, Text, View } from 'react-native';

import LittleLemonHeader from './components/LittleLemonHeader';
import LittleLemonFooter from './components/LittleLemonFooter';
import WelcomeScreen from './components/WelcomeScreen';

export default function App() {
  return (
    <>
      <View style={styles.header}>
        <LittleLemonHeader />
        <WelcomeScreen />
      </View>
      <View style={styles.footer}>
        <LittleLemonFooter />
      </View>
    </>
  );
}

const styles = StyleSheet.create({
  header: {
    flex: 1,
    backgroundColor: '#333333',
  },
  footer: {
    backgroundColor: '#333333'
  }
});
