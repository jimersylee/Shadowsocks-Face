QT += core gui network

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

DEFINES += QT_DEPRECATED_WARNINGS

CONFIG += c++11
PRECOMPILED_HEADER = src/common.hpp

SOURCES += \
    src/data/configmanager.cpp \
    src/entity/config.cpp \
    src/ss-qtw/global.cpp \
    src/ss-qtw/main.cpp \
    src/sspm/processmanager.cpp \
    src/third_party/qr/qrcode.c \
    src/tools/latencytester.cpp \
    src/tools/singleinstance.cpp \
    src/ui/editdialog.cpp \
    src/ui/mainwindow.cpp \
    src/ui/sharedialog.cpp

HEADERS += \
    src/data/configmanager.h \
    src/entity/config.h \
    src/ss-qtw/global.h \
    src/ss-qtw/version.h \
    src/sspm/processmanager.h \
    src/third_party/qr/qrcode.h \
    src/tools/qreasy.h \
    src/tools/latencytester.h \
    src/tools/singleinstance.h \
    src/ui/editdialog.h \
    src/ui/imagewidget.h \
    src/ui/mainwindow.h \
    src/ui/sharedialog.h

INCLUDEPATH += \
    src/

FORMS += \
    src/ui/mainwindow.ui \
    src/ui/editdialog.ui \
    src/ui/sharedialog.ui

TRANSLATIONS += \
    res/translations/zh_CN.ts

RESOURCES += \
    res/res.qrc
