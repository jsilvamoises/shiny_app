#install.packages("RMariaDB")
#remotes::install_github("r-dbi/DBI")
#remotes::install_github("r-dbi/RMariaDB")
install.packages("shinydashboard")

library(DBI)

con = dbConnect(RMariaDB::MariaDB(),group='bi',user='jsilva.moises',password='1982')


dbGetQuery(con,"select 
              left(nome,1),
                count(1) 
           from 
                bi.pessoa
           group by 1")
dbDisconnect(con)
