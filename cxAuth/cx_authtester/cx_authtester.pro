TEMPLATE = app
#CONFIG += static
CONFIG += console
CONFIG -= app_bundle
CONFIG -= qt

isEmpty(PREFIX) {
    PREFIX = /usr/local
}
# includes dir
LIBS += -L$$PREFIX/lib

QMAKE_INCDIR += $$PREFIX/include
INCLUDEPATH += $$PREFIX/include

QMAKE_CXX += -Wno-write-strings -Wno-unused-parameter -Wno-unused-function -O3 -std=c++11 -Wunused -Wno-unused-result

DESTDIR=bin #Target file directory
OBJECTS_DIR=obj #Intermediate object files directory

# INSTALLATION:
target.path = $$PREFIX/bin
INSTALLS += target

################################################
LIBS += -lcx_auth_sqlite3 -lcx_auth_fs -lcx_auth
LIBS += -lsqlite3
LIBS += -lcrypto
LIBS += -ljsoncpp
LIBS += -lpthread -lcx_thr_mutex -lboost_system -lboost_filesystem

TARGET = cx_authtester

SOURCES += main.cpp
