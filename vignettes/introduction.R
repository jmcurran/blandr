## ----setup, include=FALSE------------------------------------------------
knitr::opts_chunk$set(echo = TRUE)

## ----gh-installation, eval = FALSE---------------------------------------
#  # install.packages("devtools")
#  devtools::install_github("deepankardatta/blandr")

## ------------------------------------------------------------------------
library(blandr)
library(ggplot2)

## ------------------------------------------------------------------------
statistics ( bland.altman.PEFR.1986$WrightFirst , bland.altman.PEFR.1986$MiniWrightFirst , sig.level=0.95 )

## ------------------------------------------------------------------------
stats.data <- statistics ( bland.altman.PEFR.1986$WrightFirst , bland.altman.PEFR.1986$MiniWrightFirst , sig.level=0.95 )
summary(stats.data)
stats.data

## ------------------------------------------------------------------------
stats.data[1]
stats.data[2]
stats.data[5]
stats.data[6]

## ------------------------------------------------------------------------
output.text ( bland.altman.PEFR.1986$WrightFirst , bland.altman.PEFR.1986$MiniWrightFirst , sig.level=0.95 )

## ---- fig.width=6, fig.height=5------------------------------------------
draw( bland.altman.PEFR.1986$WrightFirst , bland.altman.PEFR.1986$MiniWrightFirst )

## ---- fig.width=6, fig.height=5------------------------------------------
draw( bland.altman.PEFR.1986$WrightFirst , bland.altman.PEFR.1986$MiniWrightFirst , ciDisplay = FALSE , ciShading = FALSE )

## ---- fig.width=6, fig.height=5------------------------------------------
vignette.chart <- draw( bland.altman.PEFR.1986$WrightFirst , bland.altman.PEFR.1986$MiniWrightFirst )
vignette.chart
vignette.chart <- vignette.chart + geom_vline( xintercept = 300 , linetype = 4 , col=6 )
vignette.chart
vignette.chart <- vignette.chart + annotate("text", x=400, y=40 , label= "An example of why ggplot2 is a better choice for charting")
vignette.chart

