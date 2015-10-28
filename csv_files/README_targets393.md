# Dataset

This data corresponds to the following papers: 

```
What Makes a Visualization Memorable?
Borkin, M., Vo, A., Bylinskii, Z., Isola, P., Sunkavalli, S., Oliva, A., & Pfister, H.
IEEE Transactions on Visualization and Computer Graphics (Proceedings of InfoVis 2013)
```

```
Beyond Memorability: Visualization Recognition and Recall.
Borkin, M.*, Bylinskii, Z.*, Kim, N.W., Bainbridge C.M., Yeh, C.S., Borkin, D., Pfister, H., & Oliva, A.
IEEE Transactions on Visualization and Computer Graphics (Proceedings of InfoVis 2015)
```

Please cite these papers if you use this data.

On this public github repository we can only provide the meta-data and labels.
To obtain the source images, please fill out the following [request form](http://massvis.mit.edu/#data).

By using this dataset, you are agreeing to the following license agreement:
> Access to, and use of, the images, and annotations in this dataset are for research and educational uses only. No commercial use, reproduction or distribution of the images, or any modifications thereof, is permitted.* 

---

*To use any of these images in a research paper or technical report, do not exceed thumbnail size.

This data contains taxonomic labels and attributes for 393 visualizations. These include the source, category, and type of each visualization, as well as the following attributes: data-ink ratio, number of distinctive colors, black & white, visual density, human recognizable object (HRO), and human depiction. We also provide the transcribed title for each visualization and where the title was located on the visualization, as well as whether the visualization contained data or message redundancy. From [Borkin et al. 2013](http://vcg.seas.harvard.edu/files/pfister/files/infovis_borkin-128-camera_ready_0.pdf) we include at-a-glance memorability scores (after 1 second of viewing) and from [Borkin, Bylinskii, et al. 2015](http://vcg.seas.harvard.edu/files/pfister/files/infovis_submission251-camera.pdf) we include prolonged memorability scores (after 10 seconds of viewing). To get the data that also includes eye movements and user-generated textual descriptions ([Borkin, Bylinskii, et al. 2015](http://vcg.seas.harvard.edu/files/pfister/files/infovis_submission251-camera.pdf)), [go to this page](https://github.com/massvis/eyetracking/blob/master/README.md).

###[targets393_metadata.csv](https://github.com/massvis/dataset/blob/master/csv_files/targets393_metadata.csv)

Columns:

Identifying information:
* **filename**: corresponds to a target image that you can download by filling out the [request form](http://massvis.mit.edu/#data).
* **source**: the source website for the visualization
* **category**: the source category - one of: government/world organizations (G), news media (N), infographics (I), or scientific publications (S)
* **vistype**: based on the visualization taxonomy (from [Borkin et al. 2013](http://vcg.seas.harvard.edu/files/pfister/files/infovis_borkin-128-camera_ready_0.pdf)) - one of: area, bars, circles, diagrams, distribution, grid/matrix, lines, maps, points, table, trees and networks
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
* **mem: at-a-glance HR**: the hit rate score from the Amazon Mechanical Turk (AMT) experiments with 1 second of viewing per visualization (Borkin et al. 2013)
* **mem: at-a-glance FAR**: the false alarm rate score from the AMT experiments with 1 second of viewing per visualization ([Borkin et al. 2013](http://vcg.seas.harvard.edu/files/pfister/files/infovis_borkin-128-camera_ready_0.pdf))
* **mem: prolonged HR**: the hit rate score from the eyetracking experiments with 10 seconds of viewing per visualization ([Borkin, Bylinskii, et al. 2015](http://vcg.seas.harvard.edu/files/pfister/files/infovis_submission251-camera.pdf))

Annotations:
* **data redundancy:** a binary attribute indicating whether or not the data being presented is visually encoded in more than one way (e.g. via the addition of quantitative values as labels or the use of channels such as color, size, or opacity to represent a value already exhibited in a visualization such as the x- or y-axis values) - see [Borkin, Bylinskii, et al. 2015](http://vcg.seas.harvard.edu/files/pfister/files/infovis_submission251-camera.pdf) for details
* **message redundancy:** a binary attribute indicating whether the main conclusion or message of the visualization is explicitly presented to the viewer in multiple ways (e.g. via explanatory annotations, labels, text, and pictures) - see [Borkin, Bylinskii, et al. 2015](http://vcg.seas.harvard.edu/files/pfister/files/infovis_submission251-camera.pdf) for details
* **illegible:** if any of the experimental participants complained about difficulty of reading the text in the visualization, we removed the visualization from the textual description analysis and marked this column with a 1

###[targets393_elementLabels.zip](https://github.com/massvis/dataset/blob/master/csv_files/targets393_elementLabels.zip)

For each filename corresponding to one of the 393 visualizations, there is a comma-separated plain text file with all the polygon element labels for that visualization.
There is one polygon vertex per line, formatted as follows: polygon ID (one ID per polygon in an image), polygon name (not unique to a polygon - e.g. multiple annotations may be labeled in an image), x and y vertex locations in the image. Note that all the vertices for a single polygon will be located on consecutive lines of the file.
