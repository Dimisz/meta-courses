import { StyleSheet, Text, View } from 'react-native';

import LittleLemonHeader from './components/LittleLemonHeader';
import LittleLemonFooter from './components/LittleLemonFooter';
import WelcomeScreen from './components/WelcomeScreen';
import FeedbackForm from './components/FeedbackForm';

export default function App() {
  return (
    <>
      <View style={styles.header}>
        <LittleLemonHeader />
        {/* <WelcomeScreen /> */}
        <FeedbackForm />
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
    backgroundColor: '#495E57',
  },
  footer: {
    backgroundColor: '#495E57'
  }
});
