import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.1
import "calc.js" as Calc

Window {
    id: window
    width: 360
    height: 640
    visible: true
    title: qsTr("Calculator")
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
            width: parent.width
            height: 156
            color: "#04bfad"
            radius: 25

            Item {
                id: field
                y: 80
                width: parent.width - (parent.width - 281)
                height: 60
                anchors.right: parent.right
                anchors.rightMargin: 39
                Text {
                    id: fieldtext
                    text: qsTr("")
                    color: "white"
                    font.family: "Open Sans"
                    font.pointSize: 36
                    anchors.right: parent.right
                }
            }

            Item {
                id: buff
                y: 40
                width: parent.width - (parent.width - 280)
                height: 30
                anchors.right: parent.right
                anchors.rightMargin: 39
                Text {
                    id: bufftext
                    text: qsTr("")
                    color: "white"
                    font.family: "Open Sans"
                    font.pointSize: 18
                    anchors.right: parent.right
                }
            }
        }

        Rectangle {
            id: status_bar
            x: 0
            y: 0
            width: parent.width
            height: 48
            color: "#04bfad"
            anchors.right: parent.right

            Grid {
                id: gridbar
                width: parent.width - (parent.width - 110)
                height: 48
                rows: 1
                columns: 4
                spacing: 4
                anchors.right: parent.right

                Item {
                    width: 16
                    height: 32
                    Image {
                        anchors.centerIn: parent
                        source: 'data:image/svg+xml;utf8,<svg width="20" height="16" viewBox="0 0 20 16" fill="none" xmlns="http://www.w3.org/2000/svg"><path fill-rule="evenodd" clip-rule="evenodd" d="M0.977371 4.01593L10 15L19.0226 4.01593C16.5118 2.12256 13.387 1 10 1C6.61301 1 3.48822 2.12256 0.977371 4.01593Z" fill="white"/></svg>'
                    }
                }

                Item {
                    width: 16
                    height: 32
                    Image {
                        anchors.centerIn: parent
                        source: 'data:image/svg+xml;utf8,<svg width="16" height="16" viewBox="0 0 16 16" fill="none" xmlns="http://www.w3.org/2000/svg"><path fill-rule="evenodd" clip-rule="evenodd" d="M0 15H14V1L0 15Z" fill="white"/></svg>'
                    }
                }

                Item {
                    width: 16
                    height: 32
                    Image {
                        anchors.centerIn: parent
                        source: 'data:image/svg+xml;utf8,<svg width="16" height="16" viewBox="0 0 16 16" fill="none" xmlns="http://www.w3.org/2000/svg"><path fill-rule="evenodd" clip-rule="evenodd" d="M9 1.875V1L6 1V1.875H3V15H12V1.875H9Z" fill="white"/></svg>'
                    }
                }

                Item {
                    width: 36
                    height: 32
                    Text {
                        id: timetext
                        text: {
                            updatesEnabled: timetext.time
                            Qt.formatTime(new Date(), "hh:mm")
                        }
                        color: "white"
                        font.family: "Open Sans"
                        font.pointSize: 12
                        font.bold: true
                        anchors.centerIn: parent
                    }
                }
            }
        }

        GridLayout {
            id: grid
            y: 204
            width: parent.width - (parent.width - 312)
            height: parent.height - (parent.height - 396)
            flow: Grid.TopToBottom
            rows: 5
            columns: 4
            rowSpacing: 24
            columnSpacing: 24
            anchors.right: parent.right
            anchors.rightMargin: 24

            Button {
                width: 60
                height: 60
                Layout.fillHeight: true
                Layout.fillWidth: true
                property bool flag: true
                background: Rectangle {
                    id: rectangle
                    color: parent.pressed ? "#F7E425" : "#0889a6"
                    radius: 100

                    Item {
                        width: 16
                        height: 32
                        anchors.centerIn: parent
                        Image {
                            anchors.centerIn: parent
                            source: 'data:image/svg+xml;utf8,<svg width="30" height="30" viewBox="0 0 30 30" fill="none" xmlns="http://www.w3.org/2000/svg"><path d="M12 5C12 5 9 9 9 15C9 21 12 25 12 25" stroke="white" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/><path d="M18 25C18 25 21 21 21 15C21 9 18 5 18 5" stroke="white" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/></svg>'
                        }
                    }
                }
                onClicked: {
                    if (Calc.verify_operator(buffer)) {
                        buffer = buffer.slice(0, -1)
                        if (flag) {
                            buffer += "("
                            flag = false
                        } else {
                            buffer += ")"
                            flag = true
                        }
                        fieldtext.text = buffer
                    } else {
                        if (flag) {
                            buffer += "("
                            flag = false
                        } else {
                            buffer += ")"
                            flag = true
                        }
                        fieldtext.text = buffer
                    }
                }
            }

            Button {
                width: 60
                height: 60
                Layout.fillHeight: true
                Layout.fillWidth: true
                background: Rectangle {
                    id: rectangle1
                    color: parent.pressed ? "#04BFAD" : "#b0d1d8"
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
                Layout.fillHeight: true
                Layout.fillWidth: true
                background: Rectangle {
                    id: rectangle2
                    color: parent.pressed ? "#04BFAD" : "#b0d1d8"
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
                Layout.fillHeight: true
                Layout.fillWidth: true
                background: Rectangle {
                    id: rectangle3
                    color: parent.pressed ? "#04BFAD" : "#b0d1d8"
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
                Layout.fillHeight: true
                Layout.fillWidth: true
                background: Rectangle {
                    id: rectangle4
                    color: parent.pressed ? "#FF7E7E" : "#F25E5E"
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
                Layout.fillHeight: true
                Layout.fillWidth: true
                property bool flag: true
                background: Rectangle {
                    id: rectangle5
                    color: parent.pressed ? "#F7E425" : "#0889a6"
                    radius: 100

                    Item {
                        width: 16
                        height: 32
                        anchors.centerIn: parent
                        Image {
                            anchors.centerIn: parent
                            source: 'data:image/svg+xml;utf8,<svg width="30" height="30" viewBox="0 0 30 30" fill="none" xmlns="http://www.w3.org/2000/svg"><path d="M18 7L12 23" stroke="white" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/><path d="M8 7V15" stroke="white" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/><path d="M12 11L4 11" stroke="white" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/><path d="M26 19L18 19" stroke="white" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/></svg>'
                        }
                    }
                }
                onClicked: {
                    if (flag) {
                        buffer = "-" + buffer
                        flag = false
                    } else {
                        buffer = buffer.slice(1, buffer.length)
                        flag = true
                    }
                    fieldtext.text = buffer
                }
            }

            Button {
                width: 60
                height: 60
                Layout.fillHeight: true
                Layout.fillWidth: true
                background: Rectangle {
                    id: rectangle6
                    color: parent.pressed ? "#04BFAD" : "#b0d1d8"
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
                Layout.fillHeight: true
                Layout.fillWidth: true
                background: Rectangle {
                    id: rectangle7
                    color: parent.pressed ? "#04BFAD" : "#b0d1d8"
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
                Layout.fillHeight: true
                Layout.fillWidth: true
                background: Rectangle {
                    id: rectangle8
                    color: parent.pressed ? "#04BFAD" : "#b0d1d8"
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
                Layout.fillHeight: true
                Layout.fillWidth: true
                background: Rectangle {
                    id: rectangle9
                    color: parent.pressed ? "#04BFAD" : "#b0d1d8"
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
                Layout.fillHeight: true
                Layout.fillWidth: true
                background: Rectangle {
                    id: rectangle10
                    color: parent.pressed ? "#F7E425" : "#0889a6"
                    radius: 100

                    Item {
                        width: 16
                        height: 32
                        anchors.centerIn: parent
                        Image {
                            anchors.centerIn: parent
                            source: 'data:image/svg+xml;utf8,<svg width="30" height="30" viewBox="0 0 30 30" fill="none" xmlns="http://www.w3.org/2000/svg"><path d="M20 7L10 23" stroke="white" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/><ellipse cx="21" cy="20" rx="3" ry="4" stroke="white" stroke-width="2"/><ellipse cx="9" cy="10" rx="3" ry="4" stroke="white" stroke-width="2"/></svg>'
                        }
                    }
                }
                onClicked: {
                    if (Calc.verify_operator(buffer)) {
                        buffer = buffer.slice(0, -1)
                        buffer += "%"
                        fieldtext.text = buffer
                    } else if (buffer.length !== 0) {
                        buffer += "%"
                        fieldtext.text = buffer
                    }
                }
            }

            Button {
                width: 60
                height: 60
                Layout.fillHeight: true
                Layout.fillWidth: true
                background: Rectangle {
                    id: rectangle11
                    color: parent.pressed ? "#04BFAD" : "#b0d1d8"
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
                Layout.fillHeight: true
                Layout.fillWidth: true
                background: Rectangle {
                    id: rectangle12
                    color: parent.pressed ? "#04BFAD" : "#b0d1d8"
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
                Layout.fillHeight: true
                Layout.fillWidth: true
                background: Rectangle {
                    id: rectangle13
                    color: parent.pressed ? "#04BFAD" : "#b0d1d8"
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
                Layout.fillHeight: true
                Layout.fillWidth: true
                background: Rectangle {
                    id: rectangle14
                    color: parent.pressed ? "#04BFAD" : "#b0d1d8"
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
                    if (Calc.verify_operator(buffer)) {
                        buffer = buffer.slice(0, -1)
                        buffer += "."
                        fieldtext.text = buffer
                    } else if (buffer.length !== 0) {
                        buffer += "."
                        fieldtext.text = buffer
                    }
                }
            }

            Button {
                width: 60
                height: 60
                Layout.fillHeight: true
                Layout.fillWidth: true
                background: Rectangle {
                    id: rectangle15
                    color: parent.pressed ? "#F7E425" : "#0889a6"
                    radius: 100

                    Item {
                        width: 16
                        height: 32
                        anchors.centerIn: parent
                        Image {
                            anchors.centerIn: parent
                            source: 'data:image/svg+xml;utf8,<svg width="30" height="30" viewBox="0 0 30 30" fill="none" xmlns="http://www.w3.org/2000/svg"><path d="M24.5 15L5.5 15" stroke="white" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/><circle cx="15" cy="8" r="2" fill="white"/><circle cx="15" cy="22" r="2" fill="white"/></svg>'
                        }
                    }
                }
                onClicked: {
                    if (Calc.verify_operator(buffer)) {
                        buffer = buffer.slice(0, -1)
                        buffer += "/"
                        fieldtext.text = buffer
                    } else if (buffer.length !== 0) {
                        buffer += "/"
                        fieldtext.text = buffer
                    }
                }
            }

            Button {
                width: 60
                height: 60
                Layout.fillHeight: true
                Layout.fillWidth: true
                background: Rectangle {
                    id: rectangle16
                    color: parent.pressed ? "#F7E425" : "#0889a6"
                    radius: 100

                    Item {
                        width: 16
                        height: 32
                        anchors.centerIn: parent
                        Image {
                            anchors.centerIn: parent
                            source: 'data:image/svg+xml;utf8,<svg width="30" height="30" viewBox="0 0 30 30" fill="none" xmlns="http://www.w3.org/2000/svg"><path d="M21.7175 8.2825L8.28249 21.7175" stroke="white" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/><path d="M21.7175 21.7175L8.28249 8.2825" stroke="white" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/></svg>'
                        }
                    }
                }
                onClicked: {
                    if (Calc.verify_operator(buffer)) {
                        buffer = buffer.slice(0, -1)
                        buffer += "*"
                        fieldtext.text = buffer
                    } else if (buffer.length !== 0) {
                        buffer += "*"
                        fieldtext.text = buffer
                    }
                }
            }

            Button {
                width: 60
                height: 60
                Layout.fillHeight: true
                Layout.fillWidth: true
                background: Rectangle {
                    id: rectangle17
                    color: parent.pressed ? "#F7E425" : "#0889a6"
                    radius: 100

                    Item {
                        width: 16
                        height: 32
                        anchors.centerIn: parent
                        Image {
                            anchors.centerIn: parent
                            source: 'data:image/svg+xml;utf8,<svg width="30" height="30" viewBox="0 0 30 30" fill="none" xmlns="http://www.w3.org/2000/svg"><path d="M24.5 15L5.5 15" stroke="white" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/></svg>'
                        }
                    }
                }
                onClicked: {
                    if (Calc.verify_operator(buffer)) {
                        buffer = buffer.slice(0, -1)
                        buffer += "-"
                        fieldtext.text = buffer
                    } else {
                        buffer += "-"
                        fieldtext.text = buffer
                    }
                }
            }

            Button {
                width: 60
                height: 60
                Layout.fillHeight: true
                Layout.fillWidth: true
                background: Rectangle {
                    color: parent.pressed ? "#F7E425" : "#0889a6"
                    radius: 100

                    Item {
                        width: 16
                        height: 32
                        anchors.centerIn: parent
                        Image {
                            anchors.centerIn: parent
                            source: 'data:image/svg+xml;utf8,<svg width="30" height="30" viewBox="0 0 30 30" fill="none" xmlns="http://www.w3.org/2000/svg"><path d="M15 5.5V24.5" stroke="white" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/><path d="M24.5 15L5.5 15" stroke="white" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/></svg>'
                        }
                    }
                }
                onClicked: {
                    if (Calc.verify_operator(buffer)) {
                        buffer = buffer.slice(0, -1)
                        buffer += "+"
                        fieldtext.text = buffer
                    } else if (buffer.length !== 0) {
                        buffer += "+"
                        fieldtext.text = buffer
                    }
                }
            }

            Button {
                width: 60
                height: 60
                Layout.fillHeight: true
                Layout.fillWidth: true
                background: Rectangle {
                    id: rectangle19
                    color: parent.pressed ? "#F7E425" : "#0889a6"
                    radius: 100

                    Item {
                        width: 16
                        height: 32
                        anchors.centerIn: parent
                        Image {
                            anchors.centerIn: parent
                            source: 'data:image/svg+xml;utf8,<svg width="30" height="30" viewBox="0 0 30 30" fill="none" xmlns="http://www.w3.org/2000/svg"><path d="M24.5 19L5.5 19" stroke="white" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/><path d="M24.5 11L5.5 11" stroke="white" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/></svg>'
                        }
                    }
                }
                onClicked: {
                    let r = Calc.calculate_result(buffer)
                    bufftext.text = buffer
                    fieldtext.text = Number.isInteger(r) ? r.toString() : r.toFixed(5).replace(/0*$/,"")
                    buffer = ""
                }
            }
        }
    }
}
