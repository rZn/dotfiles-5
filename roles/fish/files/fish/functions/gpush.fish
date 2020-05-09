# Defined in - @ line 1
function gpush --description 'Push from ~/googledrive/ to googledrive'
	rclone sync ~/googledrive/ googledrive: ;
end
