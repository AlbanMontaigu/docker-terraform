#!/bin/sh -e

# Getting m4 options if any
M4_OPTS=""
if [[ "${1}" == "--m4-opts" ]]; then
    M4_OPTS="${2}"
    shift 2
fi

# Generating final *.tf files when they are *.tf.m4
for m4file in *.tf.m4; do
    
    # If not a file just exit the loop
    [ -f "${m4file}" ] || break
    
    # Process *.tf.m4 to *.tf
    m4 $(echo $M4_OPTS) "./${m4file}" > "./${m4file//.tf.m4/.tf}"
done

# Main
exec /bin/terraform "$@"
