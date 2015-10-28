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

###all5k [[in csv format]](https://github.com/massvis/dataset/blob/master/csv_files/all5k_metadata.csv)

all5k contains 5,814 single- and multi-panel visualizations scraped from the web from seven different online sources making up a total of four different source categories (government and world organizations, news media, infographics, and scientific publications), as described in [Borkin et al. 2013](http://vcg.seas.harvard.edu/files/pfister/files/infovis_borkin-128-camera_ready_0.pdf). We provide the original URLs, source and category labels, as well as whether each visualization is single or multi-panel. 

###targets410 [[in csv format]](https://github.com/massvis/dataset/blob/master/csv_files/README_targets410.md)  [[in Matlab format]](https://github.com/massvis/dataset/blob/master/matlab_files/README_targets410.md)

targets410 includes the 410 target visualizations used in the Amazon Mechanical Turk (AMT) experiments presented in [Borkin et al. 2013](http://vcg.seas.harvard.edu/files/pfister/files/infovis_borkin-128-camera_ready_0.pdf). These are a subset of the single2k single-panel visualizations that have also been annotated with 6 attributes (data-ink ratio, number of distinct colors, black&white, visual density, human-recognizable object, human depiction). Apart from these attributes, we provide the original URLs, source and category labels, visualization types, transcribed visualization title and title location, as well as the memorability scores gathered from the AMT experiments for each visualization. 

###targets393 [[in csv format]](https://github.com/massvis/dataset/blob/master/csv_files/README_targets393.md)  [[in Matlab format]](https://github.com/massvis/dataset/blob/master/matlab_files/README_targets393.md)

targets393 includes the 393 visualizations that were used for the eye tracking experiments and analyses described in [Borkin, Bylinskii, et al. 2015](http://vcg.seas.harvard.edu/files/pfister/files/infovis_submission251-camera.pdf). We removed visualizations from targets410 that contained skewed aspect ratios for eye tracking. We include all the elements from targets410, as well as: memorability scores from the in-lab prolonged-exposure experiment, whether the visualization contains data redundancy and/or message redundancy, eye movements from 33 participants (average of 16.7 viewers per visualization), and free-form descriptions generated from memory by 33 participants (average of 7.3 descriptions per visualization). These descriptions have also been manually evaluated for the following attributes: description quality, possible inaccuracy, possible inference of additional information (above and beyond the contents of the visualization), possible confusion with another visualization, and which which visualization elements was the content from the description extracted from.


