for _,f in next,{"AutoNewGame","AfkDeath","AutoShaman","DebugCommand","MinimalistMode","PhysicalConsumables","MortCommand"} do
	tfm.exec["disable"..f](true)
end
y_factor=800;
tfm.exec.newGame('<C><P L="8000" H="4000" MEDATA="0,1:2,1:3,1;;;;-0;0:::1-"/><Z><S><S T="9" X="1000" Y="2300" L="3000" H="3000" P="0,0,0,0,0,0,0,0" m="" archAcc="0.45" archCheeseMax="0.3" linDampAcc="0.6" linDampMax="2.6" angDampAcc="0.2" angDampMax="1.2"/><S T="16" X="868" Y="798" L="380" H="14" P="1,150,2048,0,0,1,0,0" grav="1.1" N="" lua="1"/><S T="9" X="4000" Y="2300" L="3000" H="3000" P="0,0,0,0,0,0,0,0" m="" archAcc="0.45" archCheeseMax="0.3" linDampAcc="0.6" linDampMax="2.6" angDampAcc="0.2" angDampMax="1.2"/><S T="9" X="7000" Y="2300" L="3000" H="3000" P="0,0,0,0,0,0,0,0" m="" archAcc="0.45" archCheeseMax="0.3" linDampAcc="0.6" linDampMax="2.6" angDampAcc="0.2" angDampMax="1.2"/><S T="12" X="400" Y="800" L="400" H="74" P="0,0,0.3,0.2,0,0,0,0" o="324650" N="" m=""/><S T="12" X="402" Y="799" L="480" H="28" P="0,0,1.3,0.2,0,0,0,0" o="324650" N="" m=""/><S T="12" X="7402" Y="799" L="480" H="28" P="0,0,1.3,0.2,0,0,0,0" o="324650" N="" m=""/><S T="12" X="7400" Y="800" L="400" H="74" P="0,0,0.3,0.2,0,0,0,0" o="324650" N="" m=""/></S><D><F X="285" Y="741"/><DS X="400" Y="730"/></D><O/><L/></Z></C>')
debug.disableEventLog(true)
ground={type = 14,width = 4000,height = 100,miceCollision = true, friction = 1, groundCollision = true, color = 0}
barrier={type = 14,width = 10,height = 4000,miceCollision = true, friction = 0, groundCollision = true, color = 0}
function showWater(name)
	tfm.exec.addPhysicObject(-1,-50,0,barrier)
	tfm.exec.addPhysicObject(-2,8050,2000,barrier)
	tfm.exec.addPhysicObject(-3,-2000,2000,ground)
	tfm.exec.addPhysicObject(-4,2000,3840,ground)
	tfm.exec.addPhysicObject(-5,6000,3840,ground)
	tfm.exec.addImage("19650c68474.png","+1",-217,-33,name)
	tfm.exec.addImage("19650c7d684.png", "?1", 130, 690, name)
	tfm.exec.addImage("19650c7d684.png", "?1", 7130, 690, name)
	for i=0,4 do
		tfm.exec.addImage("189746fe3a4.png", "?-1", -1200+(i*2000), 3730, name, 1, 1, 0, 1)
		tfm.exec.addImage("189746fe3a4.png", "?-1", -1200+(i*2000), 4270, name, 1, -2, 0, 1)
	end
	tfm.exec.addImage("19650c70348.png", "!-20", -1200, y_factor+23, name,50,20,0,1)
	for _,i in next,{0,2,4} do
		tfm.exec.addImage("192e0181ef2.png", "?1", -1200+(i*2400), y_factor+30, name) 
		tfm.exec.addImage("192e0184530.png", "?1", -600+(i*2400), y_factor+30, name) 
		tfm.exec.addImage("192e0186807.png", "?1", i*2400, y_factor+30, name) 
		tfm.exec.addImage("192e018872a.png", "?1", 600+(i*2400), y_factor+30, name)
		tfm.exec.addImage("192e0181ef2.png", "?1", -1200+(i*2400), y_factor+3588, name,1,-1) 
		tfm.exec.addImage("192e0184530.png", "?1", -600+(i*2400), y_factor+3588, name,1,-1) 
		tfm.exec.addImage("192e0186807.png", "?1", i*2400, y_factor+3588, name,1,-1) 
		tfm.exec.addImage("192e018872a.png", "?1", 600+(i*2400), y_factor+3588, name,1,-1)
	end
	for _,i in next,{1,3,5} do
		tfm.exec.addImage("192e018872a.png", "?1", -600+(i*2400), y_factor+30, name,-1,1)
		tfm.exec.addImage("192e0186807.png", "?1", i*2400, y_factor+30, name,-1,1) 
		tfm.exec.addImage("192e0184530.png", "?1", 600+(i*2400), y_factor+30, name,-1,1) 
		tfm.exec.addImage("192e0181ef2.png", "?1", 1200+(i*2400), y_factor+30, name,-1,1)
		tfm.exec.addImage("192e018872a.png", "?1", -600+(i*2400), y_factor+3588, name,-1,-1)
		tfm.exec.addImage("192e0186807.png", "?1", i*2400, y_factor+3588, name,-1,-1) 
		tfm.exec.addImage("192e0184530.png", "?1", 600+(i*2400), y_factor+3588, name,-1,-1) 
		tfm.exec.addImage("192e0181ef2.png", "?1", 1200+(i*2400), y_factor+3588, name,-1,-1) 
	end
	for _,i in next,{0,2,4} do
		tfm.exec.addImage("19650c6cc69.png", "?1", -1200+(i*2400), y_factor-11, name,1,1,0,1)
		tfm.exec.addImage("19650c6ee85.png", "!-10", -1200+(i*2400), y_factor-31, name,1,1,0,1)
	end
	for _,i in next,{1,3,5} do
 		tfm.exec.addImage("19650c6cc69.png", "?1", 1200+(i*2400), y_factor-11, name, -1, 1,0,1)
		tfm.exec.addImage("19650c6ee85.png", "!-10", 1200+(i*2400), y_factor-31, name, -1, 1,0,1)
	end
	for i=0,15 do tfm.exec.addImage("192e019006a.png","?0",-1200+(i*750),632,name,1,1,0,1) end
	tfm.exec.addImage("192e018e5fd.png","?1",-1200,-1000,name,50,3,0,0.2) 
	ui.setBackgroundColor("#1C381A")
end
function eventNewPlayer(name)
	ui.setMapName(" ")
	showWater(name)
	tfm.exec.respawnPlayer(name)
	tfm.exec.setGameTime(72000)
end
for name,player in next,tfm.get.room.playerList do
	eventNewPlayer(name)
end
