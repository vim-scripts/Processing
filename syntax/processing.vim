" Vim syntax file
" Language:	Processing
" Maintainer:	Szabolcs Horvát <szhorvat at gmail dot com>
" URL:		http://web.ift.uib.no/~szhorvat/processing.vim
" Version:	1
" Last Change:	2008-01-05

" This is for Processing 0135 BETA, based on keywords.txt

if exists("b:current_syntax")
  finish
endif

syntax case match

" LITERAL2

syn keyword processingVariable	focused frameCount height key
syn keyword processingVariable	keyCode mouseButton
syn keyword processingVariable	mouseX mouseY online pixels
syn keyword processingVariable	pmouseX pmouseY screen width
" at the moment these need to be "syn match"es so that they don't take
" precedence over processingFunRegion's start pattern:
" syn keyword processingVariable  frameRate mousePressed keyPressed
syn match   processingVariable	display "frameRate"
syn match   processingVariable	display "mousePressed"
syn match   processingVariable	display "keyPressed"

" KEYWORD2

syn keyword processingFunction	contained abs acos alpha ambient ambientLight append
syn keyword processingFunction	contained applyMatrix arc arraycopy asin atan atan2
syn keyword processingFunction	contained background beginCamera beginRecord
syn keyword processingFunction	contained beginShape bezier bezierDetail bezierPoint
syn keyword processingFunction	contained bezierTangent bezierVertex binary blend
syn keyword processingFunction	contained blendColor blue box brightness
syn keyword processingFunction	contained camera ceil colorMode concat
syn keyword processingFunction	contained constrain cos createFont createGraphics
syn keyword processingFunction	contained createImage createWriter cursor curve
syn keyword processingFunction	contained curveDetail curvePoint curveTightness
syn keyword processingFunction	contained curveVertex day degrees delay
syn keyword processingFunction	contained directionalLight dist draw ellipse
syn keyword processingFunction	contained ellipseMode emissive endCamera endRecord
syn keyword processingFunction	contained endShape exit exp expand fill filter 
syn keyword processingFunction	contained floor frustum get green hex hint hour
syn keyword processingFunction	contained hue image imageMode join 
syn keyword processingFunction	contained keyReleased keyTyped lerp lerpColor
syn keyword processingFunction	contained lightFalloff lights lightSpecular line link
syn keyword processingFunction	contained loadBytes loadFont loadImage loadPixels
syn keyword processingFunction	contained loadStrings log loop mag map match max millis
syn keyword processingFunction	contained min minute modelX modelY modelZ month
syn keyword processingFunction	contained mouseClicked mouseDragged mouseMoved
syn keyword processingFunction	contained mouseReleased nf nfc nfp nfs
syn keyword processingFunction	contained noCursor noFill noise noiseDetail noiseSeed
syn keyword processingFunction	contained noLoop norm normal noSmooth noStroke noTint
syn keyword processingFunction	contained open openStream ortho param perspective list
syn keyword processingFunction	contained beginDraw endDraw blend copy
syn keyword processingFunction	contained mask set point pointLight popMatrix pow
syn keyword processingFunction	contained printCamera printMatrix
syn keyword processingFunction	contained printProjection close flush print println
syn keyword processingFunction	contained pushMatrix quad radians random randomSeed
syn keyword processingFunction	contained rect rectMode red redraw resetMatrix reverse
syn keyword processingFunction	contained rotate rotateX rotateY rotateZ round
syn keyword processingFunction	contained saturation save saveBytes saveFrame
syn keyword processingFunction	contained saveStrings scale screenX screenY screenZ
syn keyword processingFunction	contained second setup shininess shorten sin size
syn keyword processingFunction	contained smooth sort specular sphere sphereDetail
syn keyword processingFunction	contained splice split splitTokens spotLight sq sqrt
syn keyword processingFunction	contained status str charAt equals indexOf length
syn keyword processingFunction	contained substring toLowerCase toUpperCase stroke
syn keyword processingFunction	contained strokeCap strokeJoin strokeWeight subset
syn keyword processingFunction	contained tan text textAlign textAscent 
syn keyword processingFunction	contained textDescent textFont textLeading textMode
syn keyword processingFunction	contained textSize texture textureMode textWidth tint
syn keyword processingFunction	contained translate triangle trim unbinary unhex unhint
syn keyword processingFunction	contained updatePixels vertex year
syn keyword processingFunction	contained keyPressed mousePressed frameRate

