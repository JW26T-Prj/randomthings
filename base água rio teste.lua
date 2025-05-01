for _,f in next,{"AutoNewGame","AfkDeath","AutoShaman","DebugCommand","MinimalistMode","PhysicalConsumables","MortCommand"} do
	tfm.exec["disable"..f](true)
end
y_factor=400; changed=false; mapa="@7963647"; xml='';
tfm.exec.setRoomMaxPlayers(3)
debug.disableEventLog(true)
ground={type = 14,width = 4000,height = 100,miceCollision = true, friction = 1, groundCollision = true, color = 0}
barrier={type = 14,width = 10,height = 4000,miceCollision = true, friction = 0, groundCollision = true, color = 0}
function showWater(name)
	tfm.exec.addPhysicObject(-1,-50,0,barrier)
	tfm.exec.addPhysicObject(-2,8050,2000,barrier)
	tfm.exec.addPhysicObject(-3,-2000,2000,ground)
	tfm.exec.addPhysicObject(-4,2000,1535,ground)
	tfm.exec.addPhysicObject(-5,6000,1535,ground)
	for a=0,15 do
		tfm.exec.addImage("181ba85ccc2.png","?2",math.random(-400,9000),math.random(-350,150),name,1,1,0,(math.random(50,100)/100));
		tfm.exec.addImage("181ba86195e.png","?2",math.random(-400,9000),math.random(-350,150),name,1,1,0,(math.random(50,100)/100));
		tfm.exec.addImage("181ba86655c.png","?2",math.random(-400,9000),math.random(-350,150),name,1,1,0,(math.random(50,100)/100));
		tfm.exec.addImage("181ba86b15a.png","?2",math.random(-400,9000),math.random(-350,150),name,1,1,0,(math.random(50,100)/100));
	end
	tfm.exec.addImage("19650c68474.png","+1",-217,-33,name)
	for i=0,4 do
		tfm.exec.addImage("189746fe3a4.png", "?-1", -1200+(i*2000), 1430, name, 1, 1, 0, 1)
		tfm.exec.addImage("189746fe3a4.png", "?-1", -1200+(i*2000), 2170, name, 1, -3, 0, 1)
	end
	tfm.exec.addImage("19650c70348.png", "!-20", -1200, y_factor+23, name,50,10,0,1.04)
	for _,i in next,{0,2,4} do
		tfm.exec.addImage("192e0181ef2.png", "?1", -1200+(i*2400), y_factor+30, name) 
		tfm.exec.addImage("192e0184530.png", "?1", -600+(i*2400), y_factor+30, name) 
		tfm.exec.addImage("192e0186807.png", "?1", i*2400, y_factor+30, name) 
		tfm.exec.addImage("192e018872a.png", "?1", 600+(i*2400), y_factor+30, name)
	end
	for _,i in next,{1,3,5} do
		tfm.exec.addImage("192e018872a.png", "?1", -600+(i*2400), y_factor+30, name,-1,1)
		tfm.exec.addImage("192e0186807.png", "?1", i*2400, y_factor+30, name,-1,1) 
		tfm.exec.addImage("192e0184530.png", "?1", 600+(i*2400), y_factor+30, name,-1,1) 
		tfm.exec.addImage("192e0181ef2.png", "?1", 1200+(i*2400), y_factor+30, name,-1,1)
	end
	for _,i in next,{0,2,4} do
		tfm.exec.addImage("19650c6cc69.png", "?0", -1200+(i*2400), y_factor-11, name,1,1,0,1)
		tfm.exec.addImage("19650c6ee85.png", "!-10", -1200+(i*2400), y_factor-31, name,1,1,0,1)
	end
	for _,i in next,{1,3,5} do
 		tfm.exec.addImage("19650c6cc69.png", "?0", 1200+(i*2400), y_factor-11, name, -1, 1,0,1)
		tfm.exec.addImage("19650c6ee85.png", "!-10", 1200+(i*2400), y_factor-31, name, -1, 1,0,1)
	end
	for i=0,15 do tfm.exec.addImage("192e019006a.png","?0",-1200+(i*750),232,name,1,1,0,1) end
	for i=0,7 do tfm.exec.addImage("19650c77d14.png","?0",-1200+(i*1599),232,name,1,1,0,1) end
	tfm.exec.addImage("192e018e5fd.png","?1",-1200,-1400,name,50,5,0,0.2) 
	ui.setBackgroundColor("#1C381A")
end
function resetMap()
	if xml == '' then
		tfm.exec.disableAutoShaman(true)
		tfm.exec.newGame(mapa)
		ui.addTextArea(0,"",nil,-1000,-500,3000,1500,0x6a7495,0x6a7495,1.0,true)
		ui.setMapName("Loading map. Please wait...<")
		changed=false
	else
		changed=true
		tfm.exec.newGame(xml)
		ui.removeTextArea(0)
		for name,_ in next,tfm.get.room.playerList do
			eventNewPlayer(name)
		end
	end
end
function eventNewPlayer(name)
	if changed == true then
		ui.setMapName("wtf")
		showWater(name)
		tfm.exec.respawnPlayer(name)
		tfm.exec.setGameTime(72000)
	end
end
function eventNewGame()
	xml=tfm.get.room.xmlMapInfo.xml
end
for name,player in next,tfm.get.room.playerList do
	eventNewPlayer(name)
end
function eventLoop(p,r)
	if p >= 5500 and changed == false then
		resetMap()
	end
end
resetMap()
