import QtQuick 2.9
import QtQuick.Window 2.2

Window {
    id : winmain                // 아이디 부여
    visible: true               // 윈도우창 시각화
    width: 330                  // 윈도우 크기 설정
    height: 150
    minimumWidth: winmain.width           // 최대 및 최소사이즈 설정
    maximumWidth: winmain.width
    minimumHeight: winmain.height
    maximumHeight: winmain.height

    title: qsTr("O2 Contoller")

    Rectangle{
        id : main_box               // 상자에 id 부여
        width: winmain.width        // winmain 의 width 값상속
        height: winmain.height-40   // winmain 의 height 값상속
        color : "yellow"          // 창의 컬러 설정
        //radius : 10               // 외곽 끝 부분 라운드 값 설정
        border.color : "black"      // 외곽선 색 설정
        border.width : 1            // 외곽선 굵기 설정
        Rectangle{              // "supply" 표시할 상자
            id:supply_text
            x:10 ; y:5          // 첫음 시작 위치 설정
            width : 200         // text 넣을 상자 크기 설정 ( width/height)
            height : 33
            color : main_box.color   // main_box 와 동일한 색 설정
            Text{               // 위의상자에 "Supply" 표시
                anchors.verticalCenter: parent.verticalCenter  // 상자의 센터와 텍스트의 센터를 일치시킴 (세로축)
                anchors.left: parent.left // 상자의 왼쪽과 텍스트의 왼쪽을 일치 시킴
                text : "Supply Pressure"  // 출력할 텍스트
                font.pixelSize: 25        // 폰트 사이즈
                font.bold: true             // bold 적용
                }
        }

        Rectangle{              // supply 값을 표시할 상자
            id: supply_value
            anchors.left:supply_text.right  // 현 상자왼쪽으로 위의 상자 오른쪽에 붙임
            anchors.top:supply_text.top     // 현 상자위쪽으로 위의 상자 위쪽에 일치시킴
            width: supply_text.width-100
            height : supply_text.height
            color : main_box.color
            Text{
                anchors.verticalCenter: parent.verticalCenter
                anchors.right: parent.right
                text : "55 psi"
                font.pixelSize: 25
                font.bold: true
                }

        }

        Rectangle{              //flow 상자
            id: flow_text
            anchors.top:supply_text.bottom
            anchors.left: supply_text.left
            width : supply_text.width
            height : supply_text.height
            color : main_box.color

            Text{
                anchors.verticalCenter: parent.verticalCenter
                anchors.left: parent.left
                text : "O2 Flow rate"
                font.pixelSize: 25
                font.bold:true
            }
        Rectangle{          // flow 값 출력
            id: flow_value
            anchors.left:flow_text.right
            anchors.top:flow_text.top
            width: supply_value.width
            height : supply_value.height
            color : main_box.color
                Text{
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.right: parent.right
                    text : "20 LPM"
                    font.pixelSize: 25
                    font.bold: true
                    }
            }
        }
        Rectangle{
            id: atime_text
            anchors.top:flow_text.bottom
            anchors.left: flow_text.left
            width : supply_text.width
            height : supply_text.height
            color : main_box.color

                Text{
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.left: parent.left
                    text :"Available Time"
                    font.pixelSize: 25
                    font.bold: true
            }
                Rectangle{
                    id: atime_value
                    anchors.left:atime_text.right
                    anchors.top:atime_text.top
                    width: supply_value.width
                    height : supply_value.height
                    color : main_box.color
                    Text{
                        anchors.verticalCenter: parent.verticalCenter
                        anchors.right: parent.right
                        text : "30 Min"
                        font.pixelSize: 25
                        font.bold: true
                        }
                }
         }
        Rectangle{
            id : sub_box
            anchors.top: main_box.bottom
            width : main_box.width
            height : winmain.height-(main_box.height)
            color : main_box.color
            border.color: "black"
            border.width: 1

            Rectangle {
                id : charN
                anchors.verticalCenter: sub_box.verticalCenter
                x: 20
                width: 30
                height : 30
                color : "lightblue"
                Text{
                    anchors.centerIn: parent
                    text : "N"
                    font.pixelSize: 17
               }
            }
            Rectangle {
                id : charA
                anchors.verticalCenter: sub_box.verticalCenter
                anchors.left: charN.right
                anchors.margins: charN.x
                width : charN.width
                height : charN.height
                color : "lightgreen"
                Text{
                    anchors.centerIn: parent
                    text : "A"
                    font.pixelSize: 17
                }
            }
            Rectangle {
                id : charU
                anchors.verticalCenter: sub_box.verticalCenter
                anchors.left: charA.right
                anchors.margins: charN.x
                width : charN.width
                height : charN.height
                color : "orange"
                Text{
                    anchors.centerIn: parent
                    text : "U"
                    font.pixelSize: 17
                }
            }
            Rectangle {
                id : charS
                anchors.verticalCenter: sub_box.verticalCenter
                anchors.left: charU.right
                anchors.margins: charN.x
                width : charN.width
                height : charN.height
                color : "green"
                Text{
                    anchors.centerIn: parent
                    text : "S"
                    font.pixelSize: 17
                }
            }
            Rectangle{
                id : wifi
                anchors.verticalCenter: sub_box.verticalCenter
                anchors.left : charS.right
                anchors.margins: charN.x+30
                width : charN.width
                height : charN.height
                color : main_box.color
                Image{
                    anchors.centerIn: parent
                    scale: 0.1
                    source: "/wifi.png"
                }

                }


        }
    }

}