" highlight funtcion names only when they are followed by "("
syn match   processingFunRegion	"\K\k*\s*(" contains=processingFunction

" KEYWORD1

syn keyword processingType	Boolean Byte Character Class Double Float
syn keyword processingType	Integer Math String StringBuffer Thread
syn keyword processingType	Array Object PFont PGraphics PImage
syn keyword processingType	PrintWriter
syn keyword processingType	boolean byte char color double float
syn keyword processingType	int long short void

syn keyword processingBoolean	false true
syn keyword processingConstant	null

syn keyword processingStorageClass	final static synchronized transient volatile 
syn keyword processingConditional	if else switch
syn keyword processingControlFlow	break continue return
syn keyword processingRepeat		while for do
syn keyword processingLabel		case default
syn keyword processingException		try catch throw finally
syn keyword processingOperator		new instanceof

syn keyword processingKeyword	abstract class
syn keyword processingKeyword	interface native
syn keyword processingKeyword	package private protected public
syn keyword processingKeyword	extends implements import throws
syn keyword processingKeyword	super this


" LITERAL1

syn keyword processingConstant	ADD ALPHA ALT AMBIENT ARGB ARROW BACKSPACE
syn keyword processingConstant	BASELINE BEVEL BLEND BLUR BOTTOM BURN CENTER
syn keyword processingConstant	CENTER_RADIUS CHATTER CLOSE CODED COMPLAINT
syn keyword processingConstant	CONTROL CORNER CORNERS CROSS CUSTOM DARKEST
syn keyword processingConstant	DEG_TO_RAD DELETE DIFFERENCE DILATE
syn keyword processingConstant	DIRECTIONAL DISABLE_AUTO_GZIP
syn keyword processingConstant	DISABLE_DEPTH_TEST DISABLE_ERROR_REPORT
syn keyword processingConstant	DISABLE_TEXT_SMOOTH DODGE DOWN DXF
syn keyword processingConstant	ENABLE_ACCURATE_TEXTURES
syn keyword processingConstant	ENABLE_DEPTH_SORT ENABLE_NATIVE_FONTS
syn keyword processingConstant	ENABLE_OPENGL_2X_SMOOTH
syn keyword processingConstant	ENABLE_OPENGL_4X_SMOOTH ENTER EPSILON ERODE
syn keyword processingConstant	ESC EXCLUSION GRAY HAND HARD_LIGHT
syn keyword processingConstant	HINT_COUNT HSB IMAGE INVERT JAVA2D LEFT
syn keyword processingConstant	LIGHTEST LINES LINUX MACOS9 MACOSX MAX_FLOAT
syn keyword processingConstant	MAX_INT MIN_FLOAT MIN_INT MITER MODEL MOVE
syn keyword processingConstant	MULTIPLY NORMALIZED NO_FLYING_POO OPAQUE
syn keyword processingConstant	OPEN OPENGL ORTHOGRAPHIC OTHER OVERLAY P2D P3D
syn keyword processingConstant	PDF PERSPECTIVE PIXEL_CENTER POINT POINTS
syn keyword processingConstant	POLYGON POSTERIZE PROBLEM PROJECT QUADS
syn keyword processingConstant	QUAD_STRIP QUARTER_PI RADIUS RAD_TO_DEG
syn keyword processingConstant	REPLACE RETURN RGB RIGHT ROUND SCREEN SHAPE
syn keyword processingConstant	SHIFT SOFT_LIGHT SPOT SQUARE SUBTRACT TAB
syn keyword processingConstant	TARGA TEXT THIRD_PI THRESHOLD TIFF TOP
syn keyword processingConstant	TRIANGLES TRIANGLE_FAN TRIANGLE_STRIP
syn keyword processingConstant	UP WAIT WHITESPACE
syn keyword processingConstant	COMPOSITE SVIDEO COMPONENT TUNER NTSC PAL
syn keyword processingConstant	SECAM RAW ANIMATION BASE BMP CINEPAK
syn keyword processingConstant	CMYK GIF GRAPHICS H261 H263 H264 JPEG MS_VIDEO
syn keyword processingConstant	MOTION_JPEG_A MOTION_JPEG_B SORENSON VIDEO
syn keyword processingConstant	WORST LOW MEDIUM HIGH BEST LOSSLESS
syn keyword processingConstant	HALF_PI PI TWO_PI

syn match   processingSpecError	display contained "\\."
syn match   processingSpecial	display contained "\\[ntbrf0'\"\\]"
syn match   processingSpecial	display contained "\\u\x\{4}"
syn region  processingString	start=+"+ end=+"+ end='$' contains=processingSpecial,processingSpecError,@Spell

" TODO: highlight char literal longer than one as error
syn region  processingCharacter	start="'" end="'" end="$" contains=processingSpecial,processingSpecError

syn keyword processingTodo	TODO FIXME XXX contained

syn region  processingComment	start="/\*" end="\*/" contains=processingTodo,@Spell
syn region  processingCommentL	start="//" end="$" contains=processingTodo,@Spell

syn sync ccomment processingComment

syn match   processingNumber	display "\<\d\+[lL]\=\>"
syn match   processingNumber	display "\<0x\x\+[lL]\=\>"
syn match   processingOctal	display "\<0\o\+[lL]\=\>" contains=processingOctalZero
syn match   processingOctalZero	display contained "\<0"
syn match   processingColor	display "#\x\{6}[lL]\=\>"
" float without . or exponent
syn match   processingFloat	display "\<\d\+[fF]\>"
" no \> because it might end in a .
syn match   processingFloat	display "\<\d\+\.\d*\([eE][-+]\=\d\+\)\=[fF]\="
" float starting with .
syn match   processingFloat	display "\.\d\+\([eE][-+]\=\d\+\)\=[fF]\=\>"
" float with explonent
syn match   processingFloat	display "\<\d\+[eE][-+]\=\d\+"

" prevent highlighting of predefined function names after a dot
syn region  processingEmpty	start="\.\ze\K" end="\>"

hi link processingKeyword	Keyword
hi link processingRepeat	Repeat
hi link processingConditional	Conditional
hi link processingControlFlow	Keyword
hi link processingException	Exception
hi link processingLabel		Label
hi link processingFunction	Function
hi link processingOperator	Operator
hi link processingType		Type
hi link processingStorageClass	StorageClass
hi link processingConstant 	Constant
hi link processingVariable	Constant
hi link processingBoolean	Boolean
hi link processingNumber	Number
hi link processingOctal		Number
hi link processingOctalZero	PreProc
hi link processingColor		Number
hi link processingFloat		Float
hi link processingString	String
hi link processingCharacter	Character
hi link processingSpecial	SpecialChar
hi link processingSpecError	Error
hi link processingComment	Comment
hi link processingCommentL	Comment
hi link processingTodo		Todo

let b:current_syntax = "processing"

" vim: ts=8
