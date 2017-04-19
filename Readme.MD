# Million Song Dataset in SQL Server 2017
Importing and using the Million Song Dataset (https://labrosa.ee.columbia.edu/millionsong/) in SQL Server 2017

# Pre-requisites
First, get SQL Server 2017 (preview) from https://www.microsoft.com/en-us/sql-server/sql-server-2017

Next, download and copy the following files to a folder on your computer running SQL Server 2017 preview. The sample scripts assume this folder is C:\MSD on Windows; please modify accordingly based on your paths and OS versions.

- http://labrosa.ee.columbia.edu/millionsong/sites/default/files/AdditionalFiles/unique_tracks.txt
- http://labrosa.ee.columbia.edu/millionsong/sites/default/files/challenge/train_triplets.txt.zip (please un-zip this file manually in the same folder)
- http://labrosa.ee.columbia.edu/millionsong/sites/default/files/tasteprofile/sid_mismatches.txt

Next, clone this repo (or download a ZIP file), move the *.FMT files to C:\MSD (or the path of your choice, provided you modify the references to that path in the .SQL scripts accordingly) 

Then proceed to execute the .SQL scripts in sequence! Do note that importing the data (1_ImportSourceTables.SQL) can take a few minutes depending on the performance of your computer.

# Graph data in SQL Server 2017
Please refer to these documentation links for more details on the new functionality:

- https://docs.microsoft.com/en-us/sql/relational-databases/graphs/sql-graph-overview
- https://docs.microsoft.com/en-us/sql/relational-databases/graphs/sql-graph-architecture
- https://docs.microsoft.com/en-us/sql/relational-databases/graphs/sql-graph-sample

# Dataset Citations
Thierry Bertin-Mahieux, Daniel P.W. Ellis, Brian Whitman, and Paul Lamere. 
The Million Song Dataset. In Proceedings of the 12th International Society
for Music Information Retrieval Conference (ISMIR 2011), 2011.

The Echo Nest Taste profile subset, the official user data collection for the Million Song
Dataset, available at: http://labrosa.ee.columbia.edu/millionsong/tasteprofile

# More information about the data set and sources
More information about the Million Song Dataset and subsets / derivative datasets are available at:

- https://labrosa.ee.columbia.edu/millionsong/pages/getting-dataset
- https://labrosa.ee.columbia.edu/millionsong/tasteprofile
- https://labrosa.ee.columbia.edu/millionsong/blog/12-1-2-matching-errors-taste-profile-and-msd
- https://labrosa.ee.columbia.edu/millionsong/blog/12-2-12-fixing-matching-errors
- https://github.com/tbertinmahieux/MSongsDB
- https://bmcfee.github.io/papers/msdchallenge.pdf