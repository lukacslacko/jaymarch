require 'graphics/png'
width =: 256
height =: 128
fov =: 1
color =: {{ (x+0.5), (|y), 4*|x*y }}
scale =: {{ +:fov*width%~(x--:width),y--:height }}
img =: {{ <. 255 * 0 >. (x (color/@scale) y) <. 1  }} 
'out.png' writepng~ (1 0 2)|: (i.width) img"0/ (i.height)
