# For operating system security reasons, PIE is required on Android 5.0 and newer, and is likely good practice on all systems.
set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -fPIC")
set(CMAKE_EXE_LINKER_FLAGS "${CMAKE_EXE_LINKER_FLAGS} -fPIE -pie")
# set binary output folder to jniLibs folder, Android Studio 2.3.3 gradle will package into APK
set(EXECUTABLE_OUTPUT_PATH      "${PROJECT_SOURCE_DIR}/../jniLibs/${ANDROID_ABI}")

# rewrite target variable because Android APK requires it to masquerade as a dynamic library
option(NAME_EXECUTABLE_AS_DYNLIB "Name generated binary executables as Dynamic Libraries." ON)
