#Load data

df<-read.csv("https://public.tableau.com/app/sample-data/HollywoodsMostProfitableStories.csv")

#Take a look at the data:

View(df)

#Load library:

install.packages("tidyverse")

#Importlibrary

library(tidyverse)

# Check data types:

str(df)

# Check for missing values:

colSums(is.na(df))

#Drop missing values

df1 <-df%>% drop_na()

# check to make sure that the rows have been removed

colSums(is.na(df1))

#Summary Statistics:

summary(df1)

#scatterplot

ggplot(df1, aes(x=Lead.Studio, y=Rotten.Tomatoes..)) + geom_point()+ scale_y_continuous(labels = scales::comma)+coord_cartesian(ylim= c(0, 110))+theme(axis.text.x= element_text(angle = 90))

#bar chart

ggplot(df1, aes(x=Year)) + geom_bar()

#Export clean data

write.csv(df1, "clean_df.csv")
