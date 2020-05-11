# Defined in - @ line 1
function cpic --description 'alias cpic'
	grim -g (slurp -p) -t ppm - | convert - -format '%[pixel:p{0,0}]' txt:-;
end
