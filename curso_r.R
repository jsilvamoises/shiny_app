# install.packages("RMySQL")
library(RMySQL)

db = dbConnect(MySQL(),
               user='jsilva.moises',
               password='1982',
               dbname='estudo_livro',
               host='localhost',
               port=3306)

rs = dbReadTable(db,'select * from aluno')
data = fetch(res=rs)

alunos = dbReadTable(db,'curso')
alunos = rs[0]['id']
dbListFields(db,'aluno')

rs@Id
dbClearResult(dbListResults(db)[[2]])


x= sample(1:100)

plot(x,x)
mean(data)