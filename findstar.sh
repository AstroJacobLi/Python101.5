#!/bin/bash

for i in M35*.fit
do
	solve-field --overwrite --scale-units degwidth --scale-low 0.3 --scale-high 1 --ra 92.225 --dec +24.342222 --radius 2 --downsample 4 ${i}
#        solve-field --overwrite --scale-units degwidth --scale-low 0.3 --scale-high 1 --ra 92.225 --dec +24.342222 --radius 2 --use-sextractor --downsample 4 ${i}
done
