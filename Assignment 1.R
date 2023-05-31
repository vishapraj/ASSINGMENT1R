library(tidyverse)
library(rvest)
library(dplyr)
page<-read_html("https://www.moneyworks4me.com/best-index/nse-stocks/top-nifty50-companies-list/")
company_name<-page %>% html_elements(".company-ellipses a") %>% html_text()
company_name<-str_remove_all(company_name,' " ')
company_name
cmp<-page %>% html_elements(".stick+ td span") %>% html_text()
cmp<-str_remove_all(cmp,",")
cmp<-cmp %>% as.numeric()
cmp
market_cap<-page %>% html_elements("td:nth-child(5)") %>% html_text()
market_cap

week_high<-page %>% html_elements("td:nth-child(6) span") %>% html_text() %>% str_remove_all(",") %>% substr(1,14) %>% str_remove_all("")
week_high
ROE<-page %>% html_elements("td:nth-child(8)") %>% html_text()
ROE

PE<-page %>% html_elements("td:nth-child(9)") %>% html_text() %>% as.numeric()
PE
PBV<-page %>% html_elements("td:nth-child(10)") %>% html_text() %>% as.numeric()
PBV
EV<- page %>% html_elements("td:nth-child(11)") %>% html_text() %>% as.numeric()
EV
Ysales<-page %>% html_elements("td:nth-child(12)") %>% html_text() %>% as.numeric()
Ysales
Yprofit<-page %>% html_elements("td:nth-child(13)") %>% html_text() %>% as.numeric()
Yprofit

price_change<-page %>% html_elements(".text-green") %>% html_text() 
price_change
Data_frame1<-data.frame("Company_name(M.cap)"=company_name,"CMP"=cmp,"price_change"=price_change, "P/E"= PE,"P/BV"=PBV,"EV/EBITDA"=EV ,"5YSales Gr(%)"=Ysales,"5YProfit Gr(%)"=Yprofit)
Data_frame1


library(tidyverse)
library(rvest)
library(dplyr)
#stock1 dataframes#
stock1<-read_html("https://www.moneyworks4me.com/indianstocks/large-cap/automobiles/automobiles-passenger-cars/maruti-suzuki/company-info")
main<-stock1 %>% html_elements(".col-12.mt-4 .text-left.stick , .col-12.mt-4 .text-left.stick , tbody~ tbody .stick") %>% html_text()
may13<-stock1 %>% html_elements(".col-12.mt-4 .stick+ td , tbody~ tbody .stick+ td") %>% html_text()
may14<-stock1 %>% html_elements(".col-12.mt-4 td:nth-child(3) , .col-12.mt-4 td:nth-child(3) , tbody~ tbody td:nth-child(3)") %>% html_text()
may15<-stock1 %>% html_elements(".col-12.mt-4 td:nth-child(5) , .col-12.mt-4 td:nth-child(5) , tbody~ tbody td:nth-child(5)") %>% html_text()
may16<-stock1 %>% html_elements(".col-12.mt-4 td:nth-child(6) , .col-12.mt-4 td:nth-child(6) , tbody~ tbody td:nth-child(6)") %>% html_text()
may17<-stock1 %>% html_elements(".col-12.mt-4 td:nth-child(7) , .col-12.mt-4 td:nth-child(7) , tbody~ tbody td:nth-child(7)") %>% html_text()
may18<-stock1 %>% html_elements(".col-12.mt-4 td:nth-child(8) , .col-12.mt-4 td:nth-child(8) , tbody~ tbody td:nth-child(8)") %>% html_text()
may19<-stock1 %>% html_elements(".col-12.mt-4 td:nth-child(9) , .col-12.mt-4 td:nth-child(9) , tbody~ tbody td:nth-child(9)") %>% html_text()
may20<-stock1 %>% html_elements(".col-12.mt-4 td:nth-child(10) , .col-12.mt-4 td:nth-child(10) , tbody~ tbody td:nth-child(10)") %>% html_text()
may21<-stock1 %>% html_elements(".col-12.mt-4 td:nth-child(11) , .col-12.mt-4 td:nth-child(11) , tbody~ tbody td:nth-child(11)") %>% html_text()
may22<-stock1 %>% html_elements(".col-12.mt-4 td:nth-child(12) , .col-12.mt-4 td:nth-child(12) , tbody~ tbody td:nth-child(12)") %>% html_text()
DataFrame1<-data.frame(" "=main ,"May13"=may13 ,"May14"=may14 ,"May15"=may15,"May16"=may16,"May17"=may17,"May18"=may18,"May19"=may19,"May20"=may20,"May21"=may21,"May22"=may22)
DataFrame1

