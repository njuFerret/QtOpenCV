#include(../../opencv.pri)


QT       += core gui
greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

TARGET = colorchannel
TEMPLATE = app

INCLUDEPATH += .
SOURCES += main.cpp\
        mainwindow.cpp

HEADERS  += mainwindow.h

FORMS    += mainwindow.ui

CONFIG *= opencv
OPENCV_CONFIG += OCV_LIB_COMMON

include(../shared/shared.pri)
WARNING_CONFIG += MSG_LIST_OFF


target.path = $${PWD}/../bin
INSTALLS += target