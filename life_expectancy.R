
library(plotly)

dv <- read.csv(
  'C:/Users/Administrator/Desktop/life_expectancy.csv')



graph <- plot_ly(data=dv, x= ~year, y= ~infant_mortality,name="Total infant mortality", type="scatter", mode="lines", 
               marker = list(size = 5,color = '#78f08e',line = list(color = '#78f08e', width = 2)),
               line = list(color = '#78f08e'))

graph <- graph %>% add_trace(y = ~infant_mortality_female, name = 'Female infant mortality', 
                             marker = list(size = 4,color = '#ff0a99',line = list(color = '#ff0a99', width = 1)),
                             line = list(color = 'pink', width = 2, dash = 'dash'))

graph <- graph %>% add_trace(y = ~infant_mortality_male, name = 'Male infant mortality', 
                             marker = list(size = 4,color = 'blue',line = list(color = 'blue', width = 1)),
                             line = list(color = 'blue', width = 2, dash = 'dash'))
                         

graph <- graph %>%  layout(title = 'Infant mortality rate in India', 
                       yaxis = list(title = 'Mortality Rate'), 
                       xaxis = list(title = 'Years') )
graph
