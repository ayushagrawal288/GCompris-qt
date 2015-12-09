/* GCompris - explore_monuments.js
*
* Copyright (C) 2015 Johnny Jazeix <jazeix@gmail.com>
*
* Authors:
*   Beth Hadley <bethmhadley@gmail.com> (GTK+ version)
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

//var backgroundImage =
//            {
//                "source" : "qrc:/gcompris/src/activities/explore_monuments/resource/india/background.png"
//            }

var tab = [
            {
                "image": "qrc:/gcompris/src/activities/explore_monuments/resource/wonders/key.png",
                "title": qsTr("Chichén Itzá"),
                "text": qsTr("Chichén Itzá (at the mouth of the well of the Itza) was a large pre-Columbian city built by the Maya people of the Terminal Classic period. The archaeological site is located in Tinúm Municipality, Yucatán State, Mexico."),
                "image2": "qrc:/gcompris/src/activities/explore_monuments/resource/wonders/chichenitza.jpg",
                "text2": qsTr("Chichén Itzá"),
                "x" : "0.159",
                "y" : "0.474",
                "height" : "0.07",
                "width" : "0.07"
            },
            {
                "image": "qrc:/gcompris/src/activities/explore_monuments/resource/wonders/key.png",
                "title": qsTr("Colosseum"),
                "text": qsTr("Colosseum is an oval amphitheatre in the centre of the city of Rome, Italy. Built of concrete and sand, it is the largest amphitheatre ever built and is considered one of the greatest works of architecture and engineering ever. Construction began under the emperor Vespasian in 72 AD, and was completed in 80 AD under his successor and heir Titus. Further modifications were made during the reign of Domitian (81–96)."),
                "image2": "qrc:/gcompris/src/activities/explore_monuments/resource/wonders/romancolosseum.jpg",
                "text2": qsTr("Colosseum"),
                "x" : "0.489",
                "y" : "0.306",
                "height" : "0.07",
                "width" : "0.07"
            },
            {
                "image": "qrc:/gcompris/src/activities/explore_monuments/resource/wonders/key.png",
                "title": qsTr("Christ the Redeemer"),
                "text": qsTr("Christ the Redeemer is an Art Deco statue of Jesus Christ in Rio de Janeiro, Brazil. A symbol of Christianity across the world, the statue has also become a cultural icon of both Rio de Janeiro and Brazil."),
                "image2": "qrc:/gcompris/src/activities/explore_monuments/resource/wonders/christtheredeemer.jpg",
                "text2": qsTr("Christ the Redeemer"),
                "x" : "0.311",
                "y" : "0.684",
                "height" : "0.07",
                "width" : "0.07"
            },
            {
                "image": "qrc:/gcompris/src/activities/explore_monuments/resource/wonders/key.png",
                "title": qsTr("The Great Wall of China"),
                "text": qsTr("The Great Wall of China built along an east-to-west line across the historical northern borders of China to protect the Chinese states and empires against the raids and invasions of the various nomadic groups of the Eurasian Steppe. Several walls were being built as early as the 7th century. The Great Wall stretches from Dandong in the east, to Lop Lake in the west, along an arc that roughly delineates the southern edge of Inner Mongolia."),
                "image2": "qrc:/gcompris/src/activities/explore_monuments/resource/wonders/greatwallofchina.jpg",
                "text2": qsTr("The Great Wall of China"),
                "x" : "0.775",
                "y" : "0.342",
                "height" : "0.07",
                "width" : "0.07"
            },
            {
                "image": "qrc:/gcompris/src/activities/explore_monuments/resource/wonders/key.png",
                "title": qsTr("Machu Picchu"),
                "text": qsTr("Machu Picchu is situated on a mountain ridge above the Sacred Valley which is 80 kilometres (50 mi) northwest of Cuzco and through which the Urubamba River flows. Most archaeologists believe that Machu Picchu was built as an estate for the Inca emperor Pachacuti (1438–1472). Often mistakenly referred to as the 'Lost City of the Incas', it is the most familiar icon of Inca civilization."),
                "image2": "qrc:/gcompris/src/activities/explore_monuments/resource/wonders/machupicchu.jpg",
                "text2": qsTr("Machu Picchu"),
                "x" : "0.220",
                "y" : "0.654",
                "height" : "0.07",
                "width" : "0.07"
            },
            {
                "image": "qrc:/gcompris/src/activities/explore_monuments/resource/wonders/key.png",
                "title": qsTr("Petra"),
                "text": qsTr("Petra is a historical and archaeological city in the southern Jordanian governorate of Ma'an that is famous for its rock-cut architecture and water conduit system. Established possibly as early as 312 BC as the capital city of the Arab Nabataeans, it is a symbol of Jordan, as well as Jordan's most-visited tourist attraction."),
                "image2": "qrc:/gcompris/src/activities/explore_monuments/resource/wonders/petrajordan.jpg",
                "text2": qsTr("Petra"),
                "x" : "0.575",
                "y" : "0.398",
                "height" : "0.07",
                "width" : "0.07"
            },
            {
                "image": "qrc:/gcompris/src/activities/explore_monuments/resource/wonders/key.png",
                "title": qsTr("Taj Mahal, India"),
                "text": qsTr("The Taj Mahal  is a white marble mausoleum located on the southern bank of the Yamuna River in the Indian city of Agra. It was commissioned in 1632 by the Mughal emperor Shah Jahan reigned to house the tomb of his favorite wife of three, Mumtaz Mahal."),
                "image2": "qrc:/gcompris/src/activities/explore_monuments/resource/wonders/tajmahal.jpeg",
                "text2": qsTr("Taj Mahal"),
                "x" : "0.718",
                "y" : "0.410",
                "height" : "0.07",
                "width" : "0.07"
            }
        ]

var instruction = [
            {
                "text": qsTr("Explore Monuments from around the world.")
            },
            {
                "text": qsTr("Click on location where the given Monument is located.")
            }
        ]
