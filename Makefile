PWD=$(shell pwd)
AAP_JUCE_DIR=$(PWD)/external/aap-juce

APP_NAME=Aelapse

APP_BUILD_DIR=$(PWD)
APP_SRC_DIR=$(PWD)/external/aelapse

# Cropped from external/aelapse/images/screenshot.png (top-left 585x585:
# the title bar and the Delay panel).
APP_ICON=$(PWD)/app-icon.png
# Upstream fetches JUCE via CMake FetchContent; aap-juce-support.patch
# rewrites that to CPMAddPackage, which applies all the JUCE patches as part
# of the population (into CPM_SOURCE_CACHE, passed by app/build.gradle).
BUILD_USES_FETCHCONTENT=1

# For metadata updates, relative to build-desktop
APP_SHARED_CODE_LIBS="$(APP_NAME)_artefacts/lib$(APP_NAME)_SharedCode.a"

PATCH_FILE=$(PWD)/aap-juce-support.patch
PATCH_DEPTH=1

include $(AAP_JUCE_DIR)/Makefile.cmake-common
