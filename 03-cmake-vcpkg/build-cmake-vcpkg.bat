SET VCPKG_INSTALL_DIR=D:\dev\vcpkg
SET PROJECT_DIR=.
SET BUILD_DIR=./build
SET PATH=C:\Program Files\CMake\bin;%PATH%

REM call %VCPKG_INSTALL_DIR%/vcpkg install --x-manifest-root="%PROJECT_DIR%" --x-install-root="%BUILD_DIR%"

rmdir build /s /q
mkdir build

cmake -S . -B ./build -G "Visual Studio 15 2017 Win64" -DCMAKE_BUILD_TYPE=Debug,Release -DWIN32_USE_MP=ON -DCMAKE_INSTALL_PREFIX=%BUILD_DIR%/bin -DCMAKE_TOOLCHAIN_FILE=%VCPKG_INSTALL_DIR%\scripts\buildsystems\vcpkg.cmake