This code is licensed under Apache License, Version 2.0 (ASL2.0).
(c) Samy Chambi and Charles Allen

This project is a benchmark to evaluate Roaring and Concise bitmaps performances when used to boost more used analytical Druid's queries in production. 

Benchmarks are launched by executing repeat_query_densities.sh file of the root directory. Once finished, results can be found in the resDruidBenchs directory. Plots can be then generated with gnuplot using the plottingQueriesHistograms.gnuplot file that can be found in the druidQueries directory. Plots would be generated in the DruidQueriesFigures folder.     

A Druid cluster with TPCH data ingested is supposed to be running. To see how to launch a Druid cluster and ingest data on it, one would refer to the on-line documentation : http://druid.io/docs/0.8.2/misc/papers-and-talks.html

The broker node is supposed to be running on the local port localhost:8082. Otherwise, the information can be updated in the repeat_query_densities.sh file.

Enjoy :-)
