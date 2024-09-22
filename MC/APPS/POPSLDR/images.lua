--[[
  ___  ___  ___  ___ _                 _         
 | _ \/ _ \| _ \/ __| |   ___  __ _ __| |___ _ _ 
 |  _/ (_) |  _/\__ \ |__/ _ \/ _` / _` / -_) '_|
 |_|  \___/|_|  |___/____\___/\__,_\__,_\___|_|  
  Licensed under GNU General public license v3.0
--]]

LOG("Loading images")
--- Add your images to this table, just write the name of the file, all images go into POPSLDR/IMG/*
--- FILES MUST HAVE EXTENSION. filename is parsed to create the access key: USB.PNG will be accesed by typing `IMG["USB"]`
local IMGS = {
  "USB.png",
  "SMB.png",
  "HDD.png",
  "PSL.png",
  "select.png",
  "start.png",
  --"circle.png",
  --"cross.png",
  --"down.png",
  --"L1.png",
  --"L2.png",
  --"L3.png",
  --"left.png",
  --"R1.png",
  --"R2.png",
  --"R3.png",
  --"right.png",
  --"square.png",
  --"triangle.png",
  --"up.png",
}
IMG = {}
LOGF("%d images registered", #IMGS)
for x=1, #IMGS do
  local INDX = IMGS[x]:match("(.+)%..+$")
  IMG[INDX] = Graphics.loadImage("POPSLDR/IMG/"..IMGS[x])
  if IMG[INDX] == nil then error("Could not load 'POPSLDR/IMG/"..IMGS[x].."'") end
  Graphics.setImageFilters(IMG[INDX], LINEAR)
end

