var car;	
function conv(){
	car = document.transcription.text1.value;
	//Dual Letters
	car = car.replace(/CC/g, "Ц");
	car = car.replace(/JJ/g, "Ё");
	car = car.replace(/UU/g, "Ю");
	car = car.replace(/XX/g, "Щ");
	car = car.replace(/YY/g, "Э");
	car = car.replace(/cc/g, "ц");
	car = car.replace(/jj/g, "ё");
	car = car.replace(/uu/g, "ю");
	car = car.replace(/xx/g, "щ");
	car = car.replace(/yy/g, "э");
	//Symbols
	car = car.replace(/QQ/g, "Ъ");
	car = car.replace(/qq/g, "Ь");
	car = car.replace(/''/g, "ъ");
	car = car.replace(/</g, "«");
	car = car.replace(/>/g, "»");
	//Capital Letters
	car = car.replace(/A/g, "А");
	car = car.replace(/B/g, "Б");
	car = car.replace(/C/g, "Ч");
	car = car.replace(/D/g, "Д");
	car = car.replace(/E/g, "Е");
	car = car.replace(/F/g, "Ф");
	car = car.replace(/G/g, "Г");
	car = car.replace(/H/g, "Х");
	car = car.replace(/I/g, "И");
	car = car.replace(/J/g, "Й");
	car = car.replace(/K/g, "К");
	car = car.replace(/L/g, "Л");
	car = car.replace(/M/g, "М");
	car = car.replace(/N/g, "Н");
	car = car.replace(/O/g, "О");
	car = car.replace(/P/g, "Р");
	car = car.replace(/Q/g, "Я");
	car = car.replace(/R/g, "Р");
	car = car.replace(/S/g, "С");
	car = car.replace(/T/g, "Т");
	car = car.replace(/U/g, "У");
	car = car.replace(/V/g, "Ж");
	car = car.replace(/W/g, "В");
	car = car.replace(/X/g, "Ш");
	car = car.replace(/Y/g, "Ы");
	car = car.replace(/Z/g, "З");
	//Lowercase
	car = car.replace(/a/g, "а");
	car = car.replace(/b/g, "б");
	car = car.replace(/c/g, "ч");
	car = car.replace(/d/g, "д");
	car = car.replace(/e/g, "е");
	car = car.replace(/f/g, "ф");
	car = car.replace(/g/g, "г");
	car = car.replace(/h/g, "х");
	car = car.replace(/i/g, "и");
	car = car.replace(/j/g, "й");
	car = car.replace(/k/g, "к");
	car = car.replace(/l/g, "л");
	car = car.replace(/m/g, "м");
	car = car.replace(/n/g, "н");
	car = car.replace(/o/g, "о");
	car = car.replace(/p/g, "р");
	car = car.replace(/q/g, "я");
	car = car.replace(/r/g, "р");
	car = car.replace(/s/g, "с");
	car = car.replace(/t/g, "т");
	car = car.replace(/u/g, "у");
	car = car.replace(/v/g, "ж");
	car = car.replace(/w/g, "в");
	car = car.replace(/x/g, "ш");
	car = car.replace(/y/g, "ы");
	car = car.replace(/z/g, "з");
	car = car.replace(/'/g, "ь");
	car = car.replace(/\|/g, "");
	document.transcription.text2.value = car;
}
