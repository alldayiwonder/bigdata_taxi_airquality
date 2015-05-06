#!/bin/bash
# Run hadoop

rm -rf output/HadoopOutput/
chmod +x map.py reduce.py
hadoop jar /usr/local/Cellar/hadoop/2.6.0/libexec/share/hadoop/tools/lib/hadoop-streaming-2.6.0.jar \
-D mapreduce.job.reduces=1 \
-file map.py \
-mapper map.py \
-file reduce.py \
-reducer reduce.py \
-input file:///Users/brunomacedo/Desktop/NYU-Poly/3rd-Semester/Big-Data/project/bigdata_taxi_airquality/mapreduce/input_test \
-output file:///Users/brunomacedo/Desktop/NYU-Poly/3rd-Semester/Big-Data/project/bigdata_taxi_airquality/mapreduce/output/HadoopOutput
