import QtQuick
import QtQuick.Layouts
import QtQuick.Effects


Item {
    id: root
    property alias colorRectangle: rectangle.color
    property alias radiusRectangle: rectangle.radius
    property alias wRectangle: rectangle.width
    property alias hRectangle: rectangle.height
    property alias textRectangle: textRectangle.text
    
    property alias colorText: textInput.color
    property alias fontSize: textInput.font.pixelSize
    
    Rectangle {
        
        
        id: rectangle
        width: 265
        height: 45
        color: Qt.rgba(217, 217, 217, 0.2)
        clip: true
        radius: 9

        ShadowText {

            id: textRectangle
            anchors.left: parent.left
            anchors.leftMargin: 15
            anchors.verticalCenter: parent.verticalCenter
            visible: textInput.text.length === 0
            font.bold: false
            font.pixelSize: 14
            text: ""
        }
        
        TextInput {
            id: textInput
            anchors.centerIn: parent
            horizontalAlignment: TextInput.AlignLeft
            verticalAlignment: TextInput.AlignVCenter
            font.pixelSize: 25
            color: Qt.rgba(217, 217, 217, 0.8)
            width: parent.width - 20
        }
    }
    
    
    
}
