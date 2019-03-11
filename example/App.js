import React, { Component } from "react";
import {
  StyleSheet,
  Text,
  View,
  TouchableOpacity
} from "react-native";

import AirPlay from 'react-native-airplay-menu'

export default class App extends Component {
  render() {
    return (
      <View style={styles.container}>
        <TouchableOpacity
          style={[styles.wrapper, styles.border]}
          onPress={() => this.menuRef && this.menuRef.showMenu()}
        >
          <Text style={styles.button}>Listen in AirPods</Text>
        </TouchableOpacity>

        <AirPlay
          ref={e => (this.menuRef = e)}
        />
      </View>
    );
  }
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    alignItems: "stretch"
  },
  wrapper: {
    flex: 1,
    alignItems: "center",
    justifyContent: "center"
  },
  border: {
    borderColor: "#eee",
    borderBottomWidth: 1
  },
  button: {
    fontSize: 50,
    color: "orange"
  }
});
