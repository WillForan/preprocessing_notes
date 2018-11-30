cd /Volumes/Zeus/preproc/MMY2_WM/MHTask_voxmean_ica
grep [0-9] */*run*/motion_info/fd.txt |sed 's/ //g'| datamash -t: -f max 2

