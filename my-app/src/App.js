import React from 'react';
import logo from './logo.svg';
import './App.css';

function App() {
  return (
    <div className="App">
      <header className="App-header">
        <img src={logo} className="App-logo" alt="logo" />
        <button onClick="activateLasers">
          This is a test to subtract a value
        </button>
        <button onClick="activateLasers">
          This is a test to add a value
        </button>
        
        <p>
          This is just a test to see if this in fact does work.
        </p>
        
      </header>
    </div>
  );
}

export default App;
