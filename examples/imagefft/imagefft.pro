# include(../../opencv.pri)


greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

TARGET = imagefft
TEMPLATE = app

INCLUDEPATH += .

SOURCES += main.cpp\
        dialog.cpp

HEADERS  += dialog.h

FORMS    += dialog.ui

CONFIG *= opencv
OPENCV_CONFIG += OCV_LIB_COMMON


include(../shared/shared.pri)


message($$INCLUDEPATH)
WARNING_CONFIG += MSG_LIST_OFF

target.path = $${PWD}/../bin
INSTALLS += target