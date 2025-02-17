data={};

function eventNewPlayer(name)
	newData={
			["opened"]=false;
			};		
 	data[name] = newData;
	ui.addTextArea(299,"<p align='center'><a href='event:show_menu'><font size='18'>Menu",n,725,22,70,24,0x000001,0x000001,0.75,true)
end

for name,player in pairs(tfm.get.room.playerList) do
	eventNewPlayer(name)
end

function showMenu(name,color,x,y,width,height,title,content)
	if data[name].opened == false then
		data[name].opened=true
		ui.addTextArea(1004,"",name,-1000,-600,2800,1600,0x000001,0x000001,0.65,true)
		ui.addTextArea(1001,"",name,x+5,y+5,width,height,color,color,0.95,true)
		ui.addTextArea(1000,"<font size='13'><i>\n\n"..content.."",name,x,y,width,height,0x151515,color,0.95,true)
		ui.addTextArea(1002,"<font color='#f8d802'><font size='14'><p align='center'><i><b>"..title.."",name,x+5,y+5,width-11,22,0x101010,0x101010,0.95,true)
		ui.addTextArea(1003,"<font color='#ff2300'><font size='14'><b><a href='event:close'>X</a>",name,x+width-25,y+5,width-10,20,0,0,0.95,true)
	end
end

function removeMenu(name)
	for _,i in next,{1000,1001,1002,1003,1004} do
		ui.removeTextArea(i,name)
	end
	data[name].opened=false
end

function eventTextAreaCallback(id, name, callback)
	if callback == "hide_menu" then
		ui.addTextArea(299,"<p align='center'><a href='event:show_menu'><font size='18'>Menu",n,725,22,70,24,0x000001,0x000001,0.75,true)
		ui.removeTextArea(298,name)
	elseif callback == "show_menu" then
		ui.addTextArea(299,"<p align='center'><a href='event:hide_menu'><font size='18'>Menu",name,725,22,70,24,0x000001,0x000001,0.75,true)
		ui.addTextArea(298,"<p align='right'><a href='event:p1'>Introduction</a>\n<a href='event:p2'>How to play</a>\n<a href='event:p3'>Credits</a>",name,715,56,80,45,0x000001,0x000001,0.80,true)
	elseif callback == "p1" then
		showMenu(name,0x202020,150,125,500,190,"Introduction","123456789")
	elseif callback == "p2" then
		showMenu(name,0x202020,150,125,500,190,"How to Play","123456789")
	elseif callback == "p3" then
		showMenu(name,0x202020,150,125,500,190,"Credits","123456789")
	elseif callback == "close" then
		removeMenu(name)
	end
end
