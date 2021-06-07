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

CoverBackground {
    CoverPlaceholder {
        anchors.fill: parent
        text: qsTr("Quanto Fa")
        icon.source: "/usr/share/icons/hicolor/86x86/apps/harbour-quantofa.png"
        visible: application.display.length === 0
    }
    Image {
        anchors.fill: parent
        source: "../../pics/graphic-cover-quantofa.png"
        Label {
            anchors {
                top: parent.top
                margins: Theme.paddingLarge
                left: parent.left
                right:parent.right
            }

            height: Theme.fontSizeHuge
            text: application.display.trim()
            color: Theme.highlightColor
            font.pixelSize: Theme.fontSizeHuge
            fontSizeMode: Text.HorizontalFit
            horizontalAlignment: Text.AlignLeft
            verticalAlignment: Text.AlignVCenter
        }
        visible: application.display.length !== 0
    }
}


