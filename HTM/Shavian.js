var car;
function conv(){
	car = document.transcription.text1.value;
	//Digraphs
	car = car.replace(/[Cc][Hh]/g, "𐑙");
	car = car.replace(/[Ss][Hh]/g, "𐑖");
	car = car.replace(/[Tt][Hh]/g, "𐑔");
	car = car.replace(/[Ww][Hh]/g, "𐑣𐑝");
	car = car.replace(/[Aa][Uu]/g, "𐑬");
	car = car.replace(/[Ee][Aa]/g, "𐑾");
	car = car.replace(/[Ee][Uu]/g, "𐑴");
	car = car.replace(/[Oo][Uu]/g, "𐑶");
	car = car.replace(/[Aa][Aa]/g, "𐑲");
	car = car.replace(/[Ee][Ee]/g, "𐑱");
	car = car.replace(/[Ii][Ii]/g, "𐑰");
	car = car.replace(/[Oo][Oo]/g, "𐑥");
	car = car.replace(/[Uu][Uu]/g, "𐑯");
	//Symbols
	car = car.replace(/</g, "«");
	car = car.replace(/>/g, "»");
	//Letters
	car = car.replace(/[Aa]/g, "𐑨");
	car = car.replace(/[Bb]/g, "𐑚");
	car = car.replace(/[Cc]/g, "𐑒");
	car = car.replace(/[Dd]/g, "𐑛");
	car = car.replace(/[Ee]/g, "𐑧");
	car = car.replace(/[Ff]/g, "𐑓");
	car = car.replace(/[Gg]/g, "𐑜");
	car = car.replace(/[Hh]/g, "𐑣");
	car = car.replace(/[Ii]/g, "𐑦");
	car = car.replace(/[Jj]/g, "𐑠");
	car = car.replace(/[Kk]/g, "𐑞");
	car = car.replace(/[Ll]/g, "𐑤");
	car = car.replace(/[Mm]/g, "𐑫");
	car = car.replace(/[Nn]/g, "𐑵");
	car = car.replace(/[Oo]/g, "𐑩");
	car = car.replace(/[Pp]/g, "𐑐");
	car = car.replace(/[Rr]/g, "𐑮");
	car = car.replace(/[Ss]/g, "𐑕");
	car = car.replace(/[Tt]/g, "𐑑");
	car = car.replace(/[Uu]/g, "𐑪");
	car = car.replace(/[Ww]/g, "𐑝");
	car = car.replace(/[Yy]/g, "𐑳");
	car = car.replace(/[Zz]/g, "𐑟");
	car = car.replace(/\|/g, "");
	document.transcription.text2.value = car;
}
