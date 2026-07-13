import QtQuick
import QtQuick.Layouts
import QtQuick.Effects
import QtQuick.Controls


Item {
    id:root
    property alias btText: controlButton.text
    property alias btSizeText: controlButton.font.pixelSize
    property alias btBoldText: controlButton.font.bold
    
    property alias btBlockWidth: backgr.implicitWidth
    property alias btBlockHeight: backgr.implicitHeight
    
    property alias btBlockRadius: buttonBg.radius
    
    
    Button {
        id: controlButton
        font.pixelSize: 19
        font.bold: true
        contentItem: Text {
            text: controlButton.text
            font: controlButton.font
            color: "white"
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
        }
        
        background: Item {
            id: backgr
            implicitWidth: 155
            implicitHeight: 45
            
            Rectangle {
                id: buttonBg
                anchors.fill: parent
                radius: 25
                opacity: controlButton.enabled ? 1 : 0.3
                color: controlButton.down ? "#768BDD" : "#76DDB3"
                visible: false
            }
            
            MultiEffect {
                id: effect
                anchors.fill: buttonBg
                source: buttonBg
                shadowEnabled: true
                shadowColor: "black"
                shadowOpacity: 0.40
                shadowBlur: 1.0
                shadowHorizontalOffset: 0
                shadowVerticalOffset: 0
            }
        }
    }
    
}
