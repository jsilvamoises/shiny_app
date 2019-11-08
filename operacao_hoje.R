library(shiny)
library(rAmCharts)

dash_operacao_hoje <- tabItem(tabName = 'dash_operacao_hoje',
                     h1('Operacão Hoje'),
                     h2('Franquias'),
                     hr(),
                     fluidRow(
                       # A static infoBox
                       infoBoxOutput('trabalhados_unique'),
                       #infoBox("New Orders", 10 * 2, icon = icon("credit-card")),
                       # Dynamic infoBoxes
                       infoBoxOutput("alo_unique"),
                       infoBoxOutput("cpc_unique")
                     ),
                     
                     # infoBoxes with fill=TRUE
                     
                     fluidRow(
                       
                       infoBoxOutput("ofertados_unique"),
                       infoBoxOutput("vendas_unique"),
                       infoBoxOutput("total_base_trabalhada")
                     ),
                     fluidRow(
                      box(title="Mapa de Acionamento",height = 200,collapsible = TRUE,
                          h1('s'))
                       
                     )
                     
                     
                     
                     
)
