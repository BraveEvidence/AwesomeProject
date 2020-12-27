import React, {useState, useRef, useContext, useEffect} from 'react';
import {
  ImageBackground,
  StyleSheet,
  Dimensions,
  requireNativeComponent,
} from 'react-native';
const Canvas = requireNativeComponent('Canvas');
const {width, height} = Dimensions.get('window');

const App = () => {
  return (
    <ImageBackground
      source={{
        uri:
          'https://images.unsplash.com/photo-1608749333098-a72487cff005?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=674&q=80',
      }}
      style={styles.imageBackgroundStyle}>
      <Canvas style={styles.canvasStyle} />
    </ImageBackground>
  );
};

const styles = StyleSheet.create({
  canvasStyle: {
    flex: 1,
    alignItems: 'center',
    justifyContent: 'center',
    position: 'absolute',
    top: 100,
    bottom: 100,
    left: 0,
    right: 0,
    backgroundColor: 'transparent',
    height: null,
  },
  imageBackgroundStyle: {
    width: width,
    height: height,
    // flex: 1,
    alignItems: 'center',
    justifyContent: 'center',
  },
});

export default App;
