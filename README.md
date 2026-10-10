# MLB-May-July-2026-0-1-vs.-1.0-count-hit-rate

# Background
Previously, I had done a similar project to this one, but just for the Yankees during the 2026 postseason, which presented a data set that I found to be unfortunately too small. 
Additionally, I realized that I had made a critical error that I needed to fix: I failed to include p-values, which would have indicated how much noise was in that data set.
When new data ceased flowing from the Yankees, I decided to go back to the core of the regular season and run some of the same functions on all of the 0-1 and 1-0 pitches thrown from May 1 to July 31. 
Soon after, I updated the research question from that project to the regular season.

# Research Question
How does the hit rate change on the pitches thrown on a 1-0 count versus an 0-1 count?

# Methodology
I used Baseball Savant's Statcast to pull all of the pitches thrown on 1-0 and 0-1 counts from May 1 to July 31. 
This time, I had to splice the files together, because Statcast limits the number of pitches in one file to 25,000 pitches. 
For simplicity, I had two .CSV file from May 1 to June 14 (one for 0-1 and one for 1-0), and two .CSV files from June 15 to July 31. 
I named the files "OhOneMJ.csv" for the 
0-1 count from May to June; "OhOneJJ.csv" for the 0-1 count from June to July; "OneOhMJ.csv" for the 1-0 count from May to June and "OneOhJJ.csv" for the 1-0 count from June to July.
I then used R Studio to make variables with all of the hits on the two counts after combining the files, and used a variable that indicated a hit to limit the pitch number to just the hits.
From there, I did some quick division, ran p-values on the results, and got my answer.

# Results
The division showed that on the 0-1 count, 5.59% of pitches resulted in a hit, while for the 1-0 count, 5.30% of pitches resulted in a hit. 
Those numbers are quite close together, but it is a difference.
Unfortunately, the 95% confidence interval was from -0.03 to +0.61 percentage points, just outside the range I would have liked to see. 
While that p-value does not completely invalidate the results, it does cast doubt on their accuracy and makes it hard to justify using this data in a real setting.

# Files
"OhOneMJ.csv": 0-1 count from May 1 to June 14
"OhOneJJ.csv": 0-1 count from June 15 to July 31
"OneOhMJ.csv": 1-0 count from May 1 to June 14
"OneOhJJ.csv": 1-0 count from June 15 to July 31
"RegSeasonHits01-10.R": the script I ran
