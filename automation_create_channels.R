# author: Yan Liu
# date: 10/30/2021
# purpose: Render project2.Rmd as several .md files for repo.


channels<-c("lifestyle","entertainment","bus","tech","lifestyle","world","socmed")
output_file<- paste0(channels,".md")
params=lapply(channels,FUN=function(x){list(team=x)})

reports<-tibble(output_file,params)

library(rmarkdown)
apply(reports, MARGIN=1, 
      FUN=function(x){
        render(input="auto_test.Rmd",output_file=x[[1]], params=x[[2]], clean = TRUE,encoding = "UTF-8")
        })


