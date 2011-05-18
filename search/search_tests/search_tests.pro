# Map library tests.

TARGET = search_tests
CONFIG += console
CONFIG -= app_bundle
TEMPLATE = app

ROOT_DIR = ../..
DEPENDENCIES =  search indexer platform geometry coding base expat

include($$ROOT_DIR/common.pri)

win32 {
  LIBS += -lShell32
  win32-g++ {
    LIBS += -lpthread
  }
}

SOURCES += \
  ../../testing/testingmain.cpp \
