# Dataset

This data corresponds to the following [paper](http://vcg.seas.harvard.edu/files/pfister/files/infovis_borkin-128-camera_ready_0.pdf): 

```
What Makes a Visualization Memorable?
Borkin, M., Vo, A., Bylinskii, Z., Isola, P., Sunkavalli, S., Oliva, A., & Pfister, H.
IEEE Transactions on Visualization and Computer Graphics (Proceedings of InfoVis 2013)
```

Please cite this paper if you use this data.

On this public github repository we can only provide the meta-data and labels.
To obtain the source images, please fill out the following [request form](http://massvis.mit.edu/#data).

By using this dataset, you are agreeing to the following license agreement:
> Access to, and use of, the images, and annotations in this dataset are for research and educational uses only. No commercial use, reproduction or distribution of the images, or any modifications thereof, is permitted.* 

---

*To use any of these images in a research paper or technical report, do not exceed thumbnail size.

This data contains taxonomic labels and attributes for 410 visualizations. These include the source, category, and type of each visualization, as well as the following attributes: data-ink ratio, number of distinctive colors, black & white, visual density, human recognizable object (HRO), and human depiction. We also provide the transcribed title for each visualization and where the title was located on the visualization. From the Amazon Mechanical Turk (AMT) Experiments, we provide the number of hits, misses, false alarms, and correct rejections per image, which can be converted into the desired memorability scores (HR, FAR, dprime, etc.).

###[targets410_metadata.csv](https://github.com/massvis/dataset/blob/master/csv_files/targets410_metadata.csv)

Columns:

Identifying information:
* **filename**: corresponds to a target image that you can download by filling out the [request form](http://massvis.mit.edu/#data)
* **source**: the source website for the visualization
* **category**: the source category - one of: government/world organizations (G), news media (N), infographics (I), or scientific publications (S)
* **vistype**: based on the visualization taxonomy (from Borkin et al. 2013) - one of: area, bars, circles, diagrams, distribution, grid/matrix, lines, maps, points, table, trees and networks
* **title**: manually transcribed from the visualization
* **title location**: top-left, bottom-right, top-center, etc.

Attributes:
* **attr: data-ink ratio**: ratio of data to non-data elements - from low (1) to high (3)	
* **attr: # distinct colors**: 1 color (1) or 2-6 colors (2) or 7 or more colors (3)
* **attr: black&white**: binary attribute - yes (y) or no (n)	
* **attr: visual density**: low visual density (1) to high visual density (3)
* **attr: human recognizable object**: presence (y) or absence (n)	
* **attr: human depiction**: presence (y) or absence (n)

Memorability scores:		
* **mem: hits**: total number of times (across all AMT workers) visualization was recognized when shown for the second time
* **mem: misses**: total number of times visualization was not recognized (missed) when shown for the second time	
* **mem: false alarms**: total number of times visualization was mistakenly recognized when shown for the first time
* **mem: correct rejections**: total number of times visualization was shown for the first time and not mistakenly recognized

To convert these scores to HR (hit rate), FAR (false alarm rate), dprime and a few others, see the first page of [http://figrim.mit.edu/supplemental.pdf](http://figrim.mit.edu/supplemental.pdf). 
