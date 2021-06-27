// const URL = "./my_model/";
const URL = "/resources/my_model/pushup/";
let model, webcam, ctx, labelContainer, maxPredictions, loopSelected;
var countPerOnce = 10;
async function init() {
    var workout = document.getElementById("workout");
    eraseTitle()
    workout.innerHTML = "";
    workout.style.marginTop = "0px";
    const modelURL = URL + "model.json";
    const metadataURL = URL + "metadata.json";
    model = await tmPose.load(modelURL, metadataURL);
    maxPredictions = model.getTotalClasses();
    const size = 450;
    const flip = true; // whether to flip the webcam
    webcam = new tmPose.Webcam(size, size, flip); // width, height, flip
    await webcam.setup(); // request access to the webcam
    await webcam.play();
    window.requestAnimationFrame(loop);
    // append/get elements to the DOM
    const canvas = document.getElementById("canvas");
    canvas.width = size; canvas.height = size;
    ctx = canvas.getContext("2d");
    labelContainer = document.getElementById("label-container");
    for (let i = 0; i < maxPredictions; i++) { // and class labels
        labelContainer.appendChild(document.createElement("div"));
    }
}

async function loop(timestamp) {
    webcam.update(); // update the webcam frame
    await predict();
    window.requestAnimationFrame(loop);
}

async function predict() {
    // Prediction #1: run input through posenet
    // estimatePose can take in an image, video or canvas html element
    const { pose, posenetOutput } = await model.estimatePose(webcam.canvas);
    // Prediction 2: run input through teachable machine classification model
    const prediction = await model.predict(posenetOutput);
    const vlabelCount = document.getElementById("vlabel-count");
    const galabelCount = document.getElementById("galabel-count");
    const lastCount = document.getElementById("last-count");
    const workoutCount = document.getElementById("workout-count");
    if (prediction[1].probability.toFixed(2) == "1.00") {
        vlabelCount.innerHTML = 1;
    }
    if (prediction[0].probability.toFixed(2) == "1.00") {
        galabelCount.innerHTML = 1;
    }
    if (vlabelCount.innerHTML == 1 && prediction[0].probability.toFixed(2) == "1.00"){
        lastCount.innerHTML = 1;
    }
    if (vlabelCount.innerHTML == 1 && galabelCount.innerHTML == 1 && lastCount.innerHTML == 1){
        galabelCount.innerHTML = 0
        vlabelCount.innerHTML = 0
        lastCount.innerHTML = 0
        count(workoutCount)
    }
    // else {
    //     vlabelCount.innerHTML = 0;
    // }
    for (let i = 0; i < maxPredictions; i++) {
        const classPrediction =
            prediction[i].className + ": " + prediction[i].probability.toFixed(2);
        labelContainer.childNodes[i].innerHTML = classPrediction;
    }
    // finally draw the poses
    drawPose(pose);
}
function drawPose(pose) {
    if (webcam.canvas) {
        ctx.drawImage(webcam.canvas, 0, 0);
        // draw the keypoints and skeleton
        if (pose) {
            const minPartConfidence = 0.5;
            tmPose.drawKeypoints(pose.keypoints, minPartConfidence, ctx);
            tmPose.drawSkeleton(pose.keypoints, minPartConfidence, ctx);
        }
    }
}

var progressCount = 0
function count(workoutCount){
    // 30개면 100/30 = 3.33 씩 올라가야함
    progressCount += (100/countPerOnce);
    workoutCount.innerHTML = parseInt(workoutCount.innerHTML) + 1;
    var progressbar = document.getElementById("progress-bar");
    const currentState = JSON.stringify(progressCount)+"%";
    progressbar.style.width = currentState;
    
    if(loopSelected != 1){
        if (progressbar.style.width == "100%") {
            const pauseButton = document.getElementById("pauseButton")
            pauseButton.click();
            var workout = document.getElementById("workout");
            workout.innerHTML = "잘 했어요!";
            workout.style.marginTop = "130px";
            var canvas = document.getElementById("canvas");
            canvas.height = "0";
            progressbar.style.width = "0%"
            progressCount = 0
            webcam = "";
        }
    } else if(loopSelected == 1) {
        if (progressbar.style.width == "100%") {
            progressbar.style.width = "0%"
            progressCount = 0
        }
    }
}
function countPerSet(){
    countPerOnce = prompt("목표 개수를 입력해주세요")
    var progressbar = document.getElementById("progress-bar");

    progressbar.style.width = "0%"
    progressCount = 0
    var workoutCount = document.getElementById("workout-count");
    var stopwatchCount = document.getElementById("stopwatchCount");
    stopwatchCount.innerHTML = "한 세트 당 "+ countPerOnce +" 개";
}
function countLoop(){
    countPerOnce = 500
    var stopwatchCount = document.getElementById("stopwatchCount");
    stopwatchCount.innerHTML = "반복!";

}

function loopSelect(){
    loopSelected = 1;
}

async function stopInit() {
    var workout = document.getElementById("workout");
    workout.innerHTML = "";
    workout.style.marginTop = "0px";
    const modelURL = URL + "model.json";
    const metadataURL = URL + "metadata.json";
    model = await tmPose.load(modelURL, metadataURL);
    maxPredictions = model.getTotalClasses();
    const size = 0;
    const flip = true; // whether to flip the webcam
    window.requestAnimationFrame(loop);
    const canvas = document.getElementById("canvas");
    canvas.width = size; canvas.height = size;
    ctx = canvas.getContext("2d");
    labelContainer = document.getElementById("label-container");
    for (let i = 0; i < maxPredictions; i++) { // and class labels
        labelContainer.appendChild(document.createElement("div"));
    }
}

function eraseTitle(){
    var titleWorkoutEnd = document.getElementById("titleWorkoutEnd");
    var idform = document.getElementById("idform");
    var idcontainer = document.getElementById("idcontainer");
    titleWorkoutEnd.style.height = "0px";
    titleWorkoutEnd.style.marginBottom = "0px";
    titleWorkoutEnd.style.marginTop = "0px";
    idform.style.height = "0px";
    idform.style.visibility = "hidden";
    idcontainer.style.visibility = "hidden";
    idcontainer.style.height = "0px";
}