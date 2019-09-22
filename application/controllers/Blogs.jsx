npm install axios --save 

import React, { Component, Fragment } from 'react'; 
import './Blogs.css'; 
import BlogsComponent from '../../component/BlogsComponent/BlogsComponent'; 
import axios from 'axios'; 


class Blogs extends Component { 
    state = { 
        post: [] 
    } 

    componentDidMount(){ 
        // fetch('http://jsonplaceholder.typicode.com/posts') 
        // .then(response => response.json()) 
        // .then(json => console.log(json)) 
        axios.get('http://localhost:3004/posts') 
        .then((result)=>{ 
            this.setState({ 
                post: result.data 
            }) 
        }) 
    } 
    render() { 
        return( 
            <Fragment> 
                 <h2 className="title">Selamat datang di Blogs Babastudio.com</h2> 
                 <div className="content"> 
                     {/* <BlogsComponent title="title" desc="desc"/> */} 
                  { 
                      this.state.post.map(post =>{ 
                          return <BlogsComponent key={post.id} title={post.title} desc={post.body}/> 
                      }) 
                  } 
                 </div> 
                  
                  
            </Fragment> 
            
        ) 

    } 

} 

export default Blogs;


