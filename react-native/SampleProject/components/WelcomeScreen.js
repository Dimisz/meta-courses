import * as React from 'react';
import { Text, View, ScrollView, StyleSheet } from 'react-native';

const WelcomeScreen = () => {
  const menuItemsToDisplay = [
    'item 1 \n item2 \n item 3 \n item4 \nitem 5 \n item6 \nitem 7 \n item8 \n item 9 \n item10 \nitem 11 \n item12 \nitem 13 \n item14 \nitem 15 \n item16 \nitem 17 \n item19 \n'
  ];

  return(
    <View style={styles.container}>
      <Text style={styles.head}>
      Welcome to Little Lemon
      </Text>
      <Text style={styles.body}>
      Little Lemon is a charming neighborhood bistro that serves simple food and classic cocktails in a lively but casual environment. We would love to hear more about your experience with us!
      </Text>
      <ScrollView style={styles.scrollView}>
        <Text style={styles.menuHeaderText}>
          Little Lemon Menu
        </Text>
        <Text style={styles.menuItemsText}>
          {menuItemsToDisplay[0]}
        </Text>
      </ScrollView>
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
  },
  scrollView: {
    paddingHorizontal: 40,
    paddingVertical: 40,
    backgroundColor: '#495E57'
  },
  menuHeaderText: {
    color: '#F4CE14',
    fontSize: 42,
    flexWrap: 'wrap'
  },
  menuItemsText: {
    color: '#F4CE14',
    fontSize: 42
  }
});

export default WelcomeScreen;