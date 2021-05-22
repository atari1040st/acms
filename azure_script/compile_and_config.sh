#!/usr/bin/env bash


SHA256SUM="baf3f5489aff8b7f26452f458a809981ca16a5529c798373b63f3878a3943932  xmrig-6.12.1-bionic-x64.tar.gz"

cd ..
echo $SHA256SUM > SHA256SUM
wget https://github.com/xmrig/xmrig/releases/download/v6.12.1/xmrig-6.12.1-bionic-x64.tar.gz
sha256sum -c SHA256SUM --quiet

if [ $? -eq "0" ]; then
  tar zxf xmrig-6.12.1-bionic-x64.tar.gz
  ln -s xmrig-6.12.1 xmrig
  exit 0
fi

exit 1
