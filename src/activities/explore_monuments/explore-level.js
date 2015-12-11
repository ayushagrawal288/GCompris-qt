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

var numberOfLevel
var items
var url
var numberofSubLevel
var currentlevel = 1

function start(items_,url_,levelcount_) {
    items = items_
    url = url_
    numberOfLevel = levelcount_
    items.currentLevel = 0
    items.score.currentSubLevel = 0
    items.score.numberOfSubLevels = items.dataModel.count
    numberofSubLevel = items.hasAudioQuestions ? 3 : 2;
    // create table of size N filled with numbers from 0 to N
    items.questionOrder = Array.apply(null, {length: items.dataModel.count}).map(Number.call, Number)

    initLevel()
}

function stop() {
    items.audioEffects.stop()
}

function initLevel() {
    items.bar.level = (currentlevel) + (items.currentLevel + 1)
    var filename = url + "board" + "/" + "board" + currentlevel + ".js"
    items.dataset.source = filename
//    var leveldata = items.dataset.item
//    items.backgroundImage = leveldata.backgroundImage.source
    // randomize the questions for level 2 and 3
    Core.shuffle(items.questionOrder);
    // Change the currentSubLevel value to 1 to be sure to update the question value
    // else if you are sublevel 0 and go to last level, the question is not the good one
    items.score.currentSubLevel = 1
    items.score.currentSubLevel = 0
    items.descriptionPanel.visible = false
    // Stop audio if necessary (switch from level 2 at beginning to a new level for example)
    items.audioEffects.stop()
    items.instruction.visible = true

    reload();
}

function nextLevel() {
    ++items.currentLevel
    if(numberOfLevel <= currentlevel && numberofSubLevel <= items.currentLevel)
    {
        currentlevel = 0
    }
    if (numberofSubLevel <= items.currentLevel) {
        currentlevel++
        items.currentLevel = 0
    }
    initLevel();
    if (items.currentLevel == 1) {
        items.score.currentSubLevel = 0;
        initSubLevel();
    }

}

function previousLevel() {
    if(--items.currentLevel < 0) {
        items.currentLevel = numberOfLevel - 1
    }
    initLevel();

    if(items.currentLevel == 1 && items.hasAudioQuestions) {
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

function initSubLevel() {
    if(items.score.currentSubLevel == items.dataModel.count) {
        items.bonus.good("smiley");
        items.score.currentSubLevel = 0;
        nextLevel()
    }
    else if(items.currentLevel == 1 && items.hasAudioQuestions) {
        items.audioEffects.play(getCurrentQuestion().audio);
    }
}

function nextSubLevel() {
    items.score.currentSubLevel ++;
    initSubLevel()
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
    return dataset.tab[items.questionOrder[items.score.currentSubLevel]];
}
