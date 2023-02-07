import * as React from 'react';
import { View, Text} from 'react-native';

const LittleLemonHeader = () => {
  return(
    <View style={{ flex: .1, backgroundColor: '#F4CE14' }}>
      <Text style={{ padding: 20, fontSize: 20, color: 'black' }}>Little Lemon Restaurant</Text>
    </View>
  );
}

export default LittleLemonHeader;