#!/bin/sh
pushd .
cd ..
for i in `ls imgui-bindings-*.gem`; do
    echo gem push $i
done
popd
