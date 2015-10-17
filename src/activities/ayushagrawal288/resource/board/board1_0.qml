/* GCompris
 *
 * Copyright (C) 2015 Bruno Coudoin <bruno.coudoin@gcompris.net>
 *
 * Authors:
 *   Bruno Coudoin <bruno.coudoin@gcompris.net> (GTK+ version)
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
import QtQuick 2.0

QtObject {
    property string instruction: qsTr("Monuments of India")
    property variant levels: [
        {
            "pixmapfile" : "india/background.png",
            "type" : "SHAPE_BACKGROUND_IMAGE"
        },
        /*{
            "pixmapfile" : "india/jammu_and_kashmir.png",
            "toolTipText" : "Jammu and Kashmir",
            "x" : "0.313",
            "y" : "0.111"
        },
        {
            "pixmapfile" : "india/himachal_pradesh.png",
            "toolTipText" : "Himachal Pradesh",
            "x" : "0.337",
            "y" : "0.205"
        },*/
        {
            "pixmapfile" : "india/goldentemplepunjab.png",
            "toolTipText" : "Golden Temple, Punjab",
            "x" : "0.278",
            "y" : "0.228"
        },
        /*{
            "pixmapfile" : "india/harayana.png",
            "toolTipText" : "Harayana",
            "x" : "0.296",
            "y" : "0.294"
        },
        {
            "pixmapfile" : "india/uttarakhand.png",
            "toolTipText" : "Uttarakhand",
            "x" : "0.403",
            "y" : "0.267"
        },*/
        {
            "pixmapfile" : "india/hawamahalrajasthan.png",
            "toolTipText" : "Hawa Mahal, Rajasthan",
            "x" : "0.216",
            "y" : "0.377"
        },
        {
            "pixmapfile" : "india/tajmahalup.png",
            "toolTipText" : "Taj Mahal, Uttar Pradesh",
            "x" : "0.459",
            "y" : "0.36"
        },
        /*{
            "pixmapfile" : "india/bihar.png",
            "toolTipText" : "Bihar",
            "x" : "0.623",
            "y" : "0.4"
        },
        {
            "pixmapfile" : "india/gujarat.png",
            "toolTipText" : "Gujarat",
            "x" : "0.124",
            "y" : "0.507"
        },*/
        {
            "pixmapfile" : "india/sanchistupasmadyapradesh.png",
            "toolTipText" : "Sanchi Stupas, Madhya Pradesh",
            "x" : "0.375",
            "y" : "0.461"
        },
        /*{
            "pixmapfile" : "india/jharkhand.png",
            "toolTipText" : "Jharkhand",
            "x" : "0.621",
            "y" : "0.471"
        },*/
        {
            "pixmapfile" : "india/ajantacavemaharastra.png",
            "toolTipText" : "Ajanta Caves, Maharashtra",
            "x" : "0.314",
            "y" : "0.624"
        },
        /*{
            "pixmapfile" : "india/chhattisgarh.png",
            "toolTipText" : "Chhattisgarh",
            "x" : "0.511",
            "y" : "0.559"
        },*/
        {
            "pixmapfile" : "india/suntempleorrisa.png",
            "toolTipText" : "Sun Temple, Orrisa",
            "x" : "0.591",
            "y" : "0.584"
        },
        /*{
            "pixmapfile" : "india/goa.png",
            "toolTipText" : "Goa",
            "x" : "0.208",
            "y" : "0.733"
        },*/
        {
            "pixmapfile" : "india/mysorepalacekarnataka.png",
            "toolTipText" : "Mysore Palace, Karnataka",
            "x" : "0.295",
            "y" : "0.748"
        },
        {
            "pixmapfile" : "india/chaarminartelangana.PNG",
            "toolTipText" : "Chaar Minar, Telangana",
            "x" : "0.405",
            "y" : "0.66"
        },
/*
        {
            "pixmapfile" : "india/andhra_pradesh.png",
            "toolTipText" : "Andhra Pradesh",
            "x" : "0.454",
            "y" : "0.71"
        },
        {
            "pixmapfile" : "india/kerala.png",
            "toolTipText" : "Kerala",
            "x" : "0.286",
            "y" : "0.885"
        },
        {
            "pixmapfile" : "india/tamil_nadu.png",
            "toolTipText" : "Tamil Nadu",
            "x" : "0.371",
            "y" : "0.875"
        },*/
        {
            "pixmapfile" : "india/victoriamemorialwstbengal.png",
            "toolTipText" : "Victoria Memorial, West Bengal",
            "x" : "0.689",
            "y" : "0.445"
        },
       /* {
            "pixmapfile" : "india/sikkim.png",
            "toolTipText" : "Sikkim",
            "x" : "0.702",
            "y" : "0.344"
        },*/
        {
            "pixmapfile" : "india/ranggharassam.png",
            "toolTipText" : "Rang Ghar Assam",
            "x" : "0.842",
            "y" : "0.37"
        },
       /* {
            "pixmapfile" : "india/arunachal_pradesh.png",
            "toolTipText" : "Arunachal Pradesh",
            "x" : "0.891",
            "y" : "0.305"
        },
        {
            "pixmapfile" : "india/nagaland.png",
            "toolTipText" : "Nagaland",
            "x" : "0.891",
            "y" : "0.37"
        },
        {
            "pixmapfile" : "india/manipur.png",
            "toolTipText" : "Manipur",
            "x" : "0.884",
            "y" : "0.416"
        },
        {
            "pixmapfile" : "india/mizoram.png",
            "toolTipText" : "Mizoram",
            "x" : "0.854",
            "y" : "0.473"
        },
        {
            "pixmapfile" : "india/tripura.png",
            "toolTipText" : "Tripura",
            "x" : "0.819",
            "y" : "0.457"
        },
        {
            "pixmapfile" : "india/meghalaya.png",
            "toolTipText" : "Meghalaya",
            "x" : "0.796",
            "y" : "0.395"
        },
        {
            "pixmapfile" : "india/lakshadweep_islands.png",
            "toolTipText" : "Lakshadweep Islands",
            "x" : "0.153",
            "y" : "0.888"
        },
        {
            "pixmapfile" : "india/andaman_and_nicobar_islands.png",
            "toolTipText" : "Andaman and Nicobar Islands",
            "x" : "0.909",
            "y" : "0.876"
        },*/
        {
            "pixmapfile" : "india/qutubminardelhi.png",
            "toolTipText" : "Qutub Minar, Delhi",
            "x" : "0.336",
            "y" : "0.31",
            "heigth" : "0.1",
            "width" : "0.03"
        }
    ]
}
