#Load the data
dat <- read.csv(file="ODI-Batting_Criket_Analysis.csv")
print("printing the dimension of the ODI Batting ")
print(dim(dat))
print("columns of data")
print(colnames(dat))

#countries playing cricket
print(unique(dat$Country))

# subset indian games
ind_match <- subset(dat, dat$Country == "India")
print(dim(ind_match))

#all the indian players
print("All the Indian Players")
ind_players <- unique(ind_match$Player)

# printing all the matches played by sachin tendulkar
India_Sachin <- subset(ind_match, ind_match$Player=="Sachin R Tendulkar")
India_Sachin <- subset(dat, dat$Player == "Sachin R Tendulkar")
print(India_Sachin[1:10,])

# printing all the runs scored by sachin tendulkar
print(India_Sachin$Runs)