#stock 2 dataframes:
may14<-stock2 %>% html_elements(".col-12.mt-4 td:nth-child(3) , tbody~ tbody td:nth-child(3)") %>% html_text()
may15<-stock2 %>% html_elements(".col-12.mt-4 td:nth-child(4) , .col-12.mt-4 td:nth-child(4) , tbody~ tbody td:nth-child(4)") %>% html_text()
may16<-stock2 %>% html_elements(".col-12.mt-4 td:nth-child(5) , .col-12.mt-4 td:nth-child(5) , tbody~ tbody td:nth-child(5)") %>% html_text()
may17<-stock2 %>% html_elements(".col-12.mt-4 td:nth-child(6) , .col-12.mt-4 td:nth-child(6) , tbody~ tbody td:nth-child(6)") %>% html_text()
may18<-stock2 %>% html_elements(".col-12.mt-4 td:nth-child(7) , .col-12.mt-4 td:nth-child(7) , tbody~ tbody td:nth-child(7)") %>% html_text()
may19<-stock2 %>% html_elements(".col-12.mt-4 td:nth-child(8) , .col-12.mt-4 td:nth-child(8) , tbody~ tbody td:nth-child(8)") %>% html_text()
may20<-stock2 %>% html_elements(".col-12.mt-4 td:nth-child(9) , .col-12.mt-4 td:nth-child(9) , tbody~ tbody td:nth-child(9)") %>% html_text()
may21<-stock2 %>% html_elements(".col-12.mt-4 td:nth-child(10) , .col-12.mt-4 td:nth-child(10) , tbody~ tbody td:nth-child(10)") %>% html_text()
may22<-stock2 %>% html_elements(".col-12.mt-4 td:nth-child(11) , .col-12.mt-4 td:nth-child(11) , tbody~ tbody td:nth-child(11)") %>% html_text()
DataFrame2<-data.frame(" "=main ,"May13"=may13 ,"May14"=may14 ,"May15"=may15,"May16"=may16,"May17"=may17,"May18"=may18,"May19"=may19,"May20"=may20,"May21"=may21,"May22"=may22)
DataFrame2
#stock3 dataframes:
stock3<-read_html("https://www.moneyworks4me.com/indianstocks/large-cap/fmcg/household-personal-products/hindustan-unilever/company-info")
main<-stock3 %>% html_elements("tbody~ tbody .stick , .col-12.mt-4 .text-left.stick") %>% html_text()
may13<-stock3 %>% html_elements(".col-12.mt-4 .stick+ td , tbody~ tbody .stick+ td") %>% html_text()
may14<-stock3 %>% html_elements(".col-12.mt-4 td:nth-child(4) , tbody~ tbody td:nth-child(4)") %>% html_text()
may15<-stock3 %>% html_elements(".col-12.mt-4 td:nth-child(5) , .col-12.mt-4 td:nth-child(5) , tbody~ tbody td:nth-child(5)") %>% html_text()
may16<-stock3 %>% html_elements(".col-12.mt-4 td:nth-child(6) , .col-12.mt-4 td:nth-child(6) , tbody~ tbody td:nth-child(6)") %>% html_text()
may17<-stock3 %>% html_elements(".col-12.mt-4 td:nth-child(7) , .col-12.mt-4 td:nth-child(7) , tbody~ tbody td:nth-child(7)") %>% html_text()
may18<-stock3 %>% html_elements(".col-12.mt-4 td:nth-child(8) , .col-12.mt-4 td:nth-child(8) , tbody~ tbody td:nth-child(8)") %>% html_text()
may19<-stock3 %>% html_elements(".col-12.mt-4 td:nth-child(9) , .col-12.mt-4 td:nth-child(9) , tbody~ tbody td:nth-child(9)") %>% html_text()
may20<-stock3 %>% html_elements(".col-12.mt-4 td:nth-child(10) , .col-12.mt-4 td:nth-child(10) , tbody~ tbody td:nth-child(10)") %>% html_text()
may21<-stock3 %>% html_elements(".col-12.mt-4 td:nth-child(11) , .col-12.mt-4 td:nth-child(11) , tbody~ tbody td:nth-child(11)") %>% html_text()
may22<-stock3 %>% html_elements(".col-12.mt-4 td:nth-child(12) , .col-12.mt-4 td:nth-child(12) , tbody~ tbody td:nth-child(12)") %>% html_text()
DataFrame3<-data.frame(" "=main ,"May13"=may13 ,"May14"=may14 ,"May15"=may15,"May16"=may16,"May17"=may17,"May18"=may18,"May19"=may19,"May20"=may20,"May21"=may21,"May22"=may22)
DataFrame3
#stock4 dataframes:
stock4<-read_html("https://www.moneyworks4me.com/indianstocks/large-cap/metals-mining/metal-non-ferrous/hindalco/company-info")
main<-stock4 %>% html_elements("tbody~ tbody .stick , .col-12.mt-4 .text-left.stick") %>% html_text()
may13<-stock4 %>% html_elements(".col-12.mt-4 .stick+ td , tbody~ tbody .stick+ td") %>% html_text()
may14<-stock4 %>% html_elements(".col-12.mt-4 td:nth-child(3) , tbody~ tbody td:nth-child(3)") %>% html_text()
may15<-stock4 %>% html_elements(".col-12.mt-4 td:nth-child(4) , .col-12.mt-4 td:nth-child(4) , tbody~ tbody td:nth-child(4)") %>% html_text()
may16<-stock4 %>% html_elements(".col-12.mt-4 td:nth-child(5) , .col-12.mt-4 td:nth-child(5) , tbody~ tbody td:nth-child(5)") %>% html_text()
may17<-stock4 %>% html_elements(".col-12.mt-4 td:nth-child(6) , .col-12.mt-4 td:nth-child(6) , tbody~ tbody td:nth-child(6)") %>% html_text()
may18<-stock4 %>% html_elements(".col-12.mt-4 td:nth-child(7) , .col-12.mt-4 td:nth-child(7) , tbody~ tbody td:nth-child(7)") %>% html_text()
may19<-stock4 %>% html_elements(".col-12.mt-4 td:nth-child(8) , .col-12.mt-4 td:nth-child(8) , tbody~ tbody td:nth-child(8)") %>% html_text()
may20<-stock4 %>% html_elements(".col-12.mt-4 td:nth-child(9) , .col-12.mt-4 td:nth-child(9) , tbody~ tbody td:nth-child(9)") %>% html_text()
may21<-stock4 %>% html_elements(".col-12.mt-4 td:nth-child(10) , .col-12.mt-4 td:nth-child(10) , tbody~ tbody td:nth-child(10)") %>% html_text()
may22<-stock4 %>% html_elements(".col-12.mt-4 td:nth-child(11) , .col-12.mt-4 td:nth-child(11) , tbody~ tbody td:nth-child(11)") %>% html_text()
DataFrame4<-data.frame(" "=main ,"May13"=may13 ,"May14"=may14 ,"May15"=may15,"May16"=may16,"May17"=may17,"May18"=may18,"May19"=may19,"May20"=may20,"May21"=may21,"May22"=may22)
DataFrame4
#stock5 dataframes:
stock5<-read_html("https://www.moneyworks4me.com/indianstocks/large-cap/construction-infrastructure/engineering-construction/larsen-toubro/company-info")
main<-stock5 %>% html_elements("tbody~ tbody .stick , .col-12.mt-4 .text-left.stick") %>% html_text()
may13<-stock5 %>% html_elements(".col-12.mt-4 .stick+ td , tbody~ tbody .stick+ td") %>% html_text()
may14<-stock5 %>% html_elements(".col-12.mt-4 td:nth-child(3) , tbody~ tbody td:nth-child(3)") %>% html_text()
may15<-stock5 %>% html_elements(".col-12.mt-4 td:nth-child(4) , .col-12.mt-4 td:nth-child(4) , tbody~ tbody td:nth-child(4)") %>% html_text()
may16<-stock5 %>% html_elements(".col-12.mt-4 td:nth-child(5) , .col-12.mt-4 td:nth-child(5) , tbody~ tbody td:nth-child(5)") %>% html_text()
may17<-stock5 %>% html_elements(".col-12.mt-4 td:nth-child(6) , .col-12.mt-4 td:nth-child(6) , tbody~ tbody td:nth-child(6)") %>% html_text()
may18<-stock5 %>% html_elements(".col-12.mt-4 td:nth-child(7) , .col-12.mt-4 td:nth-child(7) , tbody~ tbody td:nth-child(7)") %>% html_text()
may19<-stock5 %>% html_elements(".col-12.mt-4 td:nth-child(8) , .col-12.mt-4 td:nth-child(8) , tbody~ tbody td:nth-child(8)") %>% html_text()
may20<-stock5 %>% html_elements(".col-12.mt-4 td:nth-child(9) , .col-12.mt-4 td:nth-child(9) , tbody~ tbody td:nth-child(9)") %>% html_text()
may21<-stock5 %>% html_elements(".col-12.mt-4 td:nth-child(10) , .col-12.mt-4 td:nth-child(10) , tbody~ tbody td:nth-child(10)") %>% html_text()
may22<-stock5 %>% html_elements(".col-12.mt-4 td:nth-child(11) , .col-12.mt-4 td:nth-child(11) , tbody~ tbody td:nth-child(11)") %>% html_text()
DataFrame5<-data.frame(" "=main ,"May13"=may13 ,"May14"=may14 ,"May15"=may15,"May16"=may16,"May17"=may17,"May18"=may18,"May19"=may19,"May20"=may20,"May21"=may21,"May22"=may22)
DataFrame5

