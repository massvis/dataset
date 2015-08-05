# Dataset

This data corresponds to the following paper: 

<dl>
What Makes a Visualization Memorable?<br>
Borkin, M., Vo, A., Bylinskii, Z., Isola, P., Sunkavalli, S., Oliva, A., & Pfister, H.<br>
IEEE Transactions on Visualization and Computer Graphics (Proceedings of InfoVis 2013)<br><br>
</dl>

Please cite this paper if you use this data.

On this public github repository we can only provide the meta-data and labels.
To obtain the source images, please fill out the following [request form](http://massvis.mit.edu/#data).

By using this dataset, you are agreeing to the following license agreement:
> Access to, and use of, the images, and annotations in this dataset are for research and educational uses only. No commercial use, reproduction or distribution of the images, or any modifications thereof, is permitted.* 

---

*To use any of these images in a research paper or technical report, do not exceed thumbnail size.

###[targets410_metadata.csv](https://github.com/massvis/dataset/blob/master/targets410_metadata.csv)

This file contains taxonomic labels and attributes for 410 visualizations. These include the source, category, and type of each visualization, as well as the following attributes: data-ink ratio, number of distinctive colors, black & white, visual density, human recognizable object (HRO), and human depiction. We also provide the transcribed title for each visualization and where the title was located on the visualization. From the Amazon Mechanical Turk (AMT) Experiments, we also provide the number of hits, misses, false alarms, and correct rejections per image, which can be converted into the desired memorability scores (HR, FAR, dprime, etc.).

###[targets410_metadata.mat](https://github.com/massvis/dataset/blob/master/targets410_metadata.mat)

This is a Matlab allImages struct that contains all the fields discussed above. For example, allImages(i).source will print the source category for the i-th image. 
