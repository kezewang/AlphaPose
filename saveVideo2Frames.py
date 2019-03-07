import os
import cv2
import sys

bboxName = sys.argv[1]

videoRootFolder = '/home/vcla/Sites/vtt/demo/static/video/'
dstfolder = '/home/vcla/Sites/vtt/demo/static/data/new/oriFrameFolder'

videoName = bboxName + '.mp4'
if not os.path.exists( os.path.join( dstfolder, bboxName ) ):
    os.mkdir( os.path.join( dstfolder, bboxName ) )
else:
    print('Video2Frame has already been performed!')

cap = cv2.VideoCapture(videoRootFolder + videoName)
print(videoRootFolder + videoName)
frameId = 0
while(cap.isOpened()):
    ret, frame = cap.read()
    if ret is not True:
        break

    if frame.data is None:
        print( os.path.join( dstfolder, bboxName, str( frameId ) + '.png' ) )
    else:
        cv2.imwrite( os.path.join( dstfolder, bboxName, str( frameId ) + '.png'  ), frame )
    frameId += 1
cap.release()
print('Saving frames is finished!')
