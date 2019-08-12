
# prepare data
source('prepareData.R')
plotFile = paste(plotFolder, "plot3.png", sep = '/')

# parameters required of each plot
png(filename = plotFile, width = 480, height = 480)
plotDev = dev.cur()

# ======================================================================
# work is done here
# plot as per example
# ======================================================================
with(
	powerSmall, 
	plot(
		strptime(paste(Date, Time), format = "%d/%m/%Y %H:%M:%S"),
		Sub_metering_1, 
		type = 'l', 
		xlab = '', 
		ylab = 'Energy sub metering', 
		col = 'black'
		)
	)

with(
	powerSmall, 
	points(
		strptime(paste(Date, Time), format = "%d/%m/%Y %H:%M:%S"),
		Sub_metering_2, 
		type = 'l', 
		col = 'red'
		)
	)

with(
	powerSmall, 
	points(
		strptime(paste(Date, Time), format = "%d/%m/%Y %H:%M:%S"),
		Sub_metering_3, 
		type = 'l', 
		col = 'blue'
		)
	)

legend(
	'topright',
	legend = c('Sub_metering_1', 'Sub_metering_2', 'Sub_metering_3'), 
	col = c('black', 'red', 'blue'), 
	lwd=c(1,1,1)
	)


# close device
dev.off(plotDev)


