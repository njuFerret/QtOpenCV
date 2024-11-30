
QT = core gui

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

TEMPLATE = app

INCLUDEPATH += .
SOURCES += main.cpp\
        dialog.cpp\
        cameradevice.cpp

HEADERS  += dialog.h \
            cameradevice.h

FORMS    += dialog.ui

CONFIG *= opencv
OPENCV_CONFIG += OCV_LIB_COMMON

include(../shared/shared.pri)
WARNING_CONFIG += MSG_LIST_OFF

target.path = $${PWD}/../bin
INSTALLS += target