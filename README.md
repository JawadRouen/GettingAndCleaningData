
The repository includes the following files:
- 'download_data.R': script that downloads the zip file containing raw Samsung data and unzip the file in the working directory
- 'run_analysis.R': processing the raw Samsung data to extract the tidy data in the file 'tidydata.txt'
- 'CodeBook.md': description of all 'tidydata.txt' variables.
- 'code_book_gen.R': script that generates the Code Book file based on columns names.

the script 'download_data.R' is the first script to execute in order to gather the raw Samsung data. Once the data stored locally, we have to execute the 'run_analysis.R' that process the Samsung data. 
Finally the "code_book_gen.R" is the last script to execute in order to generate the 'CodeBook.md'