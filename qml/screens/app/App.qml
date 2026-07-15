import QtQuick
import QtQuick.Layouts
import QtQuick.Effects
import QtQuick.Controls
import QtQuick.Shapes.DesignHelpers 6.11
import "../../components"


Rectangle {
    color: "#3B424B"

    ColumnLayout {
        anchors.fill: parent
        RowLayout {
            Layout.fillWidth: true
            Layout.alignment: Qt.AlignTop

            Layout.leftMargin: 20
            Layout.rightMargin: 20
            Layout.topMargin: 40
            ArrowButton {
                Layout.preferredHeight: 25
                Layout.preferredWidth: 35
            }

            Item {
                Layout.fillWidth: true
            }

            SettingButton {
                Layout.preferredHeight: 25
                Layout.preferredWidth: 35
            }
        }

        Item {
            Layout.preferredHeight: 15
        }

        RowLayout {
            Layout.fillWidth: true
            Layout.alignment: Qt.AlignCenter


            ShButton {
                btBlockRadius: 100
                Layout.preferredWidth: 75
                Layout.preferredHeight: 75
                btBlockWidth: 75
                btBlockHeight: 75
                btImage: "../images/treadmill.png"
            }

            Item {
                Layout.preferredWidth: 35
            }

            EllipseShape {
                Layout.preferredWidth: 150
                Layout.preferredHeight: 150

            }

            Item {
                Layout.preferredWidth: 35
            }


            ShButton {
                btBlockRadius: 100
                Layout.preferredWidth: 75
                Layout.preferredHeight: 75
                btBlockWidth: 75
                btBlockHeight: 75
                btImage: "../images/dumbbells.png"
            }
        }


            Item {
                Layout.fillHeight: true
            }

            Rectangle {
                Layout.fillWidth: true
                Layout.preferredHeight: 90
                color: "#4C525E"

                gradient: Gradient {
                    orientation: Gradient.Horizontal
                    GradientStop { position: 0.52; color: "#31353D" }
                    GradientStop { position: 1; color: "#4C525E" }
                }

                RowLayout {
                    anchors.fill: parent
                    anchors.leftMargin: 60
                    anchors.rightMargin: 60
                    spacing: 15
                    Image {
                        Layout.alignment: Qt.AlignLeft
                        Layout.preferredWidth: 45
                        Layout.preferredHeight: 45
                        fillMode: Image.PreserveAspectFit
                        source: "../../images/calendar.svg"
                    }

                    ShButton {
                        Layout.alignment: Qt.AlignHCenter | Qt.AlignTop
                        Layout.topMargin: -25
                        btBlockRadius: 100
                        Layout.preferredWidth: 75
                        Layout.preferredHeight: 75
                        btBlockWidth: 75
                        btBlockHeight: 75
                        btImage: "../images/plus.svg"
                    }

                    Image {
                        Layout.alignment: Qt.AlignRight
                        Layout.preferredWidth: 45
                        Layout.preferredHeight: 45
                        fillMode: Image.PreserveAspectFit
                        source: "../../images/heart.svg"
                    }

                }
            }

    }
}
