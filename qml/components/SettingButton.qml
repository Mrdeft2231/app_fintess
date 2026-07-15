import QtQuick
import QtQuick.Layouts
import QtQuick.Effects
import QtQuick.Controls


Item {
    id: root
    Rectangle {
        id: block
        anchors.fill: parent
        radius: 5
        visible: false


        gradient: Gradient {
            orientation: Gradient.Horizontal
            GradientStop { position: 0.52; color: "#31353D" }
            GradientStop { position: 1; color: "#4C525E" }
        }

        Image {
            id: img
            source: "../images/settings.png"
            anchors.centerIn: parent
        }
    }

    MultiEffect {
        id: effect
        anchors.fill: block
        source: block
        shadowEnabled: true
        shadowColor: "Black"
        shadowOpacity: 0.40
        shadowBlur: 1
        shadowHorizontalOffset: -2
        shadowVerticalOffset: 2
    }
}
