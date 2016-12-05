# Create the data for the chart.
time <- c(0.17,0.212,0.328,0.435,0.541,0.665)
distance <- c(0.088,0.188,0.288,0.388,0.488,0.588)

# Give the chart file a name.
png(file = "scatterplot.png")

# Calculate range from 0 to max value of cars and trucks
t_range <- range(0, time+0.1)
d_range <- range(0, distance)

# Graph autos using y axis that ranges from 0 to max 
# value in cars or trucks vector.  Turn off axes and 
# annotations (axis labels) so we can specify them ourself
plot(time, type="o", col="blue", ylim=t_range, 
   axes=FALSE, ann=FALSE)

axis(1, at=1:6, lab=distance)
axis(2, las=1, at=(0.1)*8:t_range[2])

box()
# Create a title with a red, bold/italic font
title(main="Queda da Bolinha na F2", col.main="red", font.main=4)

# Label the x and y axes with dark green text
title(xlab="Distância", col.lab=rgb(0,0.5,0))
title(ylab="Tempo", col.lab=rgb(0,0.5,0))
# Save the file.
dev.off()