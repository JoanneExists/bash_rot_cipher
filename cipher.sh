#! /bin/bash
FILE=""
SHIFT_FACTOR=0
LOWER="abcdefghijklmnopqrstuvwxyz"
UPPER="${LOWER^^}"
while getopts ":f:s:" FLAG; do
    case $FLAG in
        f)
            FILE="${OPTARG}" ;;
        s)
            SHIFT_FACTOR="${OPTARG}" ;;
    esac
done
# echo "${LOWER:${SHIFT_FACTOR}:26}${LOWER:0:SHIFT_FACTOR} and ${UPPER:${SHIFT_FACTOR}:26}${UPPER:0:${SHIFT_FACTOR}}"
cat ${FILE} | tr "${LOWER}" "${LOWER:${SHIFT_FACTOR}:26}${LOWER:0:SHIFT_FACTOR}" | tr "${UPPER}" "${UPPER:${SHIFT_FACTOR}:26}${UPPER:0:${SHIFT_FACTOR}}"