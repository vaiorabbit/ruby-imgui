pushd .
cd ../imgui_dll
rm -r -f build
bash ./build_imgui_linux_cross.sh
popd

pushd .
cd ../imnodes_dll
rm -r -f build
bash ./build_imnodes_linux_cross.sh
popd
