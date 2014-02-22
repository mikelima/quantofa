# The name of your app.

# Set version and name to some reasonable default.
# The yaml file will override these.
isEmpty(VERSION) {
   VERSION = "x.y"
}

isEmpty(TARGET) {
    TARGET = "quantofa"
}

TARGET = quantofa

CONFIG += sailfishapp

SOURCES += src/quantofa.cpp

QMLSOURCES +=  qml/quantofa.qml \
    qml/cover/CoverPage.qml \
    qml/pages/AboutPage.qml \
    qml/pages/CalculatorPage.qml \
    qml/pages/hp35.js

OTHER_FILES += qml/quantofa.qml \
    qml/cover/CoverPage.qml \
    qml/components/KeyButton.qml \
    qml/pages/CalculatorPage.qml \
    qml/pages/hp35.js \
    qml/pages/AboutPage.qml \
    pics/graphics-cover-quantofa.png \
    pics/graphics-cover-quantofa.svg \
    rpm/quantofa.spec \
    rpm/quantofa.yaml \
    quantofa.desktop \

lupdate_only {
    SOURCES += $$QMLSOURCES
}

CODECFORTR = UTF-8
TRANSLATIONS = i18n/it.ts

i18n.files = $$replace(TRANSLATIONS, .ts, .qm)
i18n.path = /usr/share/$$TARGET/i18n

INSTALLS += i18n

pics.files = pics/*.png
pics.path = /usr/share/$$TARGET/pics

INSTALLS += pics

VERSION_STRING = '\\"$${VERSION}\\"'
DEFINES += VERSION_STRING=\"$${VERSION_STRING}\"

APPLICATION_NAME = '\\"$${NAME}\\"'
DEFINES += APPLICATION_NAME=\"$${APPLICATION_NAME}\"
