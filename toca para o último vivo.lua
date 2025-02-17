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
			active=-1
		elseif i==1 then
			active=-1
			tfm.exec.giveCheese(name)
			tfm.exec.playerVictory(name)
			tfm.exec.setGameTime(10)
	end
end
