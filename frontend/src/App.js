import React from 'react';
import Signin from './signin';
import Landing from './Navbar';
import Admin from './Admin';
import './index.css';
import Signup from './signup';
import Practice from './practice';
import { BrowserRouter as Router, Route, Routes } from "react-router-dom";

function App() {
  return (
    <Router>
      <Routes>
        <Route exact path="/sign-in" element={<Signin />} />
        <Route exact path="/practice" element={<Practice />} />
        <Route exact path="/" element={<Landing />} />
        <Route exact path="/sign-up" element={<Signup />} />
        <Route exact path="/admin" element={<Admin />} />
      </Routes>
    </Router>
  );
}


export default App;