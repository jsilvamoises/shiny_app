library(shiny)

sidebar <-dashboardSidebar(
  sidebarSearchForm('searchText','buttonSearch','Search'),
  sidebarMenu(
    menuItem(text = "Dashboard",icon=icon("dashboard",lib = 'glyphicon'),
             menuSubItem(text = "Operação Hoje", tabName = "dash_operacao_hoje"),
             menuSubItem(text = "Varejo Anual", tabName = "dash_varejo_anual"),
             menuSubItem(text = "Varejo Mensal", tabName = "dash_varejo_mensal"),
             menuSubItem(text = "Franquias Anual", tabName = "dash_franquias_anual"),
             menuSubItem(text = "Franquias Mensal", tabName = "dash_franquias_mensal")),
    menuItem(text = "Info",icon=icon("bell",lib = 'glyphicon'),badgeLabel = 'New',badgeColor = 'green'),
    sliderInput('bins','Number of Breaks',1,100,50)
  )
)
