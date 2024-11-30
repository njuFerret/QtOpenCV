QT       += core gui

greaterThan(QT_MAJOR_VERSION, 4) {
    QT += widgets
    CONFIG += C++11
} else {
    QMAKE_CXXFLAGS += -std=c++0x
}

TARGET = simple
CONFIG   += console
CONFIG   -= app_bundle

TEMPLATE = app

SOURCES += main.cpp

CONFIG *= opencv
WARNING_CONFIG += MSG_LIST_OFF
OPENCV_CONFIG += OCV_LIB_COMMON

include(../shared/shared.pri)

target.path = $${PWD}/../bin
INSTALLS += target
