import React from 'react';
import { Route, Routes } from 'react-router-dom';
import Home from './pages/Home/Home.js';
import NewGreeting from './pages/NewGreeting/NewGreeting.js';
import Detail from './pages/Detail/Detail.js';
import 'tailwindcss/tailwind.css';
import './index.css';
import UpdateGreeting from './pages/NewGreeting/UpdateGreeting.js';
import RandomDetail from './pages/Detail/RandomDetail.js';
const App = () => {
    return (
        <div>
      <Routes>
                <Route path="/" element={<Home />}></Route>
                <Route path="/new-greeting" element={<NewGreeting />}></Route>
                <Route path="/random-detail" element={<RandomDetail />}></Route>
                <Route path="/detail/:id" element={<Detail />}></Route>
                <Route path="/update-greeting/:id" element={<UpdateGreeting />}></Route>
        </Routes>

        </div>
    );
}

export default App;
