for _,f in next,{"AutoNewGame","AutoShaman","AutoTimeLeft","DebugCommand","AllShamanSkills","PhysicalConsumables","PrespawnPreview","MinimalistMode","WatchCommand","MortCommand","DebugCommand"} do
	tfm.exec["disable"..f](true)
end
changed=false; xml='<C><P L="3750" H="1250" MEDATA=";;;;-0;0:::1-"/><Z><S><S T="9" X="1875" Y="975" L="4000" H="550" P="0,0,0,0,0,0,0,0" m="" archAcc="0.4" archCheeseMax="0.5" linDampAcc="0.4" linDampMax="2" angDampAcc="0.2" angDampMax="1.2"/><S T="12" X="-50" Y="750" L="10" H="2222" P="0,0,0,0,0,0,0,0" o="324650" c="3" m=""/><S T="12" X="3800" Y="750" L="10" H="2222" P="0,0,0,0,0,0,0,0" o="324650" c="3" m=""/><S T="12" X="1875" Y="1255" L="4000" H="100" P="0,0,0,0,0,0,0,0" o="324650" c="3" m=""/></S><D/><O/><L/></Z></C>';
debug.disableEventLog(true)
system.disableChatCommandDisplay(nil, true)

function showWater(name)
	for i=0,11 do
		tfm.exec.addImage("192e019c182.png", "?-1", -1200+(i*1017), 1155, name, 1, 1, 0, 1)
		tfm.exec.addImage("192e019c182.png", "?-1", -1200+(i*1017), 2130, name, 1, -2, 0, 1)
	end

	tfm.exec.addImage("192e017f5a8.png", "!-1", -1200, 825, name,28,8,0,1)
	for _,i in next,{0,2,4} do
		tfm.exec.addImage("192e0181ef2.png", "?1", -1200+(i*2400), 800, name) 
		tfm.exec.addImage("192e0184530.png", "?1", -600+(i*2400), 800, name) 
		tfm.exec.addImage("192e0186807.png", "?1", i*2400, 800, name) 
		tfm.exec.addImage("192e018872a.png", "?1", 600+(i*2400), 800, name)
	end
	for _,i in next,{1,3,5} do
		tfm.exec.addImage("192e018872a.png", "?1", -600+(i*2400), 800, name,-1,1)
		tfm.exec.addImage("192e0186807.png", "?1", i*2400, 800, name,-1,1) 
		tfm.exec.addImage("192e0184530.png", "?1", 600+(i*2400), 800, name,-1,1) 
		tfm.exec.addImage("192e0181ef2.png", "?1", 1200+(i*2400), 800, name,-1,1)
	end
	for _,i in next,{0,2,4,6} do
		tfm.exec.addImage("192e01770df.png", "?1", -1200+(i*2400), 689, name)
		tfm.exec.addImage("192e017b00d.png", "!-1", -1200+(i*2400), 689, name,1,1)
	end
	for _,i in next,{1,3,5,7} do
 		tfm.exec.addImage("192e01770df.png", "?1", 1200+(i*2400), 689, name, -1, 1)
		tfm.exec.addImage("192e017b00d.png", "!-1", 1200+(i*2400), 689, name, -1, 1,0,0.9)
	end
	tfm.exec.addImage("17e937f4f5a.png","?1",-800,-1735,name,30,0.7)
end
function resetMap()
	changed=true
	tfm.exec.newGame(xml)
end
function eventNewGame()
	xml=tfm.get.room.xmlMapInfo.xml
	for n,p in next,tfm.get.room.playerList do
		showWater(n)
	end
end
function eventNewPlayer(name)
	showWater(name)
end
for name,player in next,tfm.get.room.playerList do
	eventNewPlayer(name)
end
resetMap()
