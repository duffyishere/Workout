  function timeToString(time) {
      let diffInHrs = time / 3600000;
      let hh = Math.floor(diffInHrs);
      
      let diffInMin = (diffInHrs - hh) * 60;
      let mm = Math.floor(diffInMin);
      
      let diffInSec = (diffInMin - mm) * 60;
      let ss = Math.floor(diffInSec);
      
      let diffInMs = (diffInSec - ss) * 100;
      let ms = Math.floor(diffInMs);
      
      let formattedMM = mm.toString().padStart(2, "0");
      let formattedSS = ss.toString().padStart(2, "0");
      let formattedMS = ms.toString().padStart(2, "0");
      
      return `${formattedMM}:${formattedSS}:${formattedMS}`;
    }
    
    // Declare variables to use in our functions below
    
    let startTime;
    let elapsedTime = 0;
    let timerInterval;
    
    // Create function to modify innerHTML
    
    function print(txt) {
      document.getElementById("display").innerHTML = txt;
    }
    
    // Create "start", "pause" and "reset" functions
    
    function start() {
      startTime = Date.now() - elapsedTime;
      timerInterval = setInterval(function printTime() {
        elapsedTime = Date.now() - startTime;
        print(timeToString(elapsedTime));
      }, 10);
      showButton("PAUSE");
    }
    
    function pause() {
      clearInterval(timerInterval);
      showButton("PLAY");
    }
    
    function reset() {
      clearInterval(timerInterval);
      print("00:00:00");
      elapsedTime = 0;
      showButton("PLAY");
    }
    
    // Create function to display buttons
    
    function waitStart(){
      setTimeout(start,5000)
    }
    
    function showButton(buttonKey) {
      const buttonToShow = buttonKey === "PLAY" ? playButton : pauseButton;
      const buttonToHide = buttonKey === "PLAY" ? pauseButton : playButton;
      buttonToShow.style.display = "block";
      buttonToHide.style.display = "none";
    }
    // Create event listeners
    
    let playButton = document.getElementById("playButton");
    let pauseButton = document.getElementById("pauseButton");
    let workout = document.getElementById("workout");
    // let resetButton = document.getElementById("resetButton");
    playButton.addEventListener("click", waitStart);
    playButton.addEventListener("click", init);
    workout.addEventListener("click", waitStart);
    workout.addEventListener("click", init);
    
    pauseButton.addEventListener("click", pause);

    // resetButton.addEventListener("click", reset);
    //# sourceURL=pen.js