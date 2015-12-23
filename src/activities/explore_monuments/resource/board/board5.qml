/* GCompris
 *
 * Copyright (C) 2015 Bruno Coudoin <bruno.coudoin@gcompris.net>
 *
 * Authors:
 *   Bruno Coudoin <bruno.coudoin@gcompris.net> (GTK+ version)
 *   Pulkit Gupta <pulkitgenius@gmail.com> (Qt Quick port)
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
import QtQuick 2.0

QtObject {
    property string backgroundImage: "qrc:/gcompris/src/activities/explore_monuments/resource/usa/background.png"
    //   property string instruction: qsTr("Drag and Drop the items to make them match")
    property var tab : [
        {
            "image": "qrc:/gcompris/src/activities/explore_monuments/resource/wonders/key.png",
            "title": qsTr("Mont-Saint-Michel, Normandy"),
            "text": qsTr("Chichén Itzá (at the mouth of the well of the Itza) was a large pre-Columbian city built by the Maya people of the Terminal Classic period. The archaeological site is located in Tinúm Municipality, Yucatán State, Mexico."),
            "image2": "qrc:/gcompris/src/activities/explore_monuments/resource/france/MontStMichel.PNG",
            "text2" : qsTr("Mont-Saint-Michel, Normandy"),
            "x" : "0.278",
            "y" : "0.228",
            "height" : "0.07",
            "width" : "0.07"
        },
        {
            "image": "qrc:/gcompris/src/activities/explore_monuments/resource/wonders/key.png",
            "title": qsTr("Cité of Carcassonne, Languedoc"),
            "text": qsTr("Chichén Itzá (at the mouth of the well of the Itza) was a large pre-Columbian city built by the Maya people of the Terminal Classic period. The archaeological site is located in Tinúm Municipality, Yucatán State, Mexico."),
            "image2": "qrc:/gcompris/src/activities/explore_monuments/resource/france/Carcasonneouterwall.png",
            "text2" : qsTr("Cité of Carcassonne, Languedoc"),
            "x" : "0.216",
            "y" : "0.377",
            "height" : "0.07",
            "width" : "0.07"
        },
        {
            "image": "qrc:/gcompris/src/activities/explore_monuments/resource/wonders/key.png",
            "title": qsTr("Reims Cathedral, Champagne-Ardenne"),
            "text": qsTr("Chichén Itzá (at the mouth of the well of the Itza) was a large pre-Columbian city built by the Maya people of the Terminal Classic period. The archaeological site is located in Tinúm Municipality, Yucatán State, Mexico."),
            "image2": "qrc:/gcompris/src/activities/explore_monuments/resource/france/ChevetcathedraleReims.PNG",
            "text2" : qsTr("Reims Cathedral, Champagne-Ardenne"),
            "x" : "0.459",
            "y" : "0.36",
            "height" : "0.07",
            "width" : "0.07"
        },
        {
            "image": "qrc:/gcompris/src/activities/explore_monuments/resource/wonders/key.png",
            "title": qsTr("Pont du Gard, Languedoc"),
            "text": qsTr("Chichén Itzá (at the mouth of the well of the Itza) was a large pre-Columbian city built by the Maya people of the Terminal Classic period. The archaeological site is located in Tinúm Municipality, Yucatán State, Mexico."),
            "image2": "qrc:/gcompris/src/activities/explore_monuments/resource/france/PontduGard.PNG",
            "text2" : qsTr("Pont du Gard, Languedoc"),
            "x" : "0.179",
            "y" : "0.610",
            "height" : "0.07",
            "width" : "0.07"
        },
        {
            "image": "qrc:/gcompris/src/activities/explore_monuments/resource/wonders/key.png",
            "title": qsTr("Arles Amphitheatre, Provence"),
            "text": qsTr("Chichén Itzá (at the mouth of the well of the Itza) was a large pre-Columbian city built by the Maya people of the Terminal Classic period. The archaeological site is located in Tinúm Municipality, Yucatán State, Mexico."),
            "image2": "qrc:/gcompris/src/activities/explore_monuments/resource/france/Arlesamphitheater.PNG",
            "text2" : qsTr("Arles Amphitheatre, Provence"),
            "x" : "0.375",
            "y" : "0.461",
            "height" : "0.07",
            "width" : "0.07"
        },
        {
            "image": "qrc:/gcompris/src/activities/explore_monuments/resource/wonders/key.png",
            "title": qsTr("Chambord, Centre"),
            "text": qsTr("Chichén Itzá (at the mouth of the well of the Itza) was a large pre-Columbian city built by the Maya people of the Terminal Classic period. The archaeological site is located in Tinúm Municipality, Yucatán State, Mexico."),
            "image2": "qrc:/gcompris/src/activities/explore_monuments/resource/france/ChateaudeChambord.png",
            "text2" : qsTr("Chambord, Centre"),
            "x" : "0.314",
            "y" : "0.624",
            "height" : "0.07",
            "width" : "0.07"
        },
        {
            "image": "qrc:/gcompris/src/activities/explore_monuments/resource/wonders/key.png",
            "title": qsTr("Shrine of Rocamadour, Midi-Pyrénées"),
            "text": qsTr("Chichén Itzá (at the mouth of the well of the Itza) was a large pre-Columbian city built by the Maya people of the Terminal Classic period. The archaeological site is located in Tinúm Municipality, Yucatán State, Mexico."),
            "image2": "qrc:/gcompris/src/activities/explore_monuments/resource/france/Rocamadourfda.PNG",
            "text2" : qsTr("Shrine of Rocamadour, Midi-Pyrénées"),
            "x" : "0.591",
            "y" : "0.584",
            "height" : "0.07",
            "width" : "0.07"
        },
        {
            "image": "qrc:/gcompris/src/activities/explore_monuments/resource/wonders/key.png",
            "title": qsTr("Popes’ Palace, Avignon"),
            "text": qsTr("Chichén Itzá (at the mouth of the well of the Itza) was a large pre-Columbian city built by the Maya people of the Terminal Classic period. The archaeological site is located in Tinúm Municipality, Yucatán State, Mexico."),
            "image2": "qrc:/gcompris/src/activities/explore_monuments/resource/france/MainentranceofthePalaisdesPapes.PNG",
            "text2" : qsTr("Popes’ Palace, Avignon"),
            "x" : "0.295",
            "y" : "0.748",
            "height" : "0.07",
            "width" : "0.07"
        },
        {
            "image": "qrc:/gcompris/src/activities/explore_monuments/resource/wonders/key.png",
            "title": qsTr("Chenonceau Castle, Centre"),
            "text": qsTr("Chichén Itzá (at the mouth of the well of the Itza) was a large pre-Columbian city built by the Maya people of the Terminal Classic period. The archaeological site is located in Tinúm Municipality, Yucatán State, Mexico."),
            "image2": "qrc:/gcompris/src/activities/explore_monuments/resource/france/ChateaudeChenonceau.PNG",
            "text2" : qsTr("Chenonceau Castle, Centre"),
            "x" : "0.405",
            "y" : "0.66",
            "height" : "0.07",
            "width" : "0.07"
        },
        {
            "image": "qrc:/gcompris/src/activities/explore_monuments/resource/wonders/key.png",
            "title": qsTr("Eiffel Tower"),
            "text": qsTr("Chichén Itzá (at the mouth of the well of the Itza) was a large pre-Columbian city built by the Maya people of the Terminal Classic period. The archaeological site is located in Tinúm Municipality, Yucatán State, Mexico."),
            "image2": "qrc:/gcompris/src/activities/explore_monuments/resource/france/eiffeltower.PNG",
            "text2" : qsTr("Eiffel Tower"),
            "x" : "0.689",
            "y" : "0.445",
            "height" : "0.07",
            "width" : "0.07"
        },
    ]

    property var instructions : [
        {
            "text": qsTr("Monuments of US")
        },
        {
            "text": qsTr("Click on location where the given Monument is")
        }
    ]
}
