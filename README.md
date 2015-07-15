# Dataset

We make available the data and annotations used in the following papers: 

<dl>
(1) What Makes a Visualization Memorable?<br>
Borkin, M., Vo, A., Bylinskii, Z., Isola, P., Sunkavalli, S., Oliva, A., & Pfister, H.<br>
IEEE Transactions on Visualization and Computer Graphics (Proceedings of InfoVis 2013)

(2) A Crowdsourced Alternative to Eye-tracking for Visualization Understanding.<br>
Kim, N.W., Bylinskii, Z., Borkin, M., Oliva, A., Gajos, K.Z., & Pfister, H.
Proceedings of the ACM Conference Extended Abstracts on Human Factors in Computing Systems (CHI EA '15)

(3) Beyond Memorability: Visualization Recognition and Recall.
Borkin, M., Bylinskii, Z., Kim, N.W., Bainbridge C.M., Yeh, C.S., Borkin, D., Pfister, H., & Oliva, A.
IEEE Transactions on Visualization and Computer Graphics (Proceedings of InfoVis 2015)
</dl>

Please cite the corresponding papers if you use this data.

On this public github repository we can only provide the meta-data and labels.
To obtain the source images, please fill out the following [request form](http://massvis.mit.edu/#data).

By using this dataset, you are agreeing to the following license agreement:
> Access to, and use of, the images, and annotations in this dataset are for research and educational uses only. No commercial use, reproduction or distribution of the images, or any modifications thereof, is permitted.* 

---

###[allImages.csv](https://github.com/massvis/dataset/blob/master/allImages.csv)

This file contains taxonomic labels and attributes for 393 visualizations, as discussed in (1). These include the source, category, and type of each visualization, as well as the following attributes: data-ink ratio, number of distinctive colors, black & white, visual density, human recognizable object (HRO), and human depiction. From (3), we also provide the transcribed title for each visualization and where the title was located on the visualization, as well as whether the visualization contained data or message redundancy. From (1) we include at-a-glance memorability scores (after 1 second of viewing) and from (3) we include prolonged memorability scores (after 10 seconds of viewing). 
