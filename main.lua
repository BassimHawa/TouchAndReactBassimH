-----------------------------------------------------------------------------------------
-- Title: TouchAndReact
-- Name: Bassim Hawa
-- Course: ICS2O/3C
-- This program displays a button. When you click the button it displays text as well as another object
-----------------------------------------------------------------------------------------

--set background color
display.setDefault ("background", 0, 0, 0)

--hide status bar
display.setStatusBar(display.HiddenStatusBar)

--create blue button, set its position and make it visible
local blueButton = display.newImageRect("Images/bluebutton.png",198, 96)
blueButton.x = display.contentWidth/2
blueButton.y = display.contentHeight/2
blueButton.isVisible = true 

--create red button, set its position and make it invisible
local redButton = display.newImageRect("Images/redButton.png",198, 96)
redButton.x = display.contentWidth/2
redButton.y = display.contentHeight/2
redButton.isVisible = false

--create text objects, set its position and make it inivisble
local textObject = display.newText ("Clicked!", 0, 0, nil, 50)
textObject.x = display.contentWidth/2
textObject.y = display.contentHeight/3
textObject:setTextColor (1, 1, 1)
textObject.isVisible = false

--Create Obama, set his position, and make him invisible
local Obama = display.newImageRect("Images/Obama-head.png",250, 200)
Obama.x = display.contentWidth/3
Obama.y = display.contentHeight/1.5
Obama.isVisible = false

--Function: BlueButtonListener
--Input: touch listener
--Output: none
--Description: when blue button is clicked, it will make the text appear with red button, as well as obama 
--and make the blue button disappear
local function BlueButtonListener(touch)
	if (touch.phase == "began") then
		blueButton.isVisible = false
		redButton.isVisible = true
		textObject.isVisible = true--sound
		local correctSound = audio.loadSound("Sounds/Correct Answer Sound Effect.mp3")
		local correctSoundChannel
		correctSoundChannel = audio.play(correctSound)
		Obama.isVisible = true
	end 

	if (touch.phase == "ended") then
		blueButton.isVisible = true
		redButton.isVisible = false
		textObject.isVisible = false
		Obama.isVisible = false
	end
end

--Function: RedButtonListener
--Input: touch listener
--Output: none
--Description: when red button is released, it will make the text disappear, as well as obama and red button
--disappear, and then blue button reappear
local function RedButtonListener(touch)

	if (touch.phase == "ended") then
		blueButton.isVisible = true
		redButton.isVisible = false
		textObject.isVisible = false
		Obama.isVisible = false
	end
end

--add the respective listeners to each object
blueButton:addEventListener("touch", BlueButtonListener)
redButton:addEventListener("touch", RedButtonListener)