sceneNames=( 'walk-dog_view-GL4' 'walk-dog_view-GL1' 'freesbee-two-persons_view-GL5' 'two-people-walking_view-GL3' 'taking-out-freesbee_view-C1' 'unpacking_view-HC2' 'seating_view-IP5' 'allsitting_view-IP1' 'allsitting_view-MC1' 'suspect-look_view-GL6' 'cart-approaching_view-GL3' 'how-many-up-n-down_view-IP1' 'line-1_view-HC2' 'garden_contour2_bbox_v1' 'garden_hc2_bbox_v1' 'auditorium_hc3_bbox_v1' 'auditorium_hc4_bbox_v1' 'office_cr3_bbox_v1' 'office_cr1_bbox_v1' )
for ((i=0;i<${#sceneNames[@]};i++)) do 
   tar -xf /home/vcla/Sites/vtt/demo/static/data/new/oriFrameFolderZip/${sceneNames[i]}.tar.gz -C /
   rm /home/vcla/Sites/vtt/demo/static/data/new/oriFrameFolder/${sceneNames[i]}/*_orb.txt
   tar -cf /home/vcla/Sites/vtt/demo/static/data/new/oriFrameFolderZip/${sceneNames[i]}.tar.gz /home/vcla/Sites/vtt/demo/static/data/new/oriFrameFolder/${sceneNames[i]}/ 
   rm -r /home/vcla/Sites/vtt/demo/static/data/new/oriFrameFolder/${sceneNames[i]}/ 
done
