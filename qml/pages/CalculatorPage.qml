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
import "hp35.js" as Hp35


Page {
    id: calculator
    property string display

    SilicaFlickable {
        anchors.fill: parent
        contentHeight: displayArea.height + keyboard.height

        PullDownMenu {
            MenuItem {
                text: qsTr("About Quanto Fa")
                onClicked: pageStack.push(Qt.resolvedUrl("AboutPage.qml"))
            }
        }

        Column {
            id: displayArea

            width: calculator.width
            spacing: Theme.paddingMedium
            PageHeader {
                title: qsTr("Quanto Fa")
            }
            Row {
                width: calculator.width - 4 * Theme.paddingLarge
                anchors.horizontalCenter: parent.horizontalCenter
                Label {
                    id: screen
                    text: calculator.display
                    font.pixelSize: Theme.fontSizeHuge
                    width: parent.width
                    Behavior on text {
                        SequentialAnimation {
                            PropertyAnimation {
                                target: screen
                                property: "opacity"
                                to: 0.3
                                duration: 150
                            }
                            PropertyAnimation {
                                target: screen
                                property: "opacity"
                                to: 1.0
                                duration: 150
                            }
                        }
                    }
                }
            }
        }
        Item {
            id: keyboard
            width: calculator.width
            height: keys.height
            anchors.top: displayArea.bottom
            anchors.topMargin: Theme.paddingLarge
            Image {
                id: gradient
                width: keyboard.width
                //height: Theme.itemSizeLarge
                anchors.top: keyboard.top
                source: "image://theme/graphic-gradient-edge"
            }
            Column {
                id: keys
                anchors.top: gradient.top
                anchors.topMargin: Theme.paddingLarge
                spacing: Theme.paddingSmall
                Row {
                    width: calculator.width
                    // Row 1
                    Button {
                        text: "x^y"
                        onClicked: Hp35.key_pow()
                        width:parent.width / 5
                    }
                    Button {
                        text: "LOG"
                        onClicked: Hp35.key_log()
                        width:parent.width / 5
                    }
                    Button {
                        text: "LN"
                        onClicked: Hp35.key_ln()
                        width:parent.width / 5
                    }
                    Button {
                        text: "e^x" // e^x
                        onClicked: Hp35.key_epow()
                        width:parent.width / 5
                    }
                    Button {
                        text: "CLR"
                        onClicked: Hp35.key_clr()
                        width:parent.width / 5
                    }
                }
                Row {
                    // Row 2
                    width: calculator.width
                    Button {
                        text: "\u221ax" // sqrt x
                        onClicked: Hp35.key_sqrt()
                        width:parent.width / 5
                    }
                    Button {
                        text: "ARC"
                        onClicked: Hp35.key_arc()
                        width:parent.width / 5
                    }
                    Button {
                        text: "SIN"
                        onClicked: Hp35.key_sin()
                        width:parent.width / 5
                    }
                    Button {
                        text: "COS"
                        onClicked: Hp35.key_cos()
                        width:parent.width / 5
                    }
                    Button {
                        text: "TAN"
                        onClicked: Hp35.key_tan()
                        width:parent.width / 5
                    }
                }
                Row {
                    // Row 3
                    width: calculator.width
                    Button {
                        text: "1/x"
                        onClicked: Hp35.key_inv()
                        width:parent.width / 5
                    }
                    Button {
                        text: "x\u2194y" // x arrows y
                        onClicked: Hp35.key_xy()
                        width:parent.width / 5
                    }
                    Button {
                        text: "R \u2193" // R downarrow (Rotate stack)
                        onClicked: Hp35.key_r()
                        width:parent.width / 5
                    }
                    Button {
                        text: "STO"
                        onClicked: Hp35.key_sto()
                        width:parent.width / 5
                    }
                    Button {
                        text: "RCL"
                        onClicked: Hp35.key_rcl()
                        width:parent.width / 5
                    }
                }
                Row {
                    // Row 4
                    width: calculator.width
                    Button {
                        text: qsTr("ENTER")
                        onClicked: Hp35.key_enter()
                        width: 2 * parent.width / 5
                    }
                    Button {
                        text: qsTr("CH S")
                        onClicked: Hp35.key_chs()
                        width:parent.width / 5
                    }
                    Button {
                        text: qsTr("E EX")
                        onClicked: Hp35.key_eex()
                        width:parent.width / 5
                    }
                    Button {
                        text: qsTr("CL X")
                        onClicked: Hp35.key_clx()
                        width:parent.width / 5
                    }
                }
                Row {
                    // Row 5
                    width: calculator.width
                    Button {
                        text: qsTr("\u2212") // Minus sign
                        onClicked: Hp35.key_subtract()
                        width: parent.width / 5
                    }
                    Button {
                        text: "7"
                        onClicked: Hp35.key_num(7)
                        width: (parent.width - parent.width / 5) / 3
                    }
                    Button {
                        text: "8"
                        onClicked: Hp35.key_num(8)
                        width: (parent.width - parent.width / 5) / 3
                    }
                    Button {
                        text: "9"
                        onClicked: Hp35.key_num(9)
                        width: (parent.width - parent.width / 5) / 3
                    }
                }
                Row {
                    // Row 6
                    width: calculator.width
                    Button {
                        text: "+"
                        onClicked: Hp35.key_add()
                        width: parent.width / 5
                    }
                    Button {
                        text: "4"
                        onClicked: Hp35.key_num(4)
                        width: (parent.width - parent.width / 5) / 3
                    }
                    Button {
                        text: "5"
                        onClicked: Hp35.key_num(5)
                        width: (parent.width - parent.width / 5) / 3
                    }
                    Button {
                        text: "6"
                        onClicked: Hp35.key_num(6)
                        width: (parent.width - parent.width / 5) / 3
                    }
                }
                Row {
                    // Row 7
                    width: calculator.width
                    Button {
                        text: "\u00d7" // Multiplicaion sign
                        onClicked: Hp35.key_multiply()
                        width: parent.width / 5
                    }
                    Button {
                        text: "1"
                        onClicked: Hp35.key_num(1)
                        width: (parent.width - parent.width / 5) / 3
                    }
                    Button {
                        text: "2"
                        onClicked: Hp35.key_num(2)
                        width: (parent.width - parent.width / 5) / 3
                    }
                    Button {
                        text: "3"
                        onClicked: Hp35.key_num(3)
                        width: (parent.width - parent.width / 5) / 3
                    }
                }
                Row {
                    // Row 8
                    width: calculator.width
                    Button {
                        text: "\u00f7" // Division sign
                        onClicked: Hp35.key_divide()
                        width: parent.width / 5
                    }
                    Button {
                        text: "0"
                        onClicked: Hp35.key_num(0)
                        width: (parent.width - parent.width / 5) / 3
                    }
                    Button {
                        text: qsTr(".")
                        onClicked: Hp35.key_decimal()
                        width: (parent.width - parent.width / 5) / 3
                    }
                    Button {
                        text: "\u03c0"
                        onClicked: Hp35.key_pi()
                        width: (parent.width - parent.width / 5) / 3
                    }
                }
            }
        }
    }
    Component.onCompleted: Hp35.key_clr()
}
