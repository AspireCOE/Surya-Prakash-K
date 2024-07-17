import React from 'react'
import { useState } from 'react';

const Content = () => {

    

    const [name , setName] = useState("Angular");

    function onclicked(){
      const names = ["Angular", "React" , "Express", "Node.JS"];
        const int = Math.floor(Math.random()*4);
        setName(names[int]);

    }

    
  return (
    <main>
   <p>We are going to Learn {name}</p>
   <button onClick={onclicked}> Subscribe </button>
   </main>
  )
}

export default Content