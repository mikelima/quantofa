# The name of your app.

# Set version and name to some reasonable default.
# The yaml file will override these.
isEmpty(VERSION) {
   VERSION = "x.y"
}

isEmpty(TARGET) {
    TARGET = "quantofa"
}

CONFIG += sailfishapp

SOURCES += src/quantofa.cpp

OTHER_FILES += qml/quantofa.qml \
    qml/cover/CoverPage.qml \
    qml/components/KeyButton.qml \
    qml/pages/CalculatorPage.qml \
    qml/pages/hp35.js \
    qml/pages/AboutPage.qml \
    rpm/${TARGET}.spec \
    rpm/${TARGET}.yaml \
    ${TARGET}.desktop \
    pics/graphics-cover-quantofa.png \
    pics/graphics-cover-quantofa.svg

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

appicons.files = appicons/*
appicons.path = /usr/share/icons/hicolor
INSTALLS += appicons

VERSION_STRING = '\\"$${VERSION}\\"'
DEFINES += VERSION_STRING=\"$${VERSION_STRING}\"

APPLICATION_NAME = '\\"$${NAME}\\"'
DEFINES += APPLICATION_NAME=\"$${APPLICATION_NAME}\"

DISTFILES += \
    rpm/harbour-quantofa.yaml
