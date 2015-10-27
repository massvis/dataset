# Dataset

This data corresponds to the following papers: 

<dl>
What Makes a Visualization Memorable?<br>
Borkin, M., Vo, A., Bylinskii, Z., Isola, P., Sunkavalli, S., Oliva, A., & Pfister, H.<br>
IEEE Transactions on Visualization and Computer Graphics (Proceedings of InfoVis 2013)<br><br>

Beyond Memorability: Visualization Recognition and Recall.<br>
Borkin, M., Bylinskii, Z., Kim, N.W., Bainbridge C.M., Yeh, C.S., Borkin, D., Pfister, H., & Oliva, A.<br>
IEEE Transactions on Visualization and Computer Graphics (Proceedings of InfoVis 2015)<br>
</dl>

Please cite these papers if you use this data.

On this public github repository we can only provide the meta-data and labels.
To obtain the source images, please fill out the following [request form](http://massvis.mit.edu/#data).

By using this dataset, you are agreeing to the following license agreement:
> Access to, and use of, the images, and annotations in this dataset are for research and educational uses only. No commercial use, reproduction or distribution of the images, or any modifications thereof, is permitted.* 

---

*To use any of these images in a research paper or technical report, do not exceed thumbnail size.

This data contains taxonomic labels and attributes for 393 visualizations. These include the source, category, and type of each visualization, as well as the following attributes: data-ink ratio, number of distinctive colors, black & white, visual density, human recognizable object (HRO), and human depiction. We also provide the transcribed title for each visualization and where the title was located on the visualization, as well as whether the visualization contained data or message redundancy. From Borkin et al. 2013 we include at-a-glance memorability scores (after 1 second of viewing) and from Borkin, Bylinskii, et al. 2015 we include prolonged memorability scores (after 10 seconds of viewing). To get the data that also includes eye movements and user-generated textual descriptions (Borkin, Bylinskii, et al. 2015), [go to this page](https://github.com/massvis/eyetracking/blob/master/README.md).

###[targets393_metadata.mat](https://github.com/massvis/dataset/blob/master/matlab_files/targets393_metadata.mat)

This is a Matlab allImages struct. For instance, the fields for the i-th image are: 

Identifying information:
* `allImages(i).filename` (and associated full path `allImages(i).impath`) corresponds to a target image that you can download by filling out the [request form](http://massvis.mit.edu/#data)
* `allImages(i).source` the source website for the visualization
* `allImages(i).category` the source category by number (or `allImages(i).category_label` by letter) - one of: government/world organizations (4, G), news media (3, N), infographics (2, I), or scientific publications (1, S)
* `allImages(i).vistype` based on the visualization taxonomy (from Borkin et al. 2013) - one of: area, bars, circles, diagrams, distribution, grid/matrix, lines, maps, points, table, trees and networks
* `allImages(i).title` manually transcribed from the visualization
* `allImages(i).title_loc` top-left, bottom-right, top-center, etc.
* `allImages(i).imsize` the size at which the visualization was shown to participants in the eyetracking laboratory study

Attributes:
* `allImages(i).minimalist` corresponds to data-ink ratio: ratio of data to non-data elements - from low (1) to high (3)	
* `allImages(i).color` corresponds to # distinct colors: 1 color (1) or 2-6 colors (2) or 7 or more colors (3)
* `allImages(i).bwg` corresponds to black&white: binary attribute - yes (y) or no (n)	
* `allImages(i).clutter` corresponds to visual density: low visual density (1) to high visual density (3)
* `allImages(i).object` corresponds to human recognizable object: presence (y) or absence (n)
* `allImages(i).person` corresponds to human depiction: presence (y) or absence (n)

Memorability scores:	
* `allImages(i).HR` the (at-a-glance) hit rate score from the Amazon Mechanical Turk (AMT) experiments with 1 second of viewing per visualization (Borkin et al. 2013)
* `allImages(i).FAR` the (at-a-glance) false alarm rate score from the AMT experiments with 1 second of viewing per visualization (Borkin et al. 2013)
* `allImages(i).HR_inlab` the (prolonged viewing) hit rate score from the eyetracking laboratory experiments with 10 seconds of viewing per visualization (Borkin et al. 2015)

Annotations:
* `allImages(i).redun_data` corresponds to data redundancy - a binary attribute indicating whether or not the data being presented is visually encoded in more than one way (e.g. via the addition of quantitative values as labels or the use of channels such as color, size, or opacity to represent a value already exhibited in a visualization such as the x- or y-axis values) - see Borkin et al. 2015 for details
*  `allImages(i).redun_message` corresponds to message redundancy - a binary attribute indicating whether the main conclusion or message of the visualization is explicitly presented to the viewer in multiple ways (e.g. via explanatory annotations, labels, text, and pictures) - see Borkin et al. 2015 for details
* `allImages(i).rem` if any of the experimental participants complained about difficulty of reading the text in the visualization, we removed the visualization from the textual description analysis and marked this field with a 1

To examine the polygon element labels, they are stored in the `allImages(i).annotation` field for the i-th visualization. For example, `allImages(i).annotation(j).object` is all the label information associated with the j-th polygon in the i-th visualization: the name, and unique polygon ID, as well as the (x,y) locations of all the polygon's vertices.

To visually plot the polygons on top of the i-th visualization:

* make sure you have the target visualizations [downloaded]([request form](http://massvis.mit.edu/#data))
* download the [LabelMe Matlab toolbox](http://labelme2.csail.mit.edu/Release3.0/browserTools/php/matlab_toolbox.php)
* replace LMplot.m with the function provided here
* run: `LMplot(allImages(i).annotation,imread(allImages(i).impath))`

