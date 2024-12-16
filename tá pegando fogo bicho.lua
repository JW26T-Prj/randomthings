function fogo(name)
	tfm.exec.addImage("18756e3dce6.png","!1",0,235,name)
	tfm.exec.addImage("18756e3dce6.png","!1",800,235,name)
end
function eventNewPlayer(name)
	fogo(name)
end
for name,_ in next,tfm.get.room.playerList do
	eventNewPlayer(name)
end
