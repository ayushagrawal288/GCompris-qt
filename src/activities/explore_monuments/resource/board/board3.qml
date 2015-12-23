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
    property string backgroundImage: "qrc:/gcompris/src/activities/explore_monuments/resource/india/background.png"
    //   property string instruction: qsTr("Drag and Drop the items to make them match")
    property var tab : [
        {
            "image": "qrc:/gcompris/src/activities/explore_monuments/resource/wonders/key.png",
            "title": qsTr("Mont-Saint-Michel, Normandy"),
            "text": qsTr("Chichén Itzá (at the mouth of the well of the Itza) was a large pre-Columbian city built by the Maya people of the Terminal Classic period. The archaeological site is located in Tinúm Municipality, Yucatán State, Mexico."),
            "image2": "qrc:/gcompris/src/activities/explore_monuments/resource/france/MontStMichelBrittanyFrance.jpg",
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
            "image2": "qrc:/gcompris/src/activities/explore_monuments/resource/france/Carcasonneouterwall.jpg",
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
            "image2": "qrc:/gcompris/src/activities/explore_monuments/resource/france/ChevetcathédraleReims.jpg",
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
            "image2": "qrc:/gcompris/src/activities/explore_monuments/resource/france/PontduGard.jpg",
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
            "image2": "qrc:/gcompris/src/activities/explore_monuments/resource/france/Arlesamphitheater.jpg",
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
            "image2": "qrc:/gcompris/src/activities/explore_monuments/resource/france/ChâteaudeChambord.jpg",
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
            "image2": "qrc:/gcompris/src/activities/explore_monuments/resource/france/Rocamadourfda.jpg",
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
            "image2": "qrc:/gcompris/src/activities/explore_monuments/resource/france/MainentranceofthePalaisdesPapes.jpg",
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
            "image2": "qrc:/gcompris/src/activities/explore_monuments/resource/france/ChateaudeDhenonceau..jpg",
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
            "image2": "qrc:/gcompris/src/activities/explore_monuments/resource/france/Eiffel.jpg",
            "text2" : qsTr("Eiffel Tower"),
            "x" : "0.689",
            "y" : "0.445",
            "height" : "0.07",
            "width" : "0.07"
        },
//        {
//            "image": "qrc:/gcompris/src/activities/explore_monuments/resource/wonders/key.png",
//            "title": qsTr("Rang Ghar, Assam"),
//            "text": qsTr("Chichén Itzá (at the mouth of the well of the Itza) was a large pre-Columbian city built by the Maya people of the Terminal Classic period. The archaeological site is located in Tinúm Municipality, Yucatán State, Mexico."),
//            "image2": "qrc:/gcompris/src/activities/explore_monuments/resource/india/ranggharassam.png",
//            "text2" : qsTr("Rang Ghar, Assam"),
//            "x" : "0.842",
//            "y" : "0.37",
//            "height" : "0.07",
//            "width" : "0.07"
//        },
//        {
//            "image": "qrc:/gcompris/src/activities/explore_monuments/resource/wonders/key.png",
//            "title": qsTr("Qutub Minar, Delhi"),
//            "text": qsTr("Chichén Itzá (at the mouth of the well of the Itza) was a large pre-Columbian city built by the Maya people of the Terminal Classic period. The archaeological site is located in Tinúm Municipality, Yucatán State, Mexico."),
//            "image2": "qrc:/gcompris/src/activities/explore_monuments/resource/india/qutubminardelhi.png",
//            "text2" : qsTr("Qutub Minar, Delhi"),
//            "x" : "0.336",
//            "y" : "0.31",
//            "height" : "0.07",
//            "width" : "0.07"
//        }
    ]

    property var instruction : [
        {
            "text": qsTr("Explore Monuments from around the globe.")
        },
        {
            "text": qsTr("Click on location where the given Monument is.")
        }
    ]
}
