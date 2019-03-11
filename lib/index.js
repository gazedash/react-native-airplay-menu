import React, { Component } from "react";
import {
  Platform,
  requireNativeComponent,
  UIManager,
  findNodeHandle
} from "react-native";

const COMPONENT_NAME = "RNAirView";
const RNAirView =
  Platform.OS === "android"
    ? () => null
    : requireNativeComponent(COMPONENT_NAME);

export default class AirPlay extends Component {
  // Called via ref
  showMenu = () => {
    if (Platform.OS === "ios") {
      UIManager.dispatchViewManagerCommand(
      findNodeHandle(this.ref),
      UIManager[COMPONENT_NAME].Commands.updateFromManager,
      [0]
    );
    }
  };

  render() {
    return <RNAirView ref={(ref) => (this.ref = ref)} />;
  }
}
