import React from 'react';
import Tweet from './Tweet';


function App() {
  return(
    <div className="app">
      <Tweet name="Jack Macco" message="what in the fuck is going on right now?" likes="63" location="denver, co"/> 
      <Tweet name="Gustavo Pingwald" message="who the fuck do you think you actually are??" likes="53" location="boulder, co"/>
      <Tweet name="Jason Riggs" message="is this really your idea of an app?"likes="43" location="greely, co"/>
      <Tweet name="Sean Ortlieb" message="what are you trying to do right now?  Sell me something?" likes="33" location="highlands, co"/>
    </div>
  );
}
 





export default App;