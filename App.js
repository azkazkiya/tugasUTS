import * as React from 'react';
import { View, Text } from 'react-native';

import { NavigationContainer } from '@react-navigation/native';
import { createNativeStackNavigator } from '@react-navigation/native-stack';


import Home from './Components/Home';
import Detail from './Components/Detail';

const Stack = createNativeStackNavigator();

function App() {
  return (
    <NavigationContainer>
      <Stack.Navigator>
        <Stack.Screen name="Home" component={Home} 
          options={{
            title: 'Data Karyawan',
            headerStyle: {backgroundColor: '#006aff'},
            headerTintColor: '#ffffff'
          }} />
          <Stack.Screen name="Detail" component={Detail} 
          options={{
            title: 'Detail Karyawan',
            headerStyle: {backgroundColor: '#006aff'},
            headerTintColor: '#ffffff'
          }} />
      </Stack.Navigator>
    </NavigationContainer>
  );
}

export default App;
