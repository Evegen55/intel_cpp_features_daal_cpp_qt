TEMPLATE = app
CONFIG += console c++17
CONFIG -= app_bundle
CONFIG -= qt

SOURCES += \
        main.cpp

unix:INCLUDEPATH += /usr/include \
                    /opt/intel/compilers_and_libraries_2018.3.222/linux/daal/include #headers

unix:LIBS += /opt/intel/compilers_and_libraries_2018.3.222/linux/daal/lib/intel64_lin/libdaal_core.a \ #static linking
             /opt/intel/compilers_and_libraries_2018.3.222/linux/daal/lib/intel64_lin/libdaal_thread.a \ #static linking
             -ltbb \ #intel lib
            -ltbbmalloc \ #intel lib
            -lpthread \
            -ldl
