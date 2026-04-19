@echo off
pushd ..\gen
set RUBY_EXE=%1
if "%RUBY_EXE%"=="" (
    set RUBY_EXE=ruby
)

set OUTPUT_PATH=..\lib

%RUBY_EXE% generate_bindings.rb

popd
