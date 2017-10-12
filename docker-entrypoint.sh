#!/bin/sh -e

# Generating final *.tf files when they are *.tf.m4
for m4file in *.tf.m4; do
    
    # If not a file just exit the loop
    [ -f "${m4file}" ] || break
    
    # Process *.tf.m4 to *.tf
    m4 "./${m4file}" > "./${m4file//.tf.m4/.tf}"
done

# Main
exec /bin/terraform "$@"
