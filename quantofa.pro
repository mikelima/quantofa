# The name of your app.
# NOTICE: name defined in TARGET has a corresponding QML filename.
#         If name defined in TARGET is changed, following needs to be
#         done to match new name:
#         - corresponding QML filename must be changed
#         - desktop icon filename must be changed
#         - desktop filename must be changed
#         - icon definition filename in desktop file must be changed

TARGET = harbour-quantofa

CONFIG += sailfishapp

SOURCES += src/quantofa.cpp

OTHER_FILES += qml/${TARGET}.qml \
    qml/cover/CoverPage.qml \
    qml/pages/CalculatorPage.qml \
    qml/pages/hp35.js \
    qml/pages/AboutPage.qml \
    rpm/${TARGET}.spec \
    rpm/${TARGET}.yaml \
    ${TARGET}.desktop \

