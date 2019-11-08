library(shiny)
library(ggplot2)
library(tidyverse)
library(shinydashboard)
library(rAmCharts)
source("dashboard_app.R")
# ======================[SERVER]============================
server <- function(input, output) {
  output$histogram <- renderPlot({
    hist(faithful$eruptions,breaks = input$bins)
  })
  
  output$messageMenu <- renderMenu({
    # Code to generate each of the messageItems here, in a list. This assumes
    # that messageData is a data frame with two columns, 'from' and 'message'.
    msgs <- apply(read.csv("menu.csv",sep=";"), 1, function(row) {
      messageItem(from = row[["from"]], message = row[["message"]])
    })
    
    dropdownMenu(type="messages", .list=msgs)
    
  })
  
  
  output$trabalhados_unique <- renderInfoBox({
    infoBox(
      "Trabalhados Unique", paste0(80, " Clientes"), icon = icon("gear"),
      color = "red"
    )
  })
 
  output$alo_unique <- renderInfoBox({
    infoBox(
      "Alô Unique", paste0(60, " Contatos"), icon = icon("phone"),
      color = "orange"
    )
  })
  output$cpc_unique <- renderInfoBox({
    infoBox(
      "CPC Unique", "20 Contatos", icon = icon("user", lib = "glyphicon"),
      color = "blue"
    )
  })
  
  # Same as above, but with fill=TRUE
  output$ofertados_unique <- renderInfoBox({
    infoBox(
      "Ofertados", paste0(10, " Clientes"), icon = icon("tag"),
      color = "teal", fill = TRUE
    )
  })
  output$vendas_unique <- renderInfoBox({
    infoBox(
      "Vendas Unique", "10", icon = icon("dollar", lib = "font-awesome"),
      color = "green", fill = TRUE
    )
  })
  
  output$total_base_trabalhada <- renderInfoBox({
    infoBox(
      "Trabalhados Unique (mês)", "16.000 / 24.800", icon = icon("calendar", lib = "glyphicon"),
      color = "aqua", fill = TRUE
    )
  })
  
  
}

shinyApp(ui, server,options = options)
