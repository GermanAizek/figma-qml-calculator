import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.15
import "calc.js" as Calculator

Window {
    width: 360
    height: 640
    visible: true
    title: qsTr("Calculator")
    property real result: 0.0
    property real buffer: ""

    Rectangle {
        id: back_Calculator
        x: 0
        y: 0
        width: 360
        height: 640
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
                x: 39
                y: 80
                width: 281
                height: 60
            }

            Item {
                id: item2
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

            Rectangle {
                id: rectangle
                width: 60
                height: 60
                color: "#0889a6"
                radius: 100
                Button {
                    Text {
                        id: rectanglet
                        text: qsTr("()")
                        color: "white"
                        font.family: "Open Sans"
                        font.pointSize: 24
                        anchors.centerIn: parent
                    }
                    onClicked: {
                        buffer += "()"
                        field.text = buffer
                    }
                }
            }

            Rectangle {
                id: rectangle1
                width: 60
                height: 60
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

            Rectangle {
                id: rectangle2
                width: 60
                height: 60
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

            Rectangle {
                id: rectangle3
                width: 60
                height: 60
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

            Rectangle {
                id: rectangle4
                width: 60
                height: 60
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

            Rectangle {
                id: rectangle5
                width: 60
                height: 60
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

            Rectangle {
                id: rectangle6
                width: 60
                height: 60
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

            Rectangle {
                id: rectangle7
                width: 60
                height: 60
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

            Rectangle {
                id: rectangle8
                width: 60
                height: 60
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

            Rectangle {
                id: rectangle9
                width: 60
                height: 60
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

            Rectangle {
                id: rectangle10
                width: 60
                height: 60
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

            Rectangle {
                id: rectangle11
                width: 60
                height: 60
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

            Rectangle {
                id: rectangle12
                width: 60
                height: 60
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

            Rectangle {
                id: rectangle13
                width: 60
                height: 60
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

            Rectangle {
                id: rectangle14
                width: 60
                height: 60
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

            Rectangle {
                id: rectangle15
                width: 60
                height: 60
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

            Rectangle {
                id: rectangle16
                width: 60
                height: 60
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
