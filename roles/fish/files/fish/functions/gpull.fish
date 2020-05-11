# Defined in - @ line 1
function gpull --description 'Pull from googledrive to ~/googledrive/'
	rclone sync googledrive: ~/googledrive/;
end
