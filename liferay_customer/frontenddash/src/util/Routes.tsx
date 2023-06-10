import React from "react";
import { BrowserRouter, Route, Routes } from 'react-router-dom';

export const AppDashRoutes = () => {
    return(
        <BrowserRouter>
            <Routes>
                <Route path='/' element={} />
                <Route path='/dashboard' element={} />
                <Route path='/manager' element={} />
                <Route path='/product' element={} />
            </Routes>
        </BrowserRouter>
    );
}

