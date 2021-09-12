#!/usr/bin/env bash
set -x
cd CryptImage/

if ! [ -z "${OPENWRT_BIN_FACTORY}" ];then
    set -e
    echo "Signing Factory firmware, Path: ${OPENWRT_BIN_FACTORY}"
    ./pack.sh -f "${OPENWRT_BIN_FACTORY}" -o "${OPENWRT_BIN_FACTORY}_signed.bin"
    echo "Firmware Factory successfully signed"
fi

# End
exit 0