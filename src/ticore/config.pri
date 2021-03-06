# Auto-generated by IDE. Any changes made by user will be lost!
BASEDIR =  $$quote($$_PRO_FILE_PWD_)

device {
    CONFIG(debug, debug|release) {
        INCLUDEPATH +=  $$quote($$BASEDIR/../ticore/include) \
                 $$quote(${QNX_TARGET}/../target-override/usr/include) \
                 $$quote(${QNX_TARGET}/usr/include/bb/data) \
                 $$quote(${QNX_TARGET}/usr/include/freetype2)

        DEPENDPATH +=  $$quote($$BASEDIR/../ticore/include) \
                 $$quote(${QNX_TARGET}/../target-override/usr/include) \
                 $$quote(${QNX_TARGET}/usr/include/bb/data) \
                 $$quote(${QNX_TARGET}/usr/include/freetype2)

        HEADERS +=  $$quote($$BASEDIR/include/TiCore.h) \
                 $$quote($$BASEDIR/include/Ti_Constants.h) \
                 $$quote($$BASEDIR/include/Ti_Event.h) \
                 $$quote($$BASEDIR/include/Ti_EventParameters.h) \
                 $$quote($$BASEDIR/include/Ti_Helper.h) \
                 $$quote($$BASEDIR/include/Ti_Module.h) \
                 $$quote($$BASEDIR/include/Ti_Property.h) \
                 $$quote($$BASEDIR/include/Ti_Proxy.h) \
                 $$quote($$BASEDIR/include/Ti_SceneManager.h) \
                 $$quote($$BASEDIR/include/Ti_Timer.h) \
                 $$quote($$BASEDIR/include/Ti_Value.h)
    }

    CONFIG(release, debug|release) {
        INCLUDEPATH +=  $$quote($$BASEDIR/../ticore/include) \
                 $$quote(${QNX_TARGET}/../target-override/usr/include) \
                 $$quote(${QNX_TARGET}/usr/include/bb/data) \
                 $$quote(${QNX_TARGET}/usr/include/freetype2)

        DEPENDPATH +=  $$quote($$BASEDIR/../ticore/include) \
                 $$quote(${QNX_TARGET}/../target-override/usr/include) \
                 $$quote(${QNX_TARGET}/usr/include/bb/data) \
                 $$quote(${QNX_TARGET}/usr/include/freetype2)

        HEADERS +=  $$quote($$BASEDIR/include/TiCore.h) \
                 $$quote($$BASEDIR/include/Ti_Constants.h) \
                 $$quote($$BASEDIR/include/Ti_Event.h) \
                 $$quote($$BASEDIR/include/Ti_EventParameters.h) \
                 $$quote($$BASEDIR/include/Ti_Helper.h) \
                 $$quote($$BASEDIR/include/Ti_Module.h) \
                 $$quote($$BASEDIR/include/Ti_Property.h) \
                 $$quote($$BASEDIR/include/Ti_Proxy.h) \
                 $$quote($$BASEDIR/include/Ti_SceneManager.h) \
                 $$quote($$BASEDIR/include/Ti_Timer.h) \
                 $$quote($$BASEDIR/include/Ti_Value.h)
    }
}

simulator {
    CONFIG(debug, debug|release) {
        INCLUDEPATH +=  $$quote($$BASEDIR/../ticore/include) \
                 $$quote(${QNX_TARGET}/usr/include/qt4/cpp/c) \
                 $$quote(${QNX_TARGET}/usr/include/qt4) \
                 $$quote(${QNX_TARGET}/usr/include/qt4/cpp/embedded) \
                 $$quote(${QNX_TARGET}/usr/include/qt4/cpp) \
                 $$quote(${QNX_TARGET}/usr/include/qt4/) \
                 $$quote(${QNX_TARGET}/../target-override/usr/include) \
                 $$quote(${QNX_TARGET}/usr/include/bb/data) \
                 $$quote({QNX_TARGET}/usr/include/bb/data) \
                 $$quote(${QNX_TARGET}/usr/include/qt4/QtCore)

        DEPENDPATH +=  $$quote($$BASEDIR/../ticore/include) \
                 $$quote(${QNX_TARGET}/usr/include/qt4/cpp/c) \
                 $$quote(${QNX_TARGET}/usr/include/qt4) \
                 $$quote(${QNX_TARGET}/usr/include/qt4/cpp/embedded) \
                 $$quote(${QNX_TARGET}/usr/include/qt4/cpp) \
                 $$quote(${QNX_TARGET}/usr/include/qt4/) \
                 $$quote(${QNX_TARGET}/../target-override/usr/include) \
                 $$quote(${QNX_TARGET}/usr/include/bb/data) \
                 $$quote({QNX_TARGET}/usr/include/bb/data) \
                 $$quote(${QNX_TARGET}/usr/include/qt4/QtCore)

        HEADERS +=  $$quote($$BASEDIR/include/TiCore.h) \
                 $$quote($$BASEDIR/include/Ti_Constants.h) \
                 $$quote($$BASEDIR/include/Ti_Event.h) \
                 $$quote($$BASEDIR/include/Ti_EventParameters.h) \
                 $$quote($$BASEDIR/include/Ti_Helper.h) \
                 $$quote($$BASEDIR/include/Ti_Module.h) \
                 $$quote($$BASEDIR/include/Ti_Property.h) \
                 $$quote($$BASEDIR/include/Ti_Proxy.h) \
                 $$quote($$BASEDIR/include/Ti_SceneManager.h) \
                 $$quote($$BASEDIR/include/Ti_Timer.h) \
                 $$quote($$BASEDIR/include/Ti_Value.h)
    }
}

INCLUDEPATH +=  $$quote($$BASEDIR/include)

lupdate_inclusion {
    SOURCES +=  $$quote($$BASEDIR/../include/*.c) \
             $$quote($$BASEDIR/../include/*.c++) \
             $$quote($$BASEDIR/../include/*.cc) \
             $$quote($$BASEDIR/../include/*.cpp) \
             $$quote($$BASEDIR/../include/*.cxx) \
             $$quote($$BASEDIR/../assets/*.qml) \
             $$quote($$BASEDIR/../assets/*.js) \
             $$quote($$BASEDIR/../assets/*.qs)

    HEADERS +=  $$quote($$BASEDIR/../include/*.h) \
             $$quote($$BASEDIR/../include/*.h++) \
             $$quote($$BASEDIR/../include/*.hh) \
             $$quote($$BASEDIR/../include/*.hpp) \
             $$quote($$BASEDIR/../include/*.hxx)
}

TRANSLATIONS =  $$quote($${TARGET}.ts)
