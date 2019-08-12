# prepare data
source('prepareData.R')
plotFile = paste(plotFolder, "plot4.png", sep = '/')

# parameters required of each plot
png(filename = plotFile, width = 480, height = 480)
plotDev = dev.cur()

# ======================================================================
# work is done here
# plots as per example
# ======================================================================
par(mfrow = c(2, 2))

# first plot
with(
	powerSmall, 
	plot(
		strptime(paste(Date, Time), format = "%d/%m/%Y %H:%M:%S"),
		Global_active_power, 
		type = 'l', 
		xlab  = '', 
		ylab = 'Global Active Power'
		)
	)


# second plot
with(
	powerSmall, 
	plot(
		strptime(paste(Date, Time),format = "%d/%m/%Y %H:%M:%S"),
		Voltage, 
		type = 'l', xlab = '', ylab = 'Voltage', col = 'black'
		)
	)

title(sub = 'datetime')



# third plot

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
	lwd=c(1,1,1),
	bty = 'n'
	)


# second plot
with(
	powerSmall, 
	plot(
		strptime(paste(Date, Time),format = "%d/%m/%Y %H:%M:%S"),
		Global_reactive_power, 
		type = 'l', xlab = '', col = 'black'
		)
	)

title(sub = 'datetime')

# close device
dev.off(plotDev)



