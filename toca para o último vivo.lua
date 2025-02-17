function eventPlayerDied(name)
	local i=0
	local name
	for pname,player in next,tfm.get.room.playerList do
		if not player.isDead then
			i=i+1
			name=pname
		end
	end
	if i==0 then
		-- não fazer nada
	elseif i==1 then
		tfm.exec.giveCheese(name)
		tfm.exec.playerVictory(name)
		tfm.exec.setGameTime(10)
	end
end
