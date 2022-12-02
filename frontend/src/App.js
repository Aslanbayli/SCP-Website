import React from 'react';
import Signin from './signin';
import Landing from './landing';
import './index.css';
import Signup from './signup';

import {BrowserRouter as Router, Route, Routes} from "react-router-dom";

// function App() {
//   return (
//     <Landing/>
//   );
// }

function App() {
  return (
    <Router>
      <Routes>
        <Route exact path="/sign-in" element={<Signin/>} />
        <Route exact path="/" element={<Landing/>} />
        <Route exact path="/sign-up" element={<Signup/>} />
      </Routes>
    </Router>
  );
}


export default App;