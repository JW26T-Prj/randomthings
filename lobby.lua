for _,f in next,{"AutoNewGame","AfkDeath","AutoShaman","DebugCommand","MinimalistMode","PhysicalConsumables","MortCommand"} do
	tfm.exec["disable"..f](true)
end
debug.disableEventLog(true)
lobby_map="@7964516"; lang={};
lang.br = {
	title = {"Praia da Reserva Verde<","Parque Aquático Natural das Cobras<","Casa Oceânica das Arraias Brancas<","Navio Viego Santiarul Molach Vol Kalah Heigaari<"},
	intro_text1 = "Nosso primeiro mapa-script oficial.\nCriado em Julho de 2022, o mapa se trata de uma praia completa com bar, piscina suspensa, pista de dança, tirolesa e duas ilhas no meio do mar.\nPossui diversos NPCs para interagir com os jogadores, e algumas belas surpresas dentro da água.\n\n<R>AVISO: Este mapa possui uma alta exigência de memória. Caso você saia da sala e volte e o mapa não carregue, será necessário sair do jogo e entrar novamente.\n\n<J><font size='17'><p align='center'>/sala #anvilwar00beach",
	intro_text2 = "Criado em meados de 2023, o mapa se trata de uma mistura de parque aquático com reserva de cobras, e assim como nosso primeiro mapa, esse aqui também possui diversos NPCs. Mas a grande diferença desse para o primeiro são os brinquedos gigantes como tirolesa, escorregador, toboágua e até uma cápsula de exploração submarina. A água desse mapa é muito mais gelada, portanto, ficar muito tempo nela não é uma boa ideia.\n\n<R>AVISO: Este mapa possui uma alta exigência de memória. Caso você saia da sala e volte e o mapa não carregue, será necessário sair do jogo e entrar novamente.\n\n<J><font size='17'><p align='center'>/sala #anvilwar00park",
	intro_text3 = "Pelo menos para mim, eu considero esse o nosso mapa-script mais bonito.\nCriado no final de 2023, o mapa se trata de uma grande casa de madeira no meio de um oceano tomado por arraias brancas.\nPossui duas piscinas suspensas, duas tirolesas, um grande escorregador, cinco quartos e uma grande área externa, tornando esse mapa ideal para festas, confraternizações e brincadeiras no geral.\n\n<VP>Este mapa possui uma baixa exigência de memória, portanto, você pode sair e voltar para a sala no momento que quiser sem problemas.\n\n<J><font size='17'><p align='center'>/sala #anvilwar00house",
	intro_text4 = "O mais recente mapa-script criado por nós (por enquanto).\nCriado entre Outubro e Novembro de 2024, é sem dúvidas, nosso mapa mais bem feito. Possui tudo o que uma casa 'normal' possui, e mais um pouco, incluindo uma biblioteca, academia e uma sala exclusiva para o capitão. Tudo isso em um grande navio pirata no meio do oceano, e atrás de uma grande ilha com escorregador e muitos animais.\n\n<R>AVISO: Este mapa possui uma alta exigência de memória. Caso você saia da sala e volte e o mapa não carregue, será necessário sair do jogo e entrar novamente.\n\n<J><font size='17'><p align='center'>/sala #anvilwar00ship",
}
lang.en = {
	title = {"Green Reserve Beach<","Snake's Natural Aquatic Park<","White's Stingray Ocean House<","Viego Santiarul Molach Vol Kalah Heigaari's Ship<"},
	intro_text1 = "Our first official script map.\nCreated in July 2022, the map is a complete beach with a bar, suspended pool, dance floor, zip line and two islands in the middle of the sea.\nIt has several NPCs to interact with players, and some beautiful surprises in the water.\n\n<R>WARNING: This map has a high memory requirement. If you leave the room, come back and the map does not load, you will need to exit the game and log back in.\n\n<J><font size='17'><p align='center'>/room #anvilwar00beach",
	intro_text2 = "Created in mid-2023, the map is a mix of a radical water park and a very large and numerous snake reserve.\nJust like our first map, this one also has several NPCs to interact with players. But the big difference between this and the first are the giant toys like zip lines, slides, water slides and even an underwater exploration capsule.\n\n<R>WARNING: This map has a high memory requirement. If you leave the room, come back and the map does not load, you will need to exit the game and log back in.\n\n<J><font size='17'><p align='center'>/room #anvilwar00park",
	intro_text3 = "At least for me, I consider this our most beautiful script map.\n\nCreated at the end of 2023, the map is a large wooden house in the middle of an ocean full of white rays.\nIt has two suspended pools, two zip lines, a big slide, five bedrooms and a large outdoor area, making this map ideal for parties, get-togethers and general fun.\n\n<VP>This map has a low memory requirement, so you can leave and return to the room whenever you want without any problems.\n\n<J><font size='17'><p align='center'>/room #anvilwar00house",
	intro_text4 = "The latest map-script created by our team.\nCreated between October and November 2024, it is without a doubt our best-made map. It has everything a 'normal' house has, and more, including a library, gym and an exclusive room for the captain. All this on a big pirate ship in the middle of the ocean, and behind a big island with a slide and lots of animals.\n\n<R>WARNING: This map has a high memory requirement. If you leave the room, come back and the map does not load, you will need to exit the game and log back in.\n\n<J><font size='17'><p align='center'>/room #anvilwar00ship",
}
if tfm.get.room.community == "br" or tfm.get.room.community == "pt" then
	text = lang.br
else
	text = lang.en
end
function showMessage(message,name)
	temp_text=string.gsub(message,"<b>","") 
	temp_text=string.gsub(temp_text,"</b>","")
	if tfm.get.room.isTribeHouse == false then
		tfm.exec.chatMessage(message,name)
	else
		ui.addPopup(0,0,temp_text,name,250,75,400,true)
	end
end
function showScriptMaps(name)
	ui.setBackgroundColor("#171717")
	ui.addTextArea(1000,text.intro_text1,name,10,200,380,197,0x080808,0x808080,1.0,false)
	ui.addTextArea(1006,"<J><font size='16'><font face='Alte Haas Grotesk'><p align='center'><b>"..text.title[1].."",name,10,165,380,24,0x080808,0x808080,1.0,false)
	ui.addTextArea(1001,text.intro_text2,name,410,200,380,197,0x080808,0x808080,1.0,false)
	ui.addTextArea(1007,"<J><font size='16'><font face='Alte Haas Grotesk'><p align='center'><b>"..text.title[2].."",name,410,165,380,24,0x080808,0x808080,1.0,false)
	ui.addTextArea(1002,text.intro_text3,name,810,200,380,197,0x080808,0x808080,1.0,false)
	ui.addTextArea(1008,"<J><font size='16'><font face='Alte Haas Grotesk'><p align='center'><b>"..text.title[3].."",name,810,165,380,24,0x080808,0x808080,1.0,false)
	ui.addTextArea(1003,text.intro_text4,name,1210,200,380,197,0x080808,0x808080,1.0,false)
	ui.addTextArea(1009,"<J><font size='16'><font face='Alte Haas Grotesk'><p align='center'><b>"..text.title[4].."",name,1210,165,380,24,0x080808,0x808080,1.0,false)
	tfm.exec.addImage("19650c56382.png","?0",50,9,name)
	tfm.exec.addImage("19650c57af7.png","?0",450,9,name)
	tfm.exec.addImage("19650c59266.png","?0",850,9,name)
	tfm.exec.addImage("19650c5a9d7.png","?0",1250,9,name)
end
function showMenu(name,color,x,y,width,height,title,content)
	if data[name].opened == false then
		ui.addTextArea(1004,"",name,-1000,-600,2800,1600,0x000001,0x000001,0.75,true)
		ui.addTextArea(1001,"",name,x+5,y+5,width,height,color,color,0.95,true)
		ui.addTextArea(1000,"<font size='13'><font face='Alte Haas Grotesk,Calibri,Segoe UI'>\n\n"..content.."",name,x,y,width,height,0x151515,color,0.95,true)
		ui.addTextArea(1002,"<font color='#f8d802'><font size='15'><font face='Alte Haas Grotesk,Calibri,Segoe UI'><p align='center'><b>"..title.."",name,x+4,y+4,width-10,20,0x101010,0x101010,0.95,true)
		ui.addTextArea(1003,"<font color='#ff2300'><font size='14'><b><a href='event:close'>X</a>",name,x+width-24,y+4,width-10,20,0,0,0.95,true)
	end
end
function eventNewPlayer(name)
	tfm.exec.respawnPlayer(name)
	showScriptMaps(name)
end
function eventNewGame()
	showScriptMaps()
end
for name,player in next,tfm.get.room.playerList do
	eventNewPlayer(name)
end
tfm.exec.newGame(lobby_map);
