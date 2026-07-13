import QtQuick
import QtQuick.Layouts
import QtQuick.Effects
import QtQuick.Controls
import "../../components"


Rectangle {
    color: "#3B424B"

    ColumnLayout {
        anchors.fill: parent
        RowLayout {
            Layout.fillWidth: true
            Layout.alignment: Qt.AlignTop

            Layout.leftMargin: 40
            Layout.rightMargin: 40
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
                Layout.fillHeight: true
            }

    }
}
