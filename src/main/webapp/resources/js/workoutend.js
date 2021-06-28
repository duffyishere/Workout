var workoutEnd = document.getElementById("workoutEnd");
var newTitle = document.getElementById("titleWorkoutEnd");
var idcontainer = document.getElementById("idcontainer");

workoutEnd.addEventListener("click",end);
// newTitle.addEventListener("click",save);
function end() {
	eraseAll()
}
function eraseAll() {
    newTitle.style.height = "210px";
    // var title = document.getElementById("workout");
    workout.style.visibility ="hidden";
    // title.marginTop = "0px";
    workout.style.marginTop = "0px";
    workout.style.fontSize = "0px";
    newTitle.innerHTML = "End up Workout? <br /> Click!";
    newTitle.style.marginTop = "180px";
    newTitle.style.marginBottom = "140px";
    newTitle.style.visibility = "visible";
    newTitle.style.fontSize = "100px";
    var canvas = document.getElementById("canvas");
    canvas.height = "0";
    progressbar.style.width = "0%"
    progressCount = 0
    webcam = "";
    pause()
}

function save(){
    // alert(idcontainer);
    var idform = document.getElementById("idform");
    newTitle.innerHTML = "";
    newTitle.style.height="0px";
    idcontainer.style.visibility = "visible";
    idcontainer.style.height = "200px";
    idform.style.height = "0px";
    idform.style.visibility = "visible";

}