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
    id: aboutPage
    SilicaListView {
        anchors.fill: parent
        contentWidth: width
        VerticalScrollDecorator {}
        model: VisualItemModel {

            PageHeader {
                id: header
                title: qsTr("About Quanto Fa")
            }

            Row {
                id: firstSection
                x: Theme.paddingLarge
                width: aboutPage.width - 2 * Theme.paddingLarge
                spacing: Theme.paddingLarge
                Image {
                    anchors.verticalCenter: parent.verticalCenter
                    source: "/usr/share/icons/hicolor/128x128/apps/harbour-quantofa.png"
                }
                Column {
                    Label {
                        textFormat: Text.RichText
                        text: "<style>a:link{color:" + Theme.highlightColor + ";text-decoration:none}</style>" +
                              "<div style='font-size:large;font-weight:bold'><a href='http://github.com/mikelima/quantofa'>" +
                              qsTr("Quanto Fa") + "</a></div>" + "<div style='font-size:small;'>" +
                              qsTr("version ") + Qt.application.version + "</div>"
                        onLinkActivated: Qt.openUrlExternally(link)
                    }
                }
            }
            Item {
                height: Theme.paddingLarge
            }
            Column {
                id: lastSection
                x: Theme.paddingLarge
                width: parent.width - 2 * Theme.paddingLarge
                spacing: Theme.paddingLarge
                Label {
                    width: parent.width
                    wrapMode: Text.WordWrap
                    linkColor: Theme.highlightColor
                    font.pixelSize: Theme.fontSizeSmall
                    text: qsTr("An RPN calculator based on the HP-35 simulator from the <a href='http://hpmuseum.org'>HP Museum</a>.")
                    onLinkActivated: Qt.openUrlExternally(link)
                }
                Label {
                    width: parent.width
                    fontSizeMode: Text.Fit
                    font.pixelSize: Theme.fontSizeSmall
                    textFormat: Text.RichText
                    wrapMode: Text.WordWrap
                    linkColor: Theme.highlightColor
                    text: "<style>a:link{color:" + Theme.highlightColor + ";text-decoration:none}</style>" +
                          "<div style='font-size:small'><p>" +
                          qsTr("Copyright (c) 2014,2021 Luciano Montanaro " +
                               "(<a href='mailto:mikelima@cirulla.net'>mikelima@cirulla.net</a>)") +
                          "</p><p>" +
                          qsTr("Copyright (c) 2004 <a href='http://neil.fraser.name'>Neil Fraser</a>, Elgin, Scotland.") +
                          "</p><p>" +
                          qsTr("Licensed under the GNU Public License v2 or above") +
                          "</p></div>"
                    onLinkActivated: Qt.openUrlExternally(link)
                }
            }
            SectionHeader {
                text: qsTr("HP35 License")
            }
            Row {
                x: Theme.paddingLarge
                width: aboutPage.width - 2 * Theme.paddingLarge
                spacing: Theme.paddingLarge
                Label {
                    width: parent.width
                    fontSizeMode: Text.Fit
                    font.pixelSize: Theme.fontSizeSmall
                    textFormat: Text.RichText
                    wrapMode: Text.WordWrap
                    linkColor: Theme.highlightColor
                    text: "<style>a:link{color:" + Theme.highlightColor + ";text-decoration:none}</style>" +
                          "<div style='font-size:small'>" + Hp35.about() + "</div>"
                    onLinkActivated: Qt.openUrlExternally(link)
                }
            }
            SectionHeader {
                text: qsTr("Quick reference")
            }
            Grid {
                id: grid
                columns: 2
                columnSpacing: Theme.paddingLarge
                rowSpacing: Theme.paddingSmall
                x: Theme.paddingLarge
                width: aboutPage.width - 2 * Theme.paddingLarge
                Label {
                    width: 3 * Theme.paddingLarge
		    text: "<table align=center><tr><td valign=bottom>x</td><td valign=top><font size=small>y</font></td></tr></table>" // x^y,
                    textFormat: Text.RichText
                }
                Label {
                    text: qsTr("calculate x to the power of y")
                    color: Theme.secondaryColor
                    wrapMode: Text.WordWrap
                }
                Label {
                    width: 3 * Theme.paddingLarge
                    text: qsTr("LOG")
                }
                Label {
                    width: grid.width - 4 * Theme.paddingLarge
                    text: qsTr("calculate the decimal logarithm of x")
                    color: Theme.secondaryColor
                    wrapMode: Text.WordWrap
                }
                Label {
                    width: 3 * Theme.paddingLarge
                    text: qsTr("LN")
                }
                Label {
                    width: grid.width - 4 * Theme.paddingLarge
                    text: qsTr("calculate the natural logarithm of x")
                    color: Theme.secondaryColor
                    wrapMode: Text.WordWrap
                }
                Label {
                    text: "<table align=center><tr><td valign=bottom>e</td><td valign=top><font size=small>x</font></td></tr></table>" // e^x
                    textFormat: Text.RichText
                }
                Label {
                    width: grid.width - 4 * Theme.paddingLarge
                    text: qsTr("calculate the exponential of x")
                    color: Theme.secondaryColor
                    wrapMode: Text.WordWrap
                }
                Label {
                    width: 3 * Theme.paddingLarge
                    text: qsTr("CLR")
                }
                Label {
                    width: grid.width - 4 * Theme.paddingLarge
                    text: qsTr("clear the calculator memory")
                    color: Theme.secondaryColor
                    wrapMode: Text.WordWrap
                }
                //
                Label {
                    width: 3 * Theme.paddingLarge
		    text: "\u221a<span style='text-decoration:overline;'>x&nbsp;</span>" // sqrt x
                    textFormat: Text.RichText
                }
                Label {
                    width: grid.width - 4 * Theme.paddingLarge
                    text: qsTr("calculate the square root of x")
                    color: Theme.secondaryColor
                    wrapMode: Text.WordWrap
                }
                Label {
                    text: qsTr("ARC")
                }
                Label {
                    width: grid.width - 4 * Theme.paddingLarge
                    text: qsTr("prefix to obtain the arc functions")
                    color: Theme.secondaryColor
                    wrapMode: Text.WordWrap
                }
                Label {
                    width: 3 * Theme.paddingLarge
                    text: qsTr("SIN")
                }
                Label {
                    width: grid.width - 4 * Theme.paddingLarge
                    text: qsTr("calculate sin(x) or arcsin(x)")
                    color: Theme.secondaryColor
                    wrapMode: Text.WordWrap
                }
                Label {
                    width: 3 * Theme.paddingLarge
                    text: qsTr("COS")
                }
                Label {
                    width: grid.width - 4 * Theme.paddingLarge
                    font.pixelSize: Theme.fontSizeSmall
                    text: qsTr("calculate cos(x) or arccos(x)")
                    color: Theme.secondaryColor
                    wrapMode: Text.WordWrap
                }
                Label {
                    width: 3 * Theme.paddingLarge
                    font.pixelSize: Theme.fontSizeSmall
                    text: qsTr("TAN")
                }
                Label {
                    width: grid.width - 4 * Theme.paddingLarge
                    text: qsTr("calculate tan(x) or arctan(x)")
                    color: Theme.secondaryColor
                    wrapMode: Text.WordWrap
                }
                //
                Label {
                    width: 3 * Theme.paddingLarge
                    text: "1/x" // sqrt x
                }
                Label {
                    width: grid.width - 4 * Theme.paddingLarge
                    text: qsTr("calculate the inverse of x")
                    color: Theme.secondaryColor
                    wrapMode: Text.WordWrap
                }
                Label {
                    text: "x\u2194y" // x arrows y
                }
                Label {
                    width: grid.width - 4 * Theme.paddingLarge
                    text: qsTr("exchange the x and y registers")
                    color: Theme.secondaryColor
                    wrapMode: Text.WordWrap
                }
                Label {
                    width: 3 * Theme.paddingLarge
                    text: "R \u2193" // R downarrow (Rotate stack)
                }
                Label {
                    text: qsTr("rotate the stack (x\u2192t\u2192z\u2192y\u2192x)")
                    color: Theme.secondaryColor
                    wrapMode: Text.WordWrap
                }
                Label {
                    width: 3 * Theme.paddingLarge
                    text: qsTr("STO")
                }
                Label {
                    width: grid.width - 4 * Theme.paddingLarge
                    text: qsTr("store the content of x in memory")
                    color: Theme.secondaryColor
                    wrapMode: Text.WordWrap
                }
                Label {
                    width: 3 * Theme.paddingLarge
                    font.pixelSize: Theme.fontSizeSmall
                    text: qsTr("RCL")
                }
                Label {
                    width: grid.width - 4 * Theme.paddingLarge
                    text: qsTr("recall x from memory")
                    color: Theme.secondaryColor
                    wrapMode: Text.WordWrap
                }
                //
                Label {
                    width: 3 * Theme.paddingLarge
                    font.pixelSize: Theme.fontSizeSmall
                    text: qsTr("ENTER")
                }
                Label {
                    width: grid.width - 4 * Theme.paddingLarge
                    text: qsTr("enter current value")
                    color: Theme.secondaryColor
                    wrapMode: Text.WordWrap
                }
                Label {
                    width: 3 * Theme.paddingLarge
                    font.pixelSize: Theme.fontSizeSmall
                    text: qsTr("+/\u2212")
                }
                Label {
                    width: grid.width - 4 * Theme.paddingLarge
                    text: qsTr("change sign")
                    color: Theme.secondaryColor
                    wrapMode: Text.WordWrap
                }
                Label {
                    width: 3 * Theme.paddingLarge
                    font.pixelSize: Theme.fontSizeSmall
                    text: qsTr("E EX")
                }
                Label {
                    width: grid.width - 4 * Theme.paddingLarge
                    text: qsTr("enter exponent")
                    color: Theme.secondaryColor
                    wrapMode: Text.WordWrap
                }
                Label {
                    width: 3 * Theme.paddingLarge
                    font.pixelSize: Theme.fontSizeSmall
                    text: qsTr("CL X")
                }
                Label {
                    width: grid.width - 4 * Theme.paddingLarge
                    text: qsTr("clear the x register")
                    color: Theme.secondaryColor
                    wrapMode: Text.WordWrap
                }
                //
            }
        }
    }
}
