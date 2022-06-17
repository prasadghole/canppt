CAN.html: CAN.md
	pandoc --standalone -f markdown -t revealjs -V theme:solarized -V slideNumber:true CAN.md -o CAN.html
