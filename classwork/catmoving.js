
var img = document.getElementById('cat');
var position = 0;
var timer;

function catWalk() {
	var padding = parseInt(img.style.paddingLeft, 10);
	if(padding >= (document.width - img.width) + 'px') {
		return;
	}
	img.style.paddingLeft = function() {
		position += 5;
		return position + "px";
	}();
}
function catWalkBack() {
	var backPadding = parseInt(img.style.paddingLeft, 10);
	backPadding -= 5;
	return backPadding + "px";

}
function start() {
	clearInterval(timer);
	timer = setInterval(catWalk, 30);
}
function faster() {
	clearInterval(timer);
	timer = setInterval(catWalk, 10);
}
function slower() {
	clearInterval(timer);
	timer =setInterval(catWalk, 100);
}
function stopCat() {
	clearInterval(timer);
}

