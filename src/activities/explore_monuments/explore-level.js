/* GCompris - explore.js
*
* Copyright (C) 2015 Djalil MESLI <djalilmesli@gmail.com>
*
* Authors:
*   Beth Hadley <bethmhadley@gmail.com> (GTK+ version)
*   Djalil MESLI <djalilmesli@gmail.com> (Qt Quick port)
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

.pragma library
.import GCompris 1.0 as GCompris
.import "qrc:/gcompris/src/core/core.js" as Core

var levels
var items
var url
//var numberofSubLevel
var currentlevel = 1

/* todo add a 3rd variable to handle "subsublevels" :)
 * There should be one variable to say which level we are (for monuments: world, india..., for others explore activities, there is only one).
 * One to say the sublevel (let's call it mode: discovery when clicking, potential music questioning one and click on the element that matches the description).
 * One to say the actual progress when there are questions.
 *
 * Actually, we don't handle the first case. We handle the mode as level, and the progress as sublevel. You probably can't do it anymore like that for monuments.
*/

function start(items_,url_,levelcount_) {
    items = items_
    url = url_
    levels = levelcount_
//    items.currentLevel = 0
    items.score.currentSubLevel = 1
//    items.score.numberOfSubLevels = items.dataModel.count
//    numberofSubLevel = items.hasAudioQuestions ? 3 : 2;

    initLevel()
}

function stop() {
    items.audioEffects.stop()
}

function initLevel() {
    items.bar.level = (currentlevel)/* + (items.currentLevel + 1)*/
    var filename = url + "board" + "/" + "board" + currentlevel + ".qml"
    items.dataset.source = filename
//    var leveldata = items.dataset.item
//    items.backgroundImage = leveldata.backgroundImage.source
//    items.score.currentSubLevel = 0
    items.subscore.currentSubLevel = 0
    items.subscore.numberOfSubLevels = items.dataModel.count
    items.score.numberOfSubLevels = items.hasAudioQuestions ? 3 : 2;
    // randomize the questions for level 2 and 3
    Core.shuffle(items.questionOrder);
    // Change the currentSubLevel value to 1 to be sure to update the question value
    // else if you are sublevel 0 and go to last level, the question is not the good one
    items.subscore.currentSubLevel = 1
    items.subscore.currentSubLevel = 0
    items.descriptionPanel.visible = false
    // Stop audio if necessary (switch from level 2 at beginning to a new level for example)
    items.audioEffects.stop()
    items.instruction.visible = true

    reload();
}

function nextLevel() {
    ++items.score.currentSubLevel
    if(levels <= currentlevel && items.score.numberOfSubLevels < items.score.currentSubLevel)
    {
        currentlevel = 0
    }
    if (items.score.numberOfSubLevels < items.score.currentSubLevel) {
        currentlevel++
        items.score.currentSubLevel = 1
    }
    initLevel();
    if (items.score.currentSubLevel == 2) {
        items.subscore.currentSubLevel = 0;
        initSubSubLevel();
    }
}

function previousLevel() {
    if(--items.score.currentSubLevel < 1) {
        items.score.currentSubLevel = levels - 1
    }
    initLevel();

    if(items.score.currentSubLevel == 2 && items.hasAudioQuestions) {
        items.audioEffects.play(getCurrentQuestion().audio);
    }
}

function isComplete() {
    for(var i = 0 ; i < items.dataModel.count ; ++ i) {
        if(!items.dataModel.itemAt(i).starVisible)
            return false;
    }
    return true;
}

function initSubSubLevel() {
    if(items.subscore.currentSubLevel == items.dataModel.count) {
        items.bonus.good("smiley");
        items.subscore.currentSubLevel = 0;
        nextLevel()
    }
    else if(items.score.currentSubLevel == 2 && items.hasAudioQuestions) {
        items.audioEffects.play(getCurrentQuestion().audio);
    }
}

function nextSubSubLevel() {
    items.subscore.currentSubLevel ++;
    initSubSubLevel()
}

function reload() {
    for(var i = 0 ; i < items.dataModel.count ; ++ i) {
        items.dataModel.itemAt(i).starVisible = false;
    }
}

function repeat() {
    items.audioEffects.play(getCurrentQuestion().audio);
}

function getCurrentQuestion() {
    return items.dataset.item.tab[items.questionOrder[items.subscore.currentSubLevel]];
}
