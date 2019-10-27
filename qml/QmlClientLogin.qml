import QtQuick 2.0
import QtGraphicalEffects 1.12
import QtQuick.Controls 1.4
import QtQuick.Controls.Styles 1.4

Rectangle {


    signal s_Login(string ip,string port,string accout,string pwd);

    signal s_showToast(var str1)

    width: parent.width
    height: parent.height


    Image{
        anchors.fill: parent
        source: "qrc:/images/clientLoginBg.png"
    }

    Image{
        id:lefttopImg
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.leftMargin: 54
        anchors.topMargin: 44
        source: "qrc:/images/iEagleCam.png"
        layer.enabled: true

        layer.effect: DropShadow {

            horizontalOffset: 5
            verticalOffset: -2
            spread:0.5
            samples: 9
            radius: 12
            color:"#476BFD"
        }
    }

    Text {
       anchors.left: lefttopImg.left
       anchors.top: lefttopImg.bottom
       anchors.topMargin: 5
       font.family: "Roboto-Black"
       font.pointSize: 17
       font.bold: true
       font.italic: true
       color:"#476BFD"
       text: qsTr("PC Client")
    }

    Rectangle{
        id:rectlogin
        width: 676
        height: 702
        radius: 6
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter

        BorderImage {
            id: name
            source: "qrc:/images/loginFrame.png"
            anchors.fill: parent

        }

        Text {
            id: title
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.top: parent.top
            anchors.topMargin: 30
            color: "#476BFD"
            font.family: "Roboto-Black"
            font.bold: true
            font.pointSize: 36
            text: qsTr("Sign in")
        }


        Rectangle{
            id:rectAcc
            width: 360
            height: 50

            anchors.horizontalCenter: parent.horizontalCenter
            anchors.top: title.bottom
            anchors.topMargin: 30
            border.width: 1
            border.color: "#BABABA"
            radius: 6
            Image {
                id: img
                width: 30
                height: 30
                anchors.left: parent.left
                anchors.leftMargin: 10

                anchors.verticalCenter: parent.verticalCenter
                source: "qrc:/images/client_acc.png"
            }


            TextField {

                id:inputacc
                width: 360 - 61
                height: 30

                anchors.left: img.right
                anchors.leftMargin: 11
                anchors.verticalCenter: parent.verticalCenter

                textColor: "#999999"
                placeholderText: qsTr("Enter Account")
                text:"admin"
                style:TextFieldStyle {
                    textColor: "black"
                    background: Rectangle {


                        border.color: "#aaa"
                        border.width: 0
                    }
                }
            }
        }

        Rectangle{
            id:rectPwd
            width: 360
            height: 50

            anchors.horizontalCenter: parent.horizontalCenter
            anchors.top: rectAcc.bottom
            anchors.topMargin: 30
            border.width: 1
            border.color: "#BABABA"
            radius: 6
            Image {
                id: img1
                width: 30
                height: 30
                anchors.left: parent.left
                anchors.leftMargin: 10

                anchors.verticalCenter: parent.verticalCenter
                source: "qrc:/images/client_pwd.png"
            }


            TextField {
                id:inputpwd
                width: 360 - 61
                height: 30
                anchors.left: img1.right
                anchors.leftMargin: 11
                anchors.verticalCenter: parent.verticalCenter

                textColor: "#999999"
                placeholderText: qsTr("Enter Account")
                text:"admin"
                style:TextFieldStyle {
                    textColor: "black"
                    background: Rectangle {
                        border.color: "#aaa"
                        border.width: 0
                    }
                }
            }
        }


        CheckBox{
            id:checkedRemPwd
            anchors.left:rectPwd.left
            anchors.leftMargin: 5
            anchors.top: rectPwd.bottom
            anchors.topMargin: 10
            text: "Remember password"

            onCheckedChanged: {



            }

            style: CheckBoxStyle {
                indicator:
                    Image {
                    width: 20
                    height: 20
                    source: control.checked?"qrc:/images/client_remPwd.png":"qrc:/images/client_remPwd_S.png"
                }

                label: Text {
                    text: control.text
                    font.family: "Roboto-Medium"
                    font.pointSize: 12
                    color: control.checked ? "#9B9B9B" : "#000000"
                    verticalAlignment: Text.AlignVCenter

                }
            }

        }
        CheckBox{
            id:checkedAutoLogin
            anchors.right:rectPwd.right
            anchors.rightMargin: 5
            anchors.top: rectPwd.bottom
            anchors.topMargin: 10
            text: "Auto login"

            onCheckedChanged: {



            }

            style: CheckBoxStyle {
                indicator:
                    Image {
                    width: 20
                    height: 20
                    source: control.checked?"qrc:/images/client_remPwd.png":"qrc:/images/client_remPwd_S.png"
                }

                label: Text {
                    text: control.text
                    font.family: "Roboto-Medium"
                    font.pointSize: 12
                    color: control.checked ? "#9B9B9B" : "#000000"
                    verticalAlignment: Text.AlignVCenter

                }
            }

        }

        Text {
            id: txtNetworkType
            anchors.top: checkedAutoLogin.bottom
            anchors.topMargin: 21
            anchors.left: rectPwd.left
            text: qsTr("Network Type")
            font.family: "Roboto-Medium"
            font.pointSize: 15
            color: "black"
        }

        MyComBox{
            id:boxNetWorkType
            width: 360
            height: 50
            anchors.left: txtNetworkType.left
            anchors.top: txtNetworkType.bottom
            anchors.topMargin: 10
        }

        Text {
            id: txtSerInfo
            anchors.top: boxNetWorkType.bottom
            anchors.topMargin: 20
            anchors.left: rectPwd.left
            text: qsTr("Server")
            font.family: "Roboto-Medium"
            font.pointSize: 15
            color: "black"
        }



        TextField {
            id:inputSerIp
            width: 236
            height: 50
            anchors.left: txtSerInfo.left
            anchors.top: txtSerInfo.bottom
            anchors.topMargin: 10
            textColor: "#999999"
            placeholderText: qsTr("ip")
            text:"10.67.1.167"
            style:TextFieldStyle {
                textColor: "black"
                background: Rectangle {
                    border.color: "#BABABA"
                    border.width: 1
                }
            }
        }



        TextField {
            id:inputSerPort
            width: 114
            height: 50
            anchors.left: inputSerIp.right
            anchors.leftMargin: 10
            anchors.top: inputSerIp.top

            textColor: "#999999"
            placeholderText: qsTr("prot")
            text:"1883"
            style:TextFieldStyle {
                textColor: "black"
                background: Rectangle {
                    border.color: "#BABABA"
                    border.width: 1
                }
            }
        }

        Button{
            id:btnLogin
            width: 360
            height: 50
            anchors.top:inputSerPort.bottom
            anchors.topMargin: 40
            anchors.horizontalCenter: parent.horizontalCenter
            text: "Sign in"
            style:ButtonStyle{

                background: Rectangle {
                    width: 360
                    height: 50
                    radius: 10
                    color: control.pressed?"#aa476BFD":"#476BFD"
                }
                label: Text {
                    id: txt
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter

                    text:control.text
                    color: "#ffffff"
                }

            }

            onClicked: {

                s_Login(inputSerIp.text.toString(),inputSerPort.text.toString(),inputacc.text.toString(),inputpwd.text.toString())

            }
        }

    }
}