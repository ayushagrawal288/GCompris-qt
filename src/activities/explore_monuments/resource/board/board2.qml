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
            "title": qsTr("Golden Temple, Punjab"),
            "text": qsTr("Chichén Itzá (at the mouth of the well of the Itza) was a large pre-Columbian city built by the Maya people of the Terminal Classic period. The archaeological site is located in Tinúm Municipality, Yucatán State, Mexico."),
            "image2": "qrc:/gcompris/src/activities/explore_monuments/resource/india/goldentemplepunjab.png",
            "text2" : qsTr("Golden Temple, Punjab"),
            "x" : "0.278",
            "y" : "0.228",
            "height" : "0.07",
            "width" : "0.07"
        },
        {
            "image": "qrc:/gcompris/src/activities/explore_monuments/resource/wonders/key.png",
            "title": qsTr("Hawa Mahal, Rajasthan"),
            "text": qsTr("Chichén Itzá (at the mouth of the well of the Itza) was a large pre-Columbian city built by the Maya people of the Terminal Classic period. The archaeological site is located in Tinúm Municipality, Yucatán State, Mexico."),
            "image2": "qrc:/gcompris/src/activities/explore_monuments/resource/india/hawamahalrajasthan.png",
            "text2" : qsTr("Hawa Mahal, Rajasthan"),
            "x" : "0.216",
            "y" : "0.377",
            "height" : "0.07",
            "width" : "0.07"
        },
        {
            "image": "qrc:/gcompris/src/activities/explore_monuments/resource/wonders/key.png",
            "title": qsTr("Taj Mahal, Uttar Pradesh"),
            "text": qsTr("Chichén Itzá (at the mouth of the well of the Itza) was a large pre-Columbian city built by the Maya people of the Terminal Classic period. The archaeological site is located in Tinúm Municipality, Yucatán State, Mexico."),
            "image2": "qrc:/gcompris/src/activities/explore_monuments/resource/india/tajmahal.png",
            "text2" : qsTr("Taj Mahal, Uttar Pradesh"),
            "x" : "0.459",
            "y" : "0.36",
            "height" : "0.07",
            "width" : "0.07"
        },
        {
            "image": "qrc:/gcompris/src/activities/explore_monuments/resource/wonders/key.png",
            "title": qsTr("Gateway of India, Maharashtra"),
            "text": qsTr("Chichén Itzá (at the mouth of the well of the Itza) was a large pre-Columbian city built by the Maya people of the Terminal Classic period. The archaeological site is located in Tinúm Municipality, Yucatán State, Mexico."),
            "image2": "qrc:/gcompris/src/activities/explore_monuments/resource/india/gatewayindiamaharastra.png",
            "text2" : qsTr("Gateway of India, Maharashtra"),
            "x" : "0.179",
            "y" : "0.610",
            "height" : "0.07",
            "width" : "0.07"
        },
        {
            "image": "qrc:/gcompris/src/activities/explore_monuments/resource/wonders/key.png",
            "title": qsTr("Sanchi Stupas, Madhya Pradesh"),
            "text": qsTr("Chichén Itzá (at the mouth of the well of the Itza) was a large pre-Columbian city built by the Maya people of the Terminal Classic period. The archaeological site is located in Tinúm Municipality, Yucatán State, Mexico."),
            "image2": "qrc:/gcompris/src/activities/explore_monuments/resource/india/sanchistupasmadyapradesh.png",
            "text2" : qsTr("Sanchi Stupas, Madhya Pradesh"),
            "x" : "0.375",
            "y" : "0.461",
            "height" : "0.07",
            "width" : "0.07"
        },
        {
            "image": "qrc:/gcompris/src/activities/explore_monuments/resource/wonders/key.png",
            "title": qsTr("Ajanta Caves, Maharashtra"),
            "text": qsTr("Chichén Itzá (at the mouth of the well of the Itza) was a large pre-Columbian city built by the Maya people of the Terminal Classic period. The archaeological site is located in Tinúm Municipality, Yucatán State, Mexico."),
            "image2": "qrc:/gcompris/src/activities/explore_monuments/resource/india/ajantacavemaharastra.png",
            "text2" : qsTr("Ajanta Caves, Maharashtra"),
            "x" : "0.314",
            "y" : "0.624",
            "height" : "0.07",
            "width" : "0.07"
        },
        {
            "image": "qrc:/gcompris/src/activities/explore_monuments/resource/wonders/key.png",
            "title": qsTr("Sun Temple, Orrisa"),
            "text": qsTr("Chichén Itzá (at the mouth of the well of the Itza) was a large pre-Columbian city built by the Maya people of the Terminal Classic period. The archaeological site is located in Tinúm Municipality, Yucatán State, Mexico."),
            "image2": "qrc:/gcompris/src/activities/explore_monuments/resource/india/suntempleorrisa.png",
            "text2" : qsTr("Sun Temple, Orrisa"),
            "x" : "0.591",
            "y" : "0.584",
            "height" : "0.07",
            "width" : "0.07"
        },
        {
            "image": "qrc:/gcompris/src/activities/explore_monuments/resource/wonders/key.png",
            "title": qsTr("Mysore Palace, Karnataka"),
            "text": qsTr("Chichén Itzá (at the mouth of the well of the Itza) was a large pre-Columbian city built by the Maya people of the Terminal Classic period. The archaeological site is located in Tinúm Municipality, Yucatán State, Mexico."),
            "image2": "qrc:/gcompris/src/activities/explore_monuments/resource/india/mysorepalacekarnataka.png",
            "text2" : qsTr("Mysore Palace, Karnataka"),
            "x" : "0.295",
            "y" : "0.748",
            "height" : "0.07",
            "width" : "0.07"
        },
        {
            "image": "qrc:/gcompris/src/activities/explore_monuments/resource/wonders/key.png",
            "title": qsTr("Chaar Minar, Telangana"),
            "text": qsTr("Chichén Itzá (at the mouth of the well of the Itza) was a large pre-Columbian city built by the Maya people of the Terminal Classic period. The archaeological site is located in Tinúm Municipality, Yucatán State, Mexico."),
            "image2": "qrc:/gcompris/src/activities/explore_monuments/resource/india/chaarminartelangana.png",
            "text2" : qsTr("Chaar Minar, Telangana"),
            "x" : "0.405",
            "y" : "0.66",
            "height" : "0.07",
            "width" : "0.07"
        },
        {
            "image": "qrc:/gcompris/src/activities/explore_monuments/resource/wonders/key.png",
            "title": qsTr("Victoria Memorial, West Bengal"),
            "text": qsTr("Chichén Itzá (at the mouth of the well of the Itza) was a large pre-Columbian city built by the Maya people of the Terminal Classic period. The archaeological site is located in Tinúm Municipality, Yucatán State, Mexico."),
            "image2": "qrc:/gcompris/src/activities/explore_monuments/resource/india/victoriamemorialwstbengal.png",
            "text2" : qsTr("Victoria Memorial, West Bengal"),
            "x" : "0.689",
            "y" : "0.445",
            "height" : "0.07",
            "width" : "0.07"
        },
        {
            "image": "qrc:/gcompris/src/activities/explore_monuments/resource/wonders/key.png",
            "title": qsTr("Rang Ghar, Assam"),
            "text": qsTr("Chichén Itzá (at the mouth of the well of the Itza) was a large pre-Columbian city built by the Maya people of the Terminal Classic period. The archaeological site is located in Tinúm Municipality, Yucatán State, Mexico."),
            "image2": "qrc:/gcompris/src/activities/explore_monuments/resource/india/ranggharassam.png",
            "text2" : qsTr("Rang Ghar, Assam"),
            "x" : "0.842",
            "y" : "0.37",
            "height" : "0.07",
            "width" : "0.07"
        },
        {
            "image": "qrc:/gcompris/src/activities/explore_monuments/resource/wonders/key.png",
            "title": qsTr("Qutub Minar, Delhi"),
            "text": qsTr("Chichén Itzá (at the mouth of the well of the Itza) was a large pre-Columbian city built by the Maya people of the Terminal Classic period. The archaeological site is located in Tinúm Municipality, Yucatán State, Mexico."),
            "image2": "qrc:/gcompris/src/activities/explore_monuments/resource/india/qutubminardelhi.png",
            "text2" : qsTr("Qutub Minar, Delhi"),
            "x" : "0.336",
            "y" : "0.31",
            "height" : "0.07",
            "width" : "0.07"
        }
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
