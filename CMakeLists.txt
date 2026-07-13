cmake_minimum_required(VERSION 3.16)

project(app_fitness VERSION 0.1 LANGUAGES CXX)

set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(Qt6 REQUIRED COMPONENTS Quick)

qt_standard_project_setup(REQUIRES 6.10)

qt_add_executable(appapp_fitness
    src/main.cpp
)

# 1. Находим все файлы в папке images (svg, png, jpg)
file(GLOB_RECURSE FITNESS_IMAGES
    "qml/images/*.svg"
    "qml/images/*.png"
    "qml/images/*.jpg"
)

qt_add_qml_module(appapp_fitness
    URI app_fitness
    QML_FILES
    qml/Main.qml
    QML_FILES qml/components/ShadowText.qml
    QML_FILES qml/components/Input.qml
    QML_FILES qml/components/ShButton.qml
    QML_FILES qml/components/ArrowButton.qml
    QML_FILES qml/screens/auth/Register.qml
    QML_FILES qml/screens/auth/Recovery.qml
    QML_FILES qml/screens/auth/Auth.qml
    QML_FILES qml/screens/app/App.qml
    RESOURCES
            qml/images/arrow.svg
            qml/images/settings.png
            QML_FILES qml/components/SettingButton.qml

)

target_compile_definitions(appapp_fitness PRIVATE QT_QML_DEBUG)

# Qt for iOS sets MACOSX_BUNDLE_GUI_IDENTIFIER automatically since Qt 6.1.
# If you are developing for iOS or macOS you should consider setting an
# explicit, fixed bundle identifier manually though.
set_target_properties(appapp_fitness PROPERTIES
#    MACOSX_BUNDLE_GUI_IDENTIFIER com.example.appapp_fitness
    MACOSX_BUNDLE_BUNDLE_VERSION ${PROJECT_VERSION}
    MACOSX_BUNDLE_SHORT_VERSION_STRING ${PROJECT_VERSION_MAJOR}.${PROJECT_VERSION_MINOR}
    MACOSX_BUNDLE TRUE
    WIN32_EXECUTABLE TRUE
)

target_link_libraries(appapp_fitness
    PRIVATE Qt6::Quick
)

install(TARGETS appapp_fitness
    BUNDLE DESTINATION .
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR}
    RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
)

target_compile_definitions(appapp_fitness PRIVATE PROJECT_SOURCE_DIR="${CMAKE_CURRENT_SOURCE_DIR}")