library(tidyverse)
library(dplyr)
library(rvest)
#Problem (e)
file<-read_html("https://editorial.rottentomatoes.com/guide/best-netflix-movies-to-watch-right-now/")
Ranking<-file %>% html_elements(".countdown-index") %>% html_text() %>% str_remove_all("#") %>% as.numeric()
title<-file %>% html_elements(".article_movie_title a") %>% html_text()
Tomato_score<-file %>% html_elements(".tMeterScore") %>% html_text() %>% str_remove_all("%") %>% as.numeric()
Start_year<- file %>% html_elements(".start-year") %>% html_text() %>% substr(2,5) %>% as.numeric()
Data_frame2<-data.frame("Ranking" =Ranking,"Name of Movie"=title,"Tomato % score"=Tomato_score,"Year of movie"=Start_year)
Data_frame2


a<-rbinom(5,size=1,0.5)
a
temp<-0
for(i in 1:5)
{
  if(a[i]==1)
    temp=temp+1
  if(temp==3)
    break
}
i
n=temp/i
n
 if(n>0.5){
   p=n
} else
   {
    p=1-n
   }
 
 Tennis<-function(p)
 {
   return(3/p)
 }
 
 matches<-c()
for(i in 1:1000)
{
  matches[i]<-Tennis(0.70)
}
 ans<-matches
 ans



a<-sample(x<-c("car","goat"),size=1,prob=c(1/3,2/3))
if(a=="goat")
{
  if(sample(x<c("car","goat"),1,prob=c(1/2,1/2))=="goat")
  return(1)
}
