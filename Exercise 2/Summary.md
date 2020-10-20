Aim: Python for data science

Objectives:
  Exploring data structures of python (list, tuple, dictionary, sets, array, dataframes)
  Exploring numpy and pandas libraries of python

Exercise 1: Visualizations
  Import dataset store it as dataframe in python: filename = "https://s3-api.us-geo.objectstorage.softlayer.net/cf-courses-data/CognitiveClass/DA0101EN/auto.csv"
  Add column headers to dataset
  Read the first 5 lines and display
  Are there missing data? Or illegal characters in the dataframe?
  Replace the character “?” with nan
  Count missing values in each column and print it with column name
    "normalized-losses": 41 missing data
    "num-of-doors": 2 missing data
    "bore": 4 missing data
    "stroke" : 4 missing data
    "horsepower": 2 missing data
    "peak-rpm": 2 missing data
    "price": 4 missing data (Response)
  Delete price rows that have missing data
  Normalized losses,bore,stroke,horsepower,peak-rpm, - replace missing with mean of the column
  Num-of-doors replace missing with most frequent value in the column
  Reset the index of dataframe
  Check datatype of columns and convert numeric/quantitative variables to float or int
  Transform city-mpg and highway-mpg into liters/100km using conversion formula:
    L/100km = 235/mpg i.e. create two new column “city-L/100km” and “highway-L/100km”
  Normalize columns length, width, height so that their values range from 0 to 1. Replace original values with original_value/max_value
  Plot the histogram of horsepower to see its distribution
  Create three equal sized bins “low”, “medium”, “high” and organize values in column horsepower into new column “horsepower-binned”
  Plot distribution of “horsepower-binned”
  Convert “fuel-type” into one-hot-encoded variables. Repeat same for “aspiration” and then drop columns “fuel-type” and “aspiration”

Exercise 2: Exploring variables

  Import the dataset: path='https://s3-api.us-geo.objectstorage.softlayer.net/cf-courses-data/CognitiveClass/DA0101EN/automobileEDA.csv'
  Import matplotlib, seaborn, numpy and pandas
  See dimensions of data frame and its data types for each column
  Calculate correlation between engine-size and price using corr function
  Identify variables with positive or negative correlation with price
  Identify datatype of “peak-rpm”
  Using seaborn regplot() - plot relation between “engine-size” and “price”. Comment on your observation.
  Identify using regplot() - which other variables can affect “price” and which do not affect it.
  Use seaborn pairplot() to identify which variables can affect “price”
  Draw a heatmap to plot the correlation in the dataframe
  With seaborn boxplot() - compare “body-style” with “price” 
  Continue for other categorical variables in the dataset.
  What do you infer from the boxplots about the relationship between the variables.
  Use describe() to get descriptive statistics of numeric variables
  Use describe() to get stats of categorical variables
  Get unique values in each categorical variable along with their frequency. What do you understand by doing this?
  Use groupby() to get the average price of “drive-wheels” wrt “price”. What do you understand by doing this?
  Repeat step 17 for other categorical variables.
  Use groupby() to find the average price for “drive-wheels”and”body-style” with price. Observation? Inference?
  Use pivot() on the result of step 19 to get “drive-wheels” as index and “body-style” as columns. Observations? Inference?
  Repeat step 19and20 for other combinations of independent variables wrt price. Observations? Inferences?
  Draw heatmap for result of step20
  Calculate the pearson correlation between “wheel-base” and “price”. What can you conclude from p-value (Hint: use stats from scipy which has pearsonr())
  Perform one way ANOVA test using f_oneway() of stats to check if different groups of “drive-wheels” are correlated with “price”. 
    What do you understand from F-test and p-value results?
