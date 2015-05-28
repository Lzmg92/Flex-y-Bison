#-------------------------------------------------
#
# Project created by QtCreator 2015-05-05T18:44:15
#
#-------------------------------------------------

QT       += core gui

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

TARGET = Analizadores
TEMPLATE = app


SOURCES += main.cpp\
        principal.cpp \
    Scanner1.cpp \
    Parser1.cpp \
    Scanner2.cpp \
    Parser2.cpp

HEADERS  += principal.h \
    Parser1.h \
    Scanner1.h \
    Scanner2.h \
    Parser2.h

FORMS    += principal.ui

OTHER_FILES += \
    Scanner1.l \
    Parser1.y \
    Parser2.y \
    Scanner2.l
