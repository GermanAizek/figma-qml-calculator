import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.15
import "calc.js" as Calc

Window {
    width: 360
    height: 640
    visible: true
    title: qsTr("Calculator")
    property real result: 0.0
    property string buffer: ""

    Rectangle {
        id: back_Calculator
        x: 0
        y: 0
        width: parent.width
        height: parent.height
        color: "#024873"

        Rectangle {
            id: back_calculation
            x: 0
            y: 24
            width: 360
            height: 156
            color: "#04bfad"
            radius: 25

            Item {
                id: field
                Text {
                    id: fieldtext
                    text: qsTr("")
                    color: "white"
                    font.family: "Open Sans"
                    font.pointSize: 24
                    anchors.right: parent.right
                }
                x: 39
                y: 80
                width: 281
                height: 60
            }

            Item {
                id: buff
                Text {
                    id: bufftext
                    text: qsTr("")
                    color: "white"
                    font.family: "Open Sans"
                    font.pointSize: 24
                    anchors.right: parent.right
                }
                x: 39
                y: 57
                width: 280
                height: 30
            }
        }

        Rectangle {
            id: status_bar
            x: 0
            y: 2
            width: 360
            height: 48
            color: "#04bfad"
        }

        Grid {
            id: grid
            x: 24
            y: 204
            width: 312
            height: 396
            flow: Grid.TopToBottom
            rows: 5
            columns: 4
            spacing: 24

            Button {
                width: 60
                height: 60
                background: Rectangle {
                    id: rectangle
                    color: "#0889a6"
                    radius: 100
                    Text {
                        id: rectanglet
                        text: qsTr("()")
                        color: "white"
                        font.family: "Open Sans"
                        font.pointSize: 24
                        anchors.centerIn: parent
                    }
                }
                onClicked: {
                    if (!buffer.includes("()")) {
                        buffer += "()"
                        fieldtext.text = buffer
                    }
                }
            }

            Button {
                width: 60
                height: 60
                background: Rectangle {
                    id: rectangle1
                    color: "#b0d1d8"
                    radius: 100
                    Text {
                        id: rectangle1t
                        text: qsTr("7")
                        color: "#024873"
                        font.family: "Open Sans"
                        font.pointSize: 24
                        anchors.centerIn: parent
                    }
                }
                onClicked: {
                    buffer += "7"
                    fieldtext.text = buffer
                }
            }

            Button {
                width: 60
                height: 60
                background: Rectangle {
                    id: rectangle2
                    color: "#b0d1d8"
                    radius: 100
                    Text {
                        id: rectangle2t
                        text: qsTr("4")
                        color: "#024873"
                        font.family: "Open Sans"
                        font.pointSize: 24
                        anchors.centerIn: parent
                    }
                }
                onClicked: {
                    buffer += "4"
                    fieldtext.text = buffer
                }
            }

            Button {
                width: 60
                height: 60
                background: Rectangle {
                    id: rectangle3
                    color: "#b0d1d8"
                    radius: 100
                    Text {
                        id: rectangle3t
                        text: qsTr("1")
                        color: "#024873"
                        font.family: "Open Sans"
                        font.pointSize: 24
                        anchors.centerIn: parent
                    }
                }
                onClicked: {
                    buffer += "1"
                    fieldtext.text = buffer
                }
            }

            Button {
                width: 60
                height: 60
                background: Rectangle {
                    id: rectangle4
                    opacity: 0.9
                    color: "#f25e5e"
                    radius: 100
                    Text {
                        id: rectangle4t
                        text: qsTr("C")
                        color: "white"
                        font.family: "Open Sans"
                        font.pointSize: 24
                        anchors.centerIn: parent
                    }
                }
                onClicked: {
                    buffer = ""
                    fieldtext.text = buffer
                }
            }

            Button {
                width: 60
                height: 60
                background: Rectangle {
                    id: rectangle5
                    color: "#0889a6"
                    radius: 100
                    Text {
                        id: rectangle5t
                        text: qsTr("+/-")
                        color: "white"
                        font.family: "Open Sans"
                        font.pointSize: 24
                        anchors.centerIn: parent
                    }
                }
                onClicked: {
                    buffer = "+"
                    fieldtext.text = buffer
                }
            }

            Button {
                width: 60
                height: 60
                background: Rectangle {
                    id: rectangle6
                    color: "#b0d1d8"
                    radius: 100
                    Text {
                        id: rectangle6t
                        text: qsTr("8")
                        color: "#024873"
                        font.family: "Open Sans"
                        font.pointSize: 24
                        anchors.centerIn: parent
                    }
                }
                onClicked: {
                    buffer += "8"
                    fieldtext.text = buffer
                }
            }

            Button {
                width: 60
                height: 60
                background: Rectangle {
                    id: rectangle7
                    color: "#b0d1d8"
                    radius: 100
                    Text {
                        id: rectangle7t
                        text: qsTr("5")
                        color: "#024873"
                        font.family: "Open Sans"
                        font.pointSize: 24
                        anchors.centerIn: parent
                    }
                }
                onClicked: {
                    buffer += "5"
                    fieldtext.text = buffer
                }
            }

            Button {
                width: 60
                height: 60
                background: Rectangle {
                    id: rectangle8
                    color: "#b0d1d8"
                    radius: 100
                    Text {
                        id: rectangle8t
                        text: qsTr("2")
                        color: "#024873"
                        font.family: "Open Sans"
                        font.pointSize: 24
                        anchors.centerIn: parent
                    }
                }
                onClicked: {
                    buffer += "2"
                    fieldtext.text = buffer
                }
            }

            Button {
                width: 60
                height: 60
                background: Rectangle {
                    id: rectangle9
                    color: "#b0d1d8"
                    radius: 100
                    Text {
                        id: rectangle9t
                        text: qsTr("0")
                        color: "#024873"
                        font.family: "Open Sans"
                        font.pointSize: 24
                        anchors.centerIn: parent
                    }
                }
                onClicked: {
                    buffer += "0"
                    fieldtext.text = buffer
                }
            }

            Button {
                width: 60
                height: 60
                background: Rectangle {
                    id: rectangle10
                    color: "#0889a6"
                    radius: 100
                    Text {
                        id: rectangle10t
                        text: qsTr("%")
                        color: "white"
                        font.family: "Open Sans"
                        font.pointSize: 24
                        anchors.centerIn: parent
                    }
                }
                onClicked: {
                    if (!buffer.includes("%")) {
                        buffer += "%"
                        fieldtext.text = buffer
                    }
                }
            }

            Button {
                width: 60
                height: 60
                background: Rectangle {
                    id: rectangle11
                    color: "#b0d1d8"
                    radius: 100
                    Text {
                        id: rectangle11t
                        text: qsTr("9")
                        color: "#024873"
                        font.family: "Open Sans"
                        font.pointSize: 24
                        anchors.centerIn: parent
                    }
                }
                onClicked: {
                    buffer += "9"
                    fieldtext.text = buffer
                }
            }

            Button {
                width: 60
                height: 60
                background: Rectangle {
                    id: rectangle12
                    color: "#b0d1d8"
                    radius: 100
                    Text {
                        id: rectangle12t
                        text: qsTr("6")
                        color: "#024873"
                        font.family: "Open Sans"
                        font.pointSize: 24
                        anchors.centerIn: parent
                    }
                }
                onClicked: {
                    buffer += "6"
                    fieldtext.text = buffer
                }
            }

            Button {
                width: 60
                height: 60
                background: Rectangle {
                    id: rectangle13
                    color: "#b0d1d8"
                    radius: 100
                    Text {
                        id: rectangle13t
                        text: qsTr("3")
                        color: "#024873"
                        font.family: "Open Sans"
                        font.pointSize: 24
                        anchors.centerIn: parent
                    }
                }
                onClicked: {
                    buffer += "3"
                    fieldtext.text = buffer
                }
            }

            Button {
                width: 60
                height: 60
                background: Rectangle {
                    id: rectangle14
                    color: "#b0d1d8"
                    radius: 100
                    Text {
                        id: rectangle14t
                        text: qsTr(".")
                        color: "#024873"
                        font.family: "Open Sans"
                        font.pointSize: 24
                        anchors.centerIn: parent
                    }
                }
                onClicked: {
                    if (!buffer.includes(".")) {
                        buffer += "."
                        fieldtext.text = buffer
                    }
                }
            }

            Button {
                width: 60
                height: 60
                background: Rectangle {
                    id: rectangle15
                    color: "#0889a6"
                    radius: 100
                    Text {
                        id: rectangle15t
                        text: qsTr("/")
                        color: "white"
                        font.family: "Open Sans"
                        font.pointSize: 24
                        anchors.centerIn: parent
                    }
                }
                onClicked: {
                    if (!Calc.verify_operator(buffer)) {
                        buffer += "/"
                        fieldtext.text = buffer
                    } else {
                        buffer.slice(0, -1)
                        buffer += "/"
                        fieldtext.text = buffer
                    }
                }
            }

            Button {
                width: 60
                height: 60
                background: Rectangle {
                    id: rectangle16
                    color: "#0889a6"
                    radius: 100
                    Text {
                        id: rectangle16t
                        text: qsTr("x")
                        color: "white"
                        font.family: "Open Sans"
                        font.pointSize: 24
                        anchors.centerIn: parent
                    }
                }
                onClicked: {
                    if (!buffer.includes("*")) {
                        buffer += "*"
                        fieldtext.text += buffer
                    }
                }
            }

            Rectangle {
                id: rectangle17
                width: 60
                height: 60
                color: "#0889a6"
                radius: 100
                Text {
                    id: rectangle17t
                    text: qsTr("-")
                    color: "white"
                    font.family: "Open Sans"
                    font.pointSize: 24
                    anchors.centerIn: parent
                }
            }

            Rectangle {
                id: rectangle18
                width: 60
                height: 60
                color: "#0889a6"
                radius: 100
                Text {
                    id: rectangle18t
                    text: qsTr("+")
                    color: "white"
                    font.family: "Open Sans"
                    font.pointSize: 24
                    anchors.centerIn: parent
                }
            }

            Rectangle {
                id: rectangle19
                width: 60
                height: 60
                color: "#0889a6"
                radius: 100
                Text {
                    id: rectangle19t
                    text: qsTr("=")
                    color: "white"
                    font.family: "Open Sans"
                    font.pointSize: 24
                    anchors.centerIn: parent
                }
            }
        }
    }
}
