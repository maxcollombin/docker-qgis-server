#!/bin/bash

wget https://github.com/qgis/QGIS-Training-Data/archive/release_3.22.zip
unzip release_3.22.zip
mkdir -p data/world
cp QGIS-Training-Data-release_3.22/exercise_data/qgis-server-tutorial-data/world.qgs data/world/
cp QGIS-Training-Data-release_3.22/exercise_data/qgis-server-tutorial-data/naturalearth.sqlite data/world
rm -rf QGIS-Training-Data-release_3.22 
rm release_3.22.zip
