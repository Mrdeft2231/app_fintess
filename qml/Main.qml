import QtQuick
import QtQuick.Layouts
import QtQuick.Effects
import QtQuick.Controls
import "components"
import "screens"


Window {
    width: 412
    height: 917
    visible: true
    title: qsTr("Авторизация")

    StackView {
        id: myStackView
        anchors.fill: parent
        // При старте загружаем компонент авторизации, который объявлен ниже
        initialItem: "screens/Auth.qml"
    }




}
