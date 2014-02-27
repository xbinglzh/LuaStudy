function People(name)
	self = {}
	
	local function init()
		self.name = name
	end
	
	self.sayPeople = function()
		print("say --->"..self.name) 
	end
	
	init()
	return self
end

function Man(name)
  self = People(name)
  
  self.sayPeople = function ()
  	print("man say People :"..self.name)
  end
  
  self.sayMan = function ()
  	print("man say --->"..self.name)
  end
  
  return self
	
end


--man = Man("zhang san")
----man:sayPeople("xxxxxx")
--man:sayMan("xxxxx")

local p = People("liSi")
p:sayPeople()

local m = Man("zhang san")
m:sayPeople()
m:sayMan()