for _,f in next,{"AutoNewGame","AfkDeath","AutoShaman","DebugCommand","MinimalistMode","PhysicalConsumables","MortCommand"} do
	tfm.exec["disable"..f](true)
end
y_factor=800;
tfm.exec.newGame('<C><P L="8000" H="4000" D="x_deadmeat/x_pictos/d_3004.png,282,653" MEDATA=";;;;-0;0:::1-"/><Z><S><S T="9" X="1000" Y="2300" L="3000" H="3000" P="0,0,0,0,0,0,0,0" m="" archAcc="0.3" archCheeseMax="0.35" archMax="0.45" linDampAcc="0.5" linDampMax="2.5" angDampAcc="0.2" angDampMax="1.2"/><S T="9" X="4000" Y="2300" L="3000" H="3000" P="0,0,0,0,0,0,0,0" m="" archAcc="0.3" archCheeseMax="0.35" archMax="0.45" linDampAcc="0.5" linDampMax="2.5" angDampAcc="0.2" angDampMax="1.2"/><S T="9" X="7000" Y="2300" L="3000" H="3000" P="0,0,0,0,0,0,0,0" m="" archAcc="0.3" archCheeseMax="0.35" archMax="0.45" linDampAcc="0.5" linDampMax="2.5" angDampAcc="0.2" angDampMax="1.2"/><S T="13" X="409" Y="780" L="49" P="0,0,5,0,0,0,0,0" o="324650" N="" m=""/><S T="13" X="541" Y="765" L="94" P="0,0,5,0,0,0,0,0" o="324650" N="" m=""/><S T="13" X="619" Y="785" L="64" P="0,0,5,0,0,0,0,0" o="324650" N="" m=""/><S T="13" X="368" Y="802" L="40" P="0,0,5,0,0,0,0,0" o="324650" N="" m=""/><S T="13" X="316" Y="806" L="25" P="0,0,5,0,0,0,0,0" o="324650" N="" m=""/></S><D><DS X="537" Y="657"/></D><O/><L/></Z></C>')
debug.disableEventLog(true)
ground={type = 14,width = 4000,height = 100,miceCollision = true, friction = 1, groundCollision = true, color = 0}
barrier={type = 14,width = 10,height = 4000,miceCollision = true, friction = 0, groundCollision = true, color = 0}
function showWater(name)
	tfm.exec.addPhysicObject(-1,-50,0,barrier)
	tfm.exec.addPhysicObject(-2,8050,2000,barrier)
	tfm.exec.addPhysicObject(-3,-2000,2000,ground)
	tfm.exec.addPhysicObject(-4,2000,3840,ground)
	tfm.exec.addPhysicObject(-5,6000,3840,ground)
	for i=0,11 do
		tfm.exec.addImage("192e019c182.png", "?1", -1200+(i*1017), 3730, name, 1, 1, 0, 1)
		tfm.exec.addImage("192e019c182.png", "?1", -1200+(i*1017), 4705, name, 1, -2, 0, 1)
	end
	tfm.exec.addImage("192e017f5a8.png", "!-1", -1200, y_factor+23, name,24,12,0,1)
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
	for _,i in next,{0,2,4,6,8} do
		tfm.exec.addImage("192e01770df.png", "?1", -1200+(i*2400), y_factor-11, name)
		tfm.exec.addImage("192e017b00d.png", "!-10", -1200+(i*2400), y_factor-11, name,1,1)
	end
	for _,i in next,{1,3,5,7,9} do
 		tfm.exec.addImage("192e01770df.png", "?1", 1200+(i*2400), y_factor-11, name, -1, 1)
		tfm.exec.addImage("192e017b00d.png", "!-10", 1200+(i*2400), y_factor-11, name, -1, 1)
	end
	tfm.exec.addImage("192e018e5fd.png","?10",-1200,-1000,name,50,3) 
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
