## Loading data will likely take a few seconds.

NEI <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")


# Have total emissions from PM2.5 decreased in the Baltimore City, Maryland (fips == "24510") from 1999 to 2008? 
# Use the base plotting system to make a plot answering this question.

subsetNEI  <- NEI[NEI$fips=="24510", ]

# Aggregating Total Emissions by Year and atoring it in 'aggbyyear'
aggbyyear <- aggregate(Emissions ~ year, subsetNEI, sum)

png('plot2.png')
barplot(height=aggbyyear$Emissions, names.arg=aggbyyear$year, xlab="Years", ylab=expression('Total PM'[2.5]*' emission'),main=expression('Total PM'[2.5]*' in the Baltimore City, MD emissions for various years'))
dev.off()