import QtQuick
import QtQuick.Layouts
import QtQuick.Effects
import QtQuick.Controls


Window {
    width: 412
    height: 917
    visible: true
    title: qsTr("Авторизация")

    Rectangle {
        anchors.fill: parent
        gradient: Gradient {
              GradientStop { position: 0.25; color: "#000000" }
              GradientStop { position: 0.45; color: "#3B434C" }

          }

        ColumnLayout {
            anchors.centerIn: parent



            ShadowText {
                Layout.alignment: Qt.AlignCenter
                text: "Авторизация"
                textColor: "#76DDB3"
                font.bold: true
                font.pixelSize: 40
            }

            Item {
                height: 45
            }

            ShadowText {
                Layout.alignment: Qt.AlignCenter
                text: "Добро пожаловать в приложение"
                textColor: "#76DDB3"

                font.pixelSize: 16
            }

            Item {
                height: 35
            }

            Input {
             wRectangle: 265
             hRectangle: 45
             textRectangle: "Логин"
            }

            Item {
                height: 65
            }

            Input {
             wRectangle: 265
             hRectangle: 45
             textRectangle: "Пароль"
            }

            Button {
                width: 157
                height: 45

            }

        }

    }




}
