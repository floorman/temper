@echo off

set cpp=%~1

echo %1

if not exist build mkdir build

pushd build

if [%cpp%]==[cpp] (
	echo building C++
	cl.exe /EHsc ../examples/example_cpp.cpp ../examples/sample_suite_cpp.cpp /link /OUT:example_cpp_msvc.exe
) else (
	echo building C
	cl.exe /EHsc ../examples/example_basic.c /link /OUT:example_basic_msvc.exe
	cl.exe /EHsc ../examples/example_suite.c ../examples/sample_suite.c /link /OUT:example_suite_msvc.exe
)

popd