/* GCompris - Explore.qml
*
* Copyright (C) 2015 Ayush Agrawal <ayushagrawal288@gmail.com>
*
* Authors:
*   Beth Hadley <bethmhadley@gmail.com> (GTK+ version)
*   Ayush Agrawal <ayushagrawal288@gmail.com> (Qt Quick port)
*   Djalil MESLI <djalilmesli@gmail.com> (Qt Quick port)
*   Johnny Jazeix <jazeix@gmail.com> (Qt Quick port)
*
*   This program is free software; you can redistribute it and/or modify
*   it under the terms of the GNU General Public License as published by
*   the Free Software Foundation; either version 3 of the License, or
*   (at your option) any later version.
*
*   This program is distributed in the hope that it will be useful,
*   but WITHOUT ANY WARRANTY; without even the implied warranty of
*   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
*   GNU General Public License for more details.
*
*   You should have received a copy of the GNU General Public License
*   along with this program; if not, see <http://www.gnu.org/licenses/>.
*/

import QtQuick 2.1
import GCompris 1.0
import QtGraphicalEffects 1.0

import "../../core"
//import "../explore_farm_animals"
import "explore-level.js" as Activity

ActivityBase {
    id: activity

//    property var dataset
//    property string backgroundImage
    property int numberofLevel
    property string url : "qrc:/gcompris/src/activities/explore_monuments/resource/"
    property bool hasAudioQuestions

    onStart: focus = true
    onStop: {}

    pageComponent: Item {
        id: background

        /* In order to accept any screen ratio the play area is always a 1000x1000
         * square and is centered in a big background image that is 2000x2000
         */

        Image {
            id: bg
            source: dataset.item.backgroundImage
            sourceSize.width: 2000 * ApplicationInfo.ratio
            sourceSize.height: 2000 * ApplicationInfo.ratio
            width: 2000 * background.playRatio
            height: width
            anchors.centerIn: parent
        }

        Rectangle {
            width: background.playWidth
            height: background.playHeight
            anchors.centerIn: parent
            border.width: 2
            border.color: "black"
            color: "transparent"
            visible: false /* debug to see the play area */
        }

        property bool horizontalLayout: background.width > background.height
        property int playX: (activity.width - playWidth) / 2
        property int playY: (activity.height - playHeight) / 2
        property int playWidth: horizontalLayout ? activity.height : activity.width
        property int playHeight: playWidth
        property double playRatio: playWidth / 1000

        focus: true

        signal start
        signal stop

        Component.onCompleted: {
            activity.start.connect(start)
            activity.stop.connect(stop)
        }

        // Add here the QML items you need to access in javascript
        QtObject {
            id: items

            property GCAudio audioEffects: activity.audioEffects
            property Item main: activity.main
            property alias background: background
            property alias bar: bar
            property alias bonus: bonus
            property alias score: score
            property alias subscore: subscore
            property alias dataModel: dataModel
            property alias dataset: dataset
            property alias instruction: instruction
            property alias instructionText: instructionText
            property alias descriptionPanel: descriptionPanel
            property bool hasAudioQuestions: activity.hasAudioQuestions
//            property int currentLevel
            property string currentAudio
//            property string backgroundImage: bg
            property var questionOrder
            property var currentQuestion: items.dataset ? items.dataset.item.tab[items.questionOrder[subscore.currentSubLevel]] : ""
        }

        Loader{
            id : dataset
            asynchronous: false
            onStatusChanged: {
                // todo check if this should be done there. Probably because model is empty before loading a dataset or may not have the good size after changing level!
                if (status == Loader.Ready) {
                    // create table of size N filled with numbers from 0 to N
                    items.questionOrder = Array.apply(null, {length: items.dataModel.count}).map(Number.call, Number)
                }
            }
        }

        onStart: { Activity.start(items, url, numberofLevel) }
        onStop: { Activity.stop() }

        Keys.onEscapePressed: {
            descriptionPanel.visible ? descriptionPanel.visible = false : home()
        }

        Repeater {
            id: dataModel
            model: dataset && dataset.item && dataset.item.tab ? dataset.item.tab.length : 0
            AnimalLevels {
                questionId: index
                source: dataset.item.tab[index].image
                x: background.playX + background.playWidth * dataset.item.tab[index].x - width / 2
                y: background.playY + background.playHeight * dataset.item.tab[index].y - height / 2
                width: background.playWidth * dataset.item.tab[index].width
                height: background.playHeight * dataset.item.tab[index].height
                title: dataset.item.tab[index].title
                description: dataset.item.tab[index].text
                imageSource: dataset.item.tab[index].image2
                question: dataset.item.tab[index].text2
                audio: dataset.item.tab[index].audio !== undefined ? dataset.item.tab[index].audio : ""
                Component.onCompleted: {
                    displayDescription.connect(displayDescriptionItem)
                }
            }
        }

        function displayDescriptionItem(animal) {
            descriptionPanel.title = animal.title
            descriptionPanel.description = animal.description
            descriptionPanel.imageSource = animal.imageSource
            descriptionPanel.visible = true
        }

        AnimalDescriptionLevels {
            id: descriptionPanel
            width: parent.width
            height: parent.height
            visible: false
            z: instruction.z + 1
            onVisibleChanged: {
                if(visible) {
                    animDescription.start()
                }
                else {
                    // stop if audio was playing
                    items.audioEffects.stop()
                }
            }

            NumberAnimation {
                id: animDescription
                target: descriptionPanel
                property: horizontalLayout ? "x" : "y"
                from: horizontalLayout ? -width : -height
                to: 0
                duration: 1200
                easing.type: Easing.OutBack
            }
        }

        Score {
            id: score
            visible: true
        }

        Row {
            id: row
            spacing: 10 * ApplicationInfo.ratio
            anchors.fill: parent
            anchors.margins: 10 * ApplicationInfo.ratio
            layoutDirection: leftCol.width === 0 ? Qt.RightToLeft : Qt.LeftToRight

            Column {
                id: leftCol
                spacing: 10 * ApplicationInfo.ratio

                Rectangle {
                    id: question
                    width: row.width - rightCol.width - 10 * ApplicationInfo.ratio
                    height: questionText.height
                    color: '#CCCCCCCC'
                    radius: 10
                    border.width: 3
                    border.color: "black"
                    visible: items.score.currentSubLevel == 3 || (items.score.currentSubLevel == 2 && !items.hasAudioQuestions)
                    GCText {
                        id: questionText
                        horizontalAlignment: Text.AlignHCenter
                        verticalAlignment: Text.AlignVCenter
                        anchors.centerIn: parent.Center
                        color: "black"
                        width: parent.width
                        wrapMode: Text.Wrap
                        // todo handle changing of text depending on the level
                        text: items.currentQuestion ? items.currentQuestion.text2 : ""
                    }
                }

                Rectangle {
                    id: instruction
                    width: row.width - rightCol.width - 10 * ApplicationInfo.ratio
                    height: instructionText.height
                    color: "#CCCCCCCC"
                    radius: 10
                    border.width: 3
                    border.color: "black"

                    GCText {
                        id: instructionText
                        horizontalAlignment: Text.AlignHCenter
                        verticalAlignment: Text.AlignVCenter
                        anchors.centerIn: parent.Center
                        color: "black"
                        width: parent.width
                        wrapMode: Text.Wrap
                        text: dataset.item ? dataset.item.instructions[items.score.currentSubLevel - 1].text : ""
                    }
                    MouseArea {
                        anchors.fill: parent
                        onClicked: instruction.visible = false
                        enabled: instruction.visible
                    }
                }
            }

            Column {
                id: rightCol
                spacing: 10 * ApplicationInfo.ratio

                Score {
                    id: subscore
                    visible: items.score.currentSubLevel != 1
                    anchors {
                        bottom: undefined
                        right: undefined
                    }
                }

                BarButton {
                    id: repeatItem
                    source: "qrc:/gcompris/src/core/resource/bar_repeat.svg";
                    sourceSize.width: 60 * ApplicationInfo.ratio
                    anchors.right: parent.right
                    visible: items.score.currentSubLevel == 2 && activity.hasAudioQuestions //&& ApplicationSettings.isAudioVoicesEnabled
                    onClicked: Activity.repeat();
                }
            }
        }

        DialogHelp {
            id: dialogHelp
            onClose: home()
        }

        Bar {
            id: bar
            content: BarEnumContent { value: help | home | level }
            onHelpClicked: {
                displayDialog(dialogHelp)
            }
            onPreviousLevelClicked: Activity.previousLevel()
            onNextLevelClicked: Activity.nextLevel()
            onHomeClicked: activity.home()
        }

        Bonus {
            id: bonus
        }
    }
}
