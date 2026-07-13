import QtQuick
import QtQuick.Layouts
import QtQuick.Effects


Item {
    id: root
    // Создаем свойства (properties), которые можно будет менять снаружи
    property alias text: multiText.text
    property alias font: multiText.font
    property alias textColor: multiText.color
    property alias shadowColor: effect.shadowColor

    property alias wrapMode: multiText.wrapMode
    property alias horizontalAlignment: multiText.horizontalAlignment


    
    // Неявные размеры, чтобы компонент автоматически подстраивался под размер текста
    implicitWidth: multiText.implicitWidth
    implicitHeight: multiText.implicitHeight
    
    Text {
        id: multiText
        text: qsTr("Авториация")
        color: "#76DDB3"
        font.bold: true
        font.pixelSize: 40
        
        
    }
    
    MultiEffect {
        id: effect
        anchors.fill: multiText
        source: multiText
        
        shadowEnabled: true
        shadowColor: "white"
        shadowOpacity: 0.25
        shadowBlur: 1
        shadowHorizontalOffset: 0
        shadowVerticalOffset: 4
    }
    
}
