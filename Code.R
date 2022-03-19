library("tidyverse")
library("ggthemes")
library("scales")

setwd("C:/Users/ryanw/OneDrive - Diesel Analytics/Blogs and Vlogs/DieselAnalytics/RVisualsInPowerBI")
dataset <- read_csv("dataset.csv")

currentColumns <- sort(colnames(dataset))
requiredColumns <- c("Country", "Total Expend %", "Year")
columnTest <- isTRUE(all.equal(currentColumns, requiredColumns))
reportYear <- unique(dataset$Year)

if (length(reportYear) == 1 & columnTest) {
  
  plotdata <- 
    dataset %>%
    mutate(
      rank = dense_rank(desc(`Total Expend %`)),
      `Country` = fct_reorder(`Country`, rank, .desc = TRUE), 
      callout = ifelse(rank == 1, TRUE, FALSE)
    ) %>%
    filter(rank <= 7)
  
  countryToAnnotate <- plotdata$`Country`[plotdata$rank == 1]
  minExpenditure <- min(plotdata$`Total Expend %`)
  maxExpenditure <- max(plotdata$`Total Expend %`)
  minCountry <- plotdata$`Country`[plotdata$`Total Expend %` == minExpenditure]
  minCountry <- paste(minCountry, collapse = " & ") 
  maxCountry <- plotdata$`Country`[plotdata$`Total Expend %` == maxExpenditure]
  maxCountry <- paste(maxCountry, collapse = " & ")
  mainTitle = "% of Government Expenditure on Education"
  subTitle = 
    paste(
      "The top 7 ranked countries in", 
      reportYear, 
      sep = " ")
  caption = "Source: https://databank.worldbank.org/source/world-development-indicators"
  
  label_val <- 
    str_wrap(
      paste(maxCountry, "spent",  
            percent((maxExpenditure/minExpenditure-1)), 
            "more than", minCountry, sep = " "),
      width = 25
    )
  
  p <- 
    ggplot(
      data = plotdata, 
      mapping = aes(x = `Country`, y = `Total Expend %`, fill = callout, label = percent(`Total Expend %`))
    ) +
    geom_bar(stat="identity", mapping = aes(fill = callout)) +
    geom_text(nudge_y = -0.05) +
    scale_y_continuous(limits = c(0,0.75), labels = NULL, breaks = NULL) +
    coord_flip() +
    annotate("text", label = label_val, x = countryToAnnotate[1], y = maxExpenditure + 0.1) +
    labs(title = mainTitle, subtitle = subTitle, caption = caption) +
    xlab(label = NULL) +
    ylab(label = NULL) +
    guides(fill="none") +
    theme_few() +
    theme(plot.title = element_text(hjust = 0.5), plot.subtitle = element_text(hjust = 0.5))
  p
  
} else {
  plot.new()
  title("The data supplied did not meet the requirements of the chart.")
}