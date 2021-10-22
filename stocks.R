library(plotly)
dv <- read.csv('C:/Users/Administrator/Desktop/stocks.csv')

fig <- plot_ly(dv, x = ~Date, y = ~High, z = ~Symbol,name='highest value',
               marker = list(color = 'blue',size = 1, )) 

fig <- fig %>% layout(title = "Highest value in 2020", scene = list(xaxis = list(title = 'Dates'),
                                   yaxis = list(title = 'Highest Value'),
                                   zaxis = list(title = 'Company')),
                      annotations = list(
                        x = 1.13,
                        y = 1.05,
                        text = 'Stocks',
                        xref = 'paper',
                        yref = 'paper',
                        showarrow = FALSE
                      ))
fig