/// @desc

global.some_text = "Some big text"
_fps = -1
alarm[0] = 8

canvas = new SUICanvas([
	new SUIText(room_width/2, room_height/2, SUIBind("global.some_text"),
		{font: fSimpleUITitle, halign: fa_center, valign: fa_middle})
])

canvas.appendChild(new SUIText(50, 50, SUIBind("._fps")))
canvas.appendChild(new SUIButton(200, 100, "Click me", function() { show_message_async("Clicked!") }))
canvas.appendChild(new SUISprite(700, 50, sSimpleUIDemo, 0, {w: 200, h: 50}))
canvas.appendChild(new SUITextInput(100, 400,,,SUIBind("global.some_text", "global.some_text"),"Enter the title"))


var mx = SUIBind("mouse.x")
var my = SUIBind("mouse.y")
var mtext = SUIBind(function() { return "pos: " + string({x: mouse_x, y: mouse_y}) })
canvas.appendChild(
new SUIText(
	// follow mouse
	mx,
	my,
	mtext,
	{
		hoverable: false
	}
))