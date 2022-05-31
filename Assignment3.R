# List all appropriate files from directory
options(max.print=999999)
weather_files <- list.files(pattern = "data201301")
class(weather_files)

# (Problem 1) initialize overall_Max 
overall_Max <- 0
# Loop through files and record max value to overall_Max
for (i in weather_files){
  files <- read.csv(i, row.names = 1)
  max_Val <- max(files)
  overall_Max <- max(c(overall_Max, max_Val))
} 

#Display result
print(overall_Max)

# (Problem 2) Read the first file in the directory
file1 <- read.csv("data20130101.csv")
# Find the maximum temp in the data.frame column temp
max_Temp <- max(file1$temp)
# Display result
print(max_Temp)

# (Problem 3) Initialize the accumulator variable overallMaxTemp <-0
overallMaxTemp <- 0
#Loop through files 
for (i in weather_files){
  files <- read.csv(i)
# Record max temp from each file in overallMaxTemp
  maxTemp <- max(files$temp)
  overallMaxTemp <- c(overallMaxTemp,maxTemp)
}
# Display OverallMaxTemp
max(overallMaxTemp)

# (Problem 4) Initialize accumulator variable to 0
mmtotalRainInches <- 0
# Loop through weather files
for (i in weather_files){
    files <- read.csv(i)
# Record last value in each files rain column
  max_Rain <- files[145,8]
# Sum all of the recorded values
  mmtotalRainInches<- sum(mmtotalRainInches,max_Rain)
}
# Convert from mm to inches
totalRainInches <- mmtotalRainInches/25.4
# Display results
totalRainInches
