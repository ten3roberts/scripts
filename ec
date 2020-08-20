#/bin/sh

# Check for existing frame
emacsclient -n -e "(if (> (length (frame-list)) 1) 't)" | grep -q t
if [ "$?" = "1" ]; then
   # Create a new frame
    emacsclient -c -n -a "" "$@"
else
    # Connect to existing frame
    emacsclient -n -a "" "$@"
fi
