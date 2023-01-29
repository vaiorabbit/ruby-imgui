pushd .
cd ../imgui_dll
rm -r -f build
bash ./build_imgui_macos.sh
popd

pushd .
cd ../imnodes_dll
rm -r -f build
bash ./build_imnodes_macos.sh
popd
