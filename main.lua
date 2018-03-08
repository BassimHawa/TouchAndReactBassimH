-----------------------------------------------------------------------------------------
-- Title: TouchAndReact
-- Name: Bassim Hawa
-- Course: ICS2O/3C
-- This program displays a button. When you click the button it displays text as well as another object
-----------------------------------------------------------------------------------------

--set background color
display.setDefault ("background", 153/255, 204/255, 255/255)

--hide status bar
display.setStatusBar(display.HiddenStatusBar)

--create blue button, set its position and make it visible
local blueButton = display.newImageRect("Images/blueButton.png", 198, 96)
blueButton.x = display.contentWidth/2
blueButton.y = display.contentHeight/2
bluebutton