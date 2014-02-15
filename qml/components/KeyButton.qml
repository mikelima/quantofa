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
import Sailfish.Silica 1.0

BackgroundItem {
    id: root
    property color baseColor: "transparent"
    property color labelColor: Theme.primaryColor
    property alias text: label.text
    height: Theme.itemSizeSmall
    contentHeight: Theme.itemSizeSmall
    onPressed: {
        if (clickEffect)
            clickEffect.play()
    }
    onReleased: {
        if (clickEffect)
            clickEffect.play()
    }
    Rectangle {
        anchors.fill:parent
        color: Theme.rgba(baseColor, 0.3)
       visible: !Qt.colorEqual(baseColor, "transparent")
    }
    Label {
        id: label
        anchors.fill: parent
        color: root.pressed ? Theme.highlightColor : labelColor
        font.pixelSize: Theme.fontSizeExtraLarge
        font.family: Theme.fontFamilyHeading
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        textFormat: Text.RichText
    }
}
