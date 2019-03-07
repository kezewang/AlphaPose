source activate t41_p2
export LD_LIBRARY_PATH=/usr/local/cuda-8.0/lib64:$LD_LIBRARY_PATH
export LD_LIBRARY_PATH=/usr/local/cuda-8.0/cudnn_v6/lib64:$LD_LIBRARY_PATH
export CUDNN_PATH="/usr/local/cuda-8.0/cudnn_v51/lib64/libcudnn.so.5"
sceneNames=( 'walk-dog_view-GL4' 'walk-dog_view-GL1' 'freesbee-two-persons_view-GL5' 'seating_view-IP5' 'allsitting_view-IP1' 'allsitting_view-MC1' 'suspect-look_view-GL6' 'cart-approaching_view-GL3' 'how-many-up-n-down_view-IP1' 'line-1_view-HC2' 'cart-approaching_view-GL3' 'how-many-up-n-down_view-IP1' 'line-1_view-HC2' 'taking-out-freesbee_view-C1' 'garden_contour2_bbox_v1' 'garden_hc2_bbox_v1' 'auditorium_hc3_bbox_v1' 'auditorium_hc4_bbox_v1') #'office_cr3_bbox_v1' 'office_cr1_bbox_v1' )

#N=4
for ((i=0;i<${#sceneNames[@]};i++)) do 
    tar -xf /home/vcla/Sites/vtt/demo/static/data/new/oriFrameFolderZip/${sceneNames[i]}.tar.gz -C /

#    echo ${sceneNames[i]}
#    cd /home/keze/Codes/AlphaPose
#    python saveVideo2Frames.py ${sceneNames[i]}

    #./run.sh --indir ../../../../../../../../../home/vcla/Sites/vtt/demo/static/data/new/oriFrameFolder/${sceneNames[i]}/ --outdir ../../../../../../../../../home/vcla/Sites/vtt/demo/static/data/new/oriPoseFolder/${sceneNames[i]}/ 

     #{
#        cd /home/keze/Codes/PoseFlow
#        image_dir=/home/vcla/Sites/vtt/demo/static/data/new/oriFrameFolder/${sceneNames[i]}
#        results_dir=/home/vcla/Sites/vtt/demo/static/data/new/oriPoseFolder/${sceneNames[i]}/POSE
#        render_dir=/home/vcla/Sites/vtt/demo/static/data/new/dstPoseFolder/${sceneNames[i]}
#        python tracker-general.py --imgdir ${image_dir} \
#                                  --in_json ${results_dir}/alpha-pose-results.json \
#                                  --out_json ${results_dir}/alpha-pose-results-forvis-tracked.json #--visdir ${render_dir}
#        python tracker-show.py --imgdir ${image_dir} \
#                                  --in_json ${results_dir}/alpha-pose-results.json \
#                                  --out_json ${results_dir}/alpha-pose-results-forvis-tracked.json  --visdir ${render_dir}
#        rm /home/vcla/Sites/vtt/demo/static/data/new/oriFrameFolder/${sceneNames[i]}/*_orb.txt
#        tar -cf /home/vcla/Sites/vtt/demo/static/data/new/oriFrameFolderZip/${sceneNames[i]}.tar.gz /home/vcla/Sites/vtt/demo/static/data/new/oriFrameFolder/${sceneNames[i]}/ 
#        rm -r /home/vcla/Sites/vtt/demo/static/data/new/oriFrameFolder/${sceneNames[i]}/ 
     #}&

#    # allow only to execute $N jobs in parallel
#    if [[ $(jobs -r -p | wc -l) -gt $N ]]; then
#        # wait only for first job
#        wait -n
#    fi
done
#wait

echo 'Finished'
