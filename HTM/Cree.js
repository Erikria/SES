function swap(){
	img=document.getElementById("Erikria");
	if (img.src.match("./SVG/Erikria.svg")){
		img.src="./SVG/E-Plus.svg";
	}
	else{
		img.src="./SVG/Erikria.svg";
	}
}

function show(){
	div=document.getElementById("sites");
	if (div.style.display.match("none")){
		document.getElementById("sites").style.display="inline";
		document.getElementById("expand").innerHTML="Click to Hide!";
	}
	else{
		document.getElementById("sites").style.display="none";
		document.getElementById("expand").innerHTML="More Websites";
	}
}
