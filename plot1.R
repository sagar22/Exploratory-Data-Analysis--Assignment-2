## Loading data will likely take a few seconds.

NEI <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")

# Have total emissions from PM2.5 decreased in the United States from 1999 to 2008? 
# Using the base plotting system, make a plot showing the total PM2.5 emission from all sources 
# for each of the years 1999, 2002, 2005, and 2008.

# Aggregating Total Emissions by Year and atoring it in 'aggbyyear'
aggbyyearear <- aggregate(Emissions ~ year, NEI, sum)

png('plot1.png')
barplot(height=aggbyyear$Emissions, names.arg=aggbyyear$year,col="red", xlab="Years", ylab=expression('Total PM'[2.5]*' emission'),main=expression('Total PM'[2.5]*' emissions for various years'))
dev.off()