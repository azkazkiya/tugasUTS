import React, {useState, useEffect} from 'react';
import {Text, View, StyleSheet, Image, FlatList} from 'react-native';
import { Card } from 'react-native-paper';

const Home = ({navigation}) => {
  
  const [data, setData] = useState([]);

  useEffect(()=>{
    fetch('https://latihanapi.erlanggastudio.id/datakaryawan.php')
    .then((response) => response.json())
    .then((hasil) => setData(hasil))
    .catch(error => {console.log; })
  }, []);
  
  const listKaryawan = ({item}) => {
    return (
    <Card style={styles.cardUtama} onPress={()=>navigation.navigate('Detail', { karyawan : item })} >
      <View style={styles.cardView}>
          <Image style={{width: 50, height: 50, borderRadius:50/2}} source={{uri: item.foto}}/>
          <View style={{marginLeft: 12}}>
              <Text style={styles.titleText}>{item.nama}</Text>
              <Text style={styles.jobTeks}>{item.jabatan}</Text>
          </View>
      </View>
      
    </Card>
    )
  }

  return (
    <View style={{flex:1}}>
      <FlatList 
        data={data}
        renderItem={listKaryawan}
        keyExtractor={item=>item.id} />
    </View>
  );
};

const styles = StyleSheet.create({
    cardUtama: {
      margin:5,
      shadowColor: '#470000',
      shadowOffset: {widt: 0, height: 2},
      shadowOpacity: 0.2
    },
    cardView: {
      flexDirection: 'row',
      padding: 6
    },
    titleText: { 
      fontWeight: 'bold',
      fontSize: 16 
    },
    jobText: { 
      fontSize: 16 
    },
});

export default Home;