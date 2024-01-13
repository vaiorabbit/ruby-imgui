#!/bin/sh
pushd .
cd ..
gem build imgui-bindings.gemspec
gem build imgui-bindings.gemspec --platform arm64-darwin
gem build imgui-bindings.gemspec --platform x86_64-darwin
gem build imgui-bindings.gemspec --platform aarch64-linux
gem build imgui-bindings.gemspec --platform x86_64-linux
gem build imgui-bindings.gemspec --platform x64-mingw
popd
