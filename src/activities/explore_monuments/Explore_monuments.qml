/* GCompris - explore_world_animals.qml
*
* Copyright (C) 2015 Ayush Agrawal <ayushagrawal288@gmail.com>
*
* Authors:
*   Beth Hadley <bethmhadley@gmail.com> (GTK+ version)
*   Ayush Agrawal <ayushagrawal288@gmail.com> (Qt Quick port)
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

//import "../explore_monuments"
//import "../explore_farm_animals"
//import "explore_monuments.js" as Dataset

    ExploreLevels {
//        questionId : index
        id: activity

        numberofLevel: 2
        url : "qrc:/gcompris/src/activities/explore_monuments/resource/"
//        dataset: Dataset
//        backgroundImage: "qrc:/gcompris/src/activities/explore_monuments/resource/wonders/background4.png"
        hasAudioQuestions: false
    }


