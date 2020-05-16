import React, { Component } from 'react';
import { Switch, Route } from 'react-router-dom';
import Blog from "./components/blog/Blog";
import Home from "./components/home/Main";

const App = () => {
    return (
        <Switch> {/* The Switch decides which component to show based on the current URL.*/}
            <Route exact path='/blog' component={Blog}></Route>
            <Route exact path='/' component={Home}></Route>
        </Switch>
    );
}

export default App;