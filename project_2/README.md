# Project 2

The final project will consist of a dataset analysis along the lines of what we have seen in the async and in Bill's week 12 office hours.

## The Setup & Instructions
- 2 to 3 people (no exceptions)

### The Data Analysis
- Unguided in the fact that there are no strict (you must do X or you must do Y)
- Will consist of an analysis of either an *instructor approved dataset of your finding* or one that we have preapproved. You may join several datasets together for example to be able to answer questions like, after 2 days of rain, is felony crime higher in NYC?
- This is not a strict statistical analysis and we are not doing any predictive modeling. We don't want to deal with randomization, inferential statistics or anything of the sort. Just note interesting things and feel free to discuss them.

### The Proposal

**THE PROPOSAL IS DUE BY APRIL 12.**

With your group come up with a 2 page proposal about the questions that you intend to ask of the data. 
This should include:
- Initial plots, figures or tables. 
- References to column names and the analysis that they may provide. 
- Additional datasets that you plan on including in your analysis like the weather data. This means links, columns that you'll join on, etc.
- What you plan to cover in the final report and how you plan on organizing it.
- Who is in your group.

You should have started digging into your analysis at this point and the proposal is an expression of its viability to the instructors. We should have the sense that this is something you will be able to deliver on (and that the data will support you in doing so).

## The Reports

**THE REPORTS ARE DUE BY APRIL 26**

### The Formal PDF

- This should be a formal, professional, write up of what you discovered and how you discovered it. 
- This should be of a high information density. 
- This should be single spaced and included appropriate references to data sources and how to access them. This should mirror something you would turn into a boss, a journal.
- This report should be 5+ pages in length but no longer than 10 pages.
- This report should include images, figures, equations, and tables that may help the reader. 
  - Explanations for plots, figures, and tables should be included and obviously relevant to that part of the report.
  - Keep this all relevant.
  - This report should not include any code. Small images of equations or references to those are fine.

### Lab Notebook: Jupyter Notebook

This section doesn't have a hard page length but it should be a lab notebook style report. It should talk about things you tried that didn't work, things that you explored that didn't teach you anything or didn't give any definitive results, as well as including what did work. 

It should be somewhat narrative style in that you talk about the process of learning and the process of working with this data. This should include figures and tables but should also be cleaned up so no code that doesn't execute, no error messages, etc. This can and will likely include duplicate content from the PDF (in fact this might be the narrative that you use to describe the process of report 1), so don't worry about make it totally different.

The top of this notebook should explain exactly how to download the data [you should provide a dropbox/google drive link if your data isn't immediately available for download] and then everything should just work. There may be certain exceptions here but please email me if you think you're going to have some problem here.

**This is required to be on every student's (in the group) github account and publicly available.**

### Zipped Folder: Code + Data
This should just be a dump of all other material involved in your project. Old notebooks, data, etc.

# The Data

## Instructor Pre-Approved Datasets
- [Political Ad Archive](http://politicaladarchive.org/data/)
- [Open Food Facts](http://world.openfoodfacts.org/data)
- [NYPD 7 Major Felony Incidents](https://catalog.data.gov/dataset/nypd-7-major-felony-incidents)
- [MYC Parking Violations](https://data.cityofnewyork.us/dataset/Parking-Violations-Issued-Fiscal-Year-2015/c284-tqph)
- [Chicago Crime Incidents](https://data.cityofchicago.org/Public-Safety/Crimes-2001-to-present/ijzp-q8t2)
- [US Gov't Web Logs](https://analytics.usa.gov/)
- [Citi Bike Share NYC](http://www.citibikenyc.com/system-data)
- [SF Bay Area Bike Share Data](http://www.bayareabikeshare.com/open-data)
- The airlines dataset that we explored in class and any subsets thereof (so you may choose to analyze several years for example). Obviously a repeat of the analysis that I performed would not be appropriate :).

## Potential Locations for Other Datasets
**REMEMBER NONE OF THESE HAVE BEEN APPROVED, YOU HAVE TO TALK TO BILL TO GET THEM APPROVED. NO EXCEPTIONS.**

- [Historical Weather Data](https://www.ncdc.noaa.gov/data-access/land-based-station-data/land-based-datasets/global-historical-climatology-network-ghcn)
  - This can be a bit difficult to figure out what to download. [In this discussion](https://news.ycombinator.com/item?id=10465342) there seem to be some pointers on how to get at it. This is dataset is pre-approved as a **supplemental** dataset, but please come to me if your group would like this to be their focus. I imagine there are some good resources for how best to download this data across the web but I just haven't had the time to search for them.
- [Data is Plural](http://tinyletter.com/data-is-plural/archive)
  - I got the pre-approved datasets primarily from here. Pretty extensive list.
- [Awesome Public Datasets](https://github.com/caesar0301/awesome-public-datasets)
  - Awesome list that's worth saving for future reference. Be sure to actually download and explore the data before sending me the link because sometimes it's harder than it appears. There are some awesome datasets here like the NYC taxi dataset.
- [Data.gov](http://data.gov/)
  - All gov't data, which is good!
- [OpenDataCache.com](http://www.opendatacache.com/)
  - Cache of the above link - can sometimes speed up downloads.
- [Reddit/r/Datasets](https://www.reddit.com/r/datasets)
  - Community generated and definitely some potential for good datasets. Worth searching.

#### To get a dataset approved:
1. Send me a description of the data including a link to the exact dataset or a place where I can download it in one click w/o registering or anything like that. 
    - The data needs to be in a raw text file format like json or csv (or at least very easy to convert to that format).
    - Please report the size of the dataset or the subset you plan on looking at. This is **not** a big data project.
2. Show that you've done some preliminary research that there will be enough interesting questions to answer in the data. This will include column names, information about missing data
