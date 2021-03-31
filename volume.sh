VOL=`pamixer --get-volume`
MUTED=`pamixer --get-mute`

if $MUTED; then
  echo `progressbar.sh 15 _ . $VOL `
else
  echo `progressbar.sh 15 \* . $VOL `
fi
