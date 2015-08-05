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

###[targets393_metadata.csv](https://github.com/massvis/dataset/blob/master/targets393_metadata.csv)

This file contains taxonomic labels and attributes for 393 visualizations. These include the source, category, and type of each visualization, as well as the following attributes: data-ink ratio, number of distinctive colors, black & white, visual density, human recognizable object (HRO), and human depiction. From (3), we also provide the transcribed title for each visualization and where the title was located on the visualization, as well as whether the visualization contained data or message redundancy. From (1) we include at-a-glance memorability scores (after 1 second of viewing) and from (3) we include prolonged memorability scores (after 10 seconds of viewing). 

###[targets393_metadata.mat](https://github.com/massvis/dataset/blob/master/targets393_metadata.mat)

This is a Matlab allImages struct that contains all the fields discussed above. For example, allImages(i).source will print the source category for the i-th image. 
