var playbutton = document.getElementById("playButton")
// var workout = document.getElementById("workout")
playbutton.addEventListener("click",changeCount)
workout.addEventListener("click",changeCount)

function changeCount(){
    var stopwatchCount = document.getElementById("stopwatchCount")
    let temp = 5
    stopwatchCount.innerHTML = ""
    stopwatchCount.innerHTML = temp
    setInterval(function(){
        if(temp > 0){
            temp--;
            console.log(temp);
            stopwatchCount.innerHTML = temp;
        }
        if(stopwatchCount.innerHTML == "0"){
            if(countPerOnce == 500){
                stopwatchCount.innerHTML = "무한반복!"
            } else {
                stopwatchCount.innerHTML = "한 세트 당 "+ countPerOnce +" 개 !"
            }
        }
    },1000)
}
