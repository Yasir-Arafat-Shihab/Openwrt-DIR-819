#!/usr/bin/env bash
cd ${WORKDIR}/Post_build/CryptImage/
pwd

if ! [ -z "${OPENWRT_BIN_FACTORY}" ];then
  echo "Signing Factory firmware, Path: ${OPENWRT_BIN_FACTORY}"
  chmod a+x pack.sh
  ./pack.sh -f "${OPENWRT_BIN_FACTORY}" -o "${OPENWRT_BIN_FACTORY}_signed.bin"
  echo "Firmware Factory successfully signed"
fi

# End
exit 0
