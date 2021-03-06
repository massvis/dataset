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

###[targets410_metadata.mat](https://github.com/massvis/dataset/blob/master/matlab_files/targets410_metadata.mat)

This is a Matlab allImages struct. For instance, the fields for the i-th image are: 

Identifying information:
* `allImages(i).filename` (and associated full path `allImages(i).impath`) corresponds to a target image that you can download by filling out the [request form](http://massvis.mit.edu/#data)
* `allImages(i).source` the source website for the visualization
* `allImages(i).category` the source category by number (or `allImages(i).category_label` by letter) - one of: government/world organizations (4, G), news media (3, N), infographics (2, I), or scientific publications (1, S)
* `allImages(i).vistype` based on the visualization taxonomy (from [Borkin et al. 2013](http://vcg.seas.harvard.edu/files/pfister/files/infovis_borkin-128-camera_ready_0.pdf)) - one of: area, bars, circles, diagrams, distribution, grid/matrix, lines, maps, points, table, trees and networks
* `allImages(i).title` manually transcribed from the visualization
* `allImages(i).title_loc` top-left, bottom-right, top-center, etc.

Attributes:
* `allImages(i).minimalist` corresponds to data-ink ratio: ratio of data to non-data elements - from low (1) to high (3)	
* `allImages(i).color` corresponds to # distinct colors: 1 color (1) or 2-6 colors (2) or 7 or more colors (3)
* `allImages(i).bwg` corresponds to black&white: binary attribute - yes (y) or no (n)	
* `allImages(i).clutter` corresponds to visual density: low visual density (1) to high visual density (3)
* `allImages(i).object` corresponds to human recognizable object: presence (y) or absence (n)
* `allImages(i).person` corresponds to human depiction: presence (y) or absence (n)

Memorability scores:	
* `allImages(i).hits` total number of times (across all AMT workers) visualization was recognized when shown for the second time
* `allImages(i).misses` total number of times visualization was not recognized (missed) when shown for the second time	
* `allImages(i).false_alarms` total number of times visualization was mistakenly recognized when shown for the first time
* `allImages(i).correct_rejections` total number of times visualization was shown for the first time and not mistakenly recognized

See the Matlab script [calcMemScores.m](https://github.com/massvis/dataset/blob/master/matlab_files/calcMemScores.m) to convert these scores to HR, FAR, dprime, and a few other memorability measures.
