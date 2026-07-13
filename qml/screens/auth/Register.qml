import QtQuick
import QtQuick.Layouts
import QtQuick.Effects
import QtQuick.Controls
import "../components"

Item {
    Rectangle {
        width: 412
            height: 917
        gradient: Gradient {
            GradientStop { position: 0.25; color: "#000000" }
            GradientStop { position: 0.45; color: "#3B434C" }

        }
    }

    ColumnLayout {
        anchors.fill: parent
        spacing: 0

        Item {
            Layout.fillHeight: true
        }


        ShadowText {
            Layout.alignment: Qt.AlignCenter
            text: "Регистрация"
            textColor: "#76DDB3"
            font.bold: true
            font.pixelSize: 40
        }

        Item {
            Layout.preferredHeight: 45
        }

        ShadowText {
            Layout.alignment: Qt.AlignCenter
            text: "Добро пожаловать в приложение"
            textColor: "#76DDB3"

            font.pixelSize: 16
        }

        Item {
            Layout.preferredHeight: 35
        }

        Input {
            Layout.alignment: Qt.AlignHCenter
            Layout.preferredWidth: 265
            Layout.preferredHeight: 45
            wRectangle: 265
            hRectangle: 45
            textRectangle: "Логин"
        }

        Item {
            Layout.preferredHeight: 20
        }

        Input {
            Layout.alignment: Qt.AlignHCenter
            Layout.preferredWidth: 265
            Layout.preferredHeight: 45
            wRectangle: 265
            hRectangle: 45
            textRectangle: "Почта"
        }

        Item {
            Layout.preferredHeight: 20
        }

        Input {
            Layout.alignment: Qt.AlignHCenter
            Layout.preferredWidth: 265
            Layout.preferredHeight: 45
            wRectangle: 265
            hRectangle: 45
            textRectangle: "Пароль"
        }

        Item {
            Layout.preferredHeight: 20
        }

        Input {
            Layout.alignment: Qt.AlignHCenter
            Layout.preferredWidth: 265
            Layout.preferredHeight: 45
            wRectangle: 265
            hRectangle: 45
            textRectangle: "Потверждение пароля"
        }

        Item {
            Layout.preferredHeight: 20
        }

        ShButton {
            Layout.alignment: Qt.AlignHCenter
            Layout.preferredWidth: 155
            Layout.preferredHeight: 45
            btText: "Регистрация"
            // MouseArea {
            //     id: mouseArea
            //     anchors.fill: parent
            //     cursorShape: Qt.PointingHandCursor
            //     onClicked: {
            //         myStackView.push("Recovery.qml")
            //     }
            // }

        }

        Item {
            Layout.preferredHeight: 15
        }

        ShadowText {
            Layout.alignment: Qt.AlignCenter
            text: "Не помните пароль?"
            textColor: "#76DDB3"
            font.bold: true
            font.pixelSize: 14
            MouseArea {
                anchors.fill: parent
                cursorShape: Qt.PointingHandCursor
                onClicked: {
                    myStackView.push("Recovery.qml")
                }
            }
        }

        Item {
            Layout.preferredHeight: 100
        }

        RowLayout {
            Layout.alignment: Qt.AlignCenter
            ShadowText {
                Layout.alignment: Qt.AlignCenter
                text: "Аккаунт создан ?"
                textColor: "#828282"
                font.bold: true
                font.pixelSize: 14
            }

            ShadowText {
                Layout.alignment: Qt.AlignCenter
                text: "Авторизироваться"
                textColor: "#76DDB3"
                font.bold: true
                font.pixelSize: 14
                MouseArea {
                    anchors.fill: parent
                    cursorShape: Qt.PointingHandCursor
                    onClicked: {
                        myStackView.pop()
                    }
                }
            }

        }


        Item {
            Layout.preferredHeight: 75
        }



    }

}


