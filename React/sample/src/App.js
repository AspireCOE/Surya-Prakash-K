import React from 'react';
import './App.css';
import Hello from './Hello';

function App() {
  return (
    <div className="App">
      <header className="App-header">
        <h1>Welcome to My First React App</h1>
        <Hello greeting="Hello, React!" />
      </header>
    </div>
  );
}

export default App;
