doaj <- read.csv("https://doaj.org/csv")

year <- table(as.integer(substr(doaj$Added.on.Date, 1, 4)))
cum <- cumsum(year)
names(cum) <- names(year)
par(family = "serif")
plot(x = 2002:2017, y = cum, type = "b", xlab = "Año", ylab = "Número total de journals", pch = 20, bty = "n", xaxt = "n")
axis(1, at = 2002:2017, las = 3)
