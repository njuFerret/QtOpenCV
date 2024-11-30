
include(../shared/shared.pri)

greaterThan(QT_MAJOR_VERSION, 4) {
    QT += widgets
    CONFIG += C++17
} else {
    QMAKE_CXXFLAGS += -std=c++0x
}

TARGET = imageprocess
TEMPLATE = app

SOURCES += main.cpp \
        mainwindow.cpp \
    recentfiles.cpp \
    convert.cpp

HEADERS  += mainwindow.h \
    recentfiles.h \
    convert.h

FORMS    += mainwindow.ui
CONFIG *= opencv
OPENCV_CONFIG += OCV_LIB_COMMON
WARNING_CONFIG += MSG_LIST_OFF

target.path = $${PWD}/../bin
INSTALLS += target
