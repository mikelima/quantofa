/*
    Copyright (C) 2014 Luciano Montanaro <mikelima@cirulla.net>

    This program is free software; you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation; either version 2 of the License, or
    (at your option) any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
    General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with this program; see the file COPYING.  If not, write to
    the Free Software Foundation, Inc., 51 Franklin Street, Fifth Floor,
    Boston, MA 02110-1301, USA.
*/

import QtQuick 2.0
import QtFeedback 5.0
import Sailfish.Silica 1.0

Rectangle {
    id: root
    property alias pressed: mouseArea.pressed
    property color baseColor: "transparent"
    property color labelColor: Theme.primaryColor
    property alias text: label.text
    signal clicked()

    height: Theme.itemSizeSmall
    color: pressed ? Qt.darker(Theme.secondaryHighlightColor) : baseColor
    MouseArea {
        id: mouseArea
        anchors.fill: parent
        onPressed: clickEffect.play()
        onReleased: clickEffect.play()
        onClicked: root.onClicked()
    }
    Label {
        id: label
        anchors.fill: parent
        color: root.pressed ? Theme.highlightColor : labelColor
        font.pixelSize: Theme.fontSizeLarge
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        textFormat: Text.RichText
    }
    Text {
    }
    ThemeEffect {
        id: clickEffect
        effect: ThemeEffect.PressWeak
    }
    Component.onCompleted: mouseArea.clicked.connect(clicked)
}
/*
Button {
    id: button
    onPressed: clickEffect.play()
    onReleased: clickEffect.play()
    ThemeEffect {
        id: clickEffect
        effect: ThemeEffect.PressWeak
    }
}
*/
