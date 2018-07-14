TEMPLATE = app
CONFIG += console c++17
CONFIG -= app_bundle
CONFIG -= qt

SOURCES += \
        main.cpp

unix:INCLUDEPATH += /usr/include \
                    /opt/intel/compilers_and_libraries_2018.3.222/linux/daal/include

unix:LIBS += /opt/intel/compilers_and_libraries_2018.3.222/linux/daal/lib/intel64_lin/libdaal_core.a \
             /opt/intel/compilers_and_libraries_2018.3.222/linux/daal/lib/intel64_lin/libdaal_thread.a \
             -ltbb -lpthread -ldl -ltbbmalloc
