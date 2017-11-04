library(RCurl)
library(XML)

theurl <- "https://www.bankier.pl/narzedzia/kalkulator-placowy?rok=2017&brutto_netto=N&rodzaj_umowy=o_prace&wynagrodzenie_praca=1+600%2C00&wynagrodzenie_zlecenie=0%2C00&wynagrodzenie_dzielo=0%2C00&tax_free=y&chorobowe_uz=y&zdrowotne_uz=y&zdrowotne_ud=y&amount_percent_praca=100%2C00&amount_percent_pracaChoice=P&amount_percent_zlecenie=100%2C00&amount_percent_zlecenieChoice=P&amount_percent_dzielo=100%2C00&amount_percent_dzieloChoice=P&oblicz=Oblicz&miesiace-styczen-prace_brutto=0%2C00&miesiace-styczen-prace_netto=1+600%2C00&miesiace-luty-prace_brutto=0%2C00&miesiace-luty-prace_netto=1+600%2C00&miesiace-marzec-prace_brutto=0%2C00&miesiace-marzec-prace_netto=1+600%2C00&miesiace-kwiecien-prace_brutto=0%2C00&miesiace-kwiecien-prace_netto=1+600%2C00&miesiace-maj-prace_brutto=0%2C00&miesiace-maj-prace_netto=1+600%2C00&miesiace-czerwiec-prace_brutto=0%2C00&miesiace-czerwiec-prace_netto=1+600%2C00&miesiace-lipiec-prace_brutto=0%2C00&miesiace-lipiec-prace_netto=1+600%2C00&miesiace-sierpien-prace_brutto=0%2C00&miesiace-sierpien-prace_netto=1+600%2C00&miesiace-wrzesien-prace_brutto=0%2C00&miesiace-wrzesien-prace_netto=1+600%2C00&miesiace-pazdziernik-prace_brutto=0%2C00&miesiace-pazdziernik-prace_netto=1+600%2C00&miesiace-listopad-prace_brutto=0%2C00&miesiace-listopad-prace_netto=1+600%2C00&miesiace-grudzien-prace_brutto=0%2C00&miesiace-grudzien-prace_netto=1+600%2C00"

#wget "https://www.bankier.pl/narzedzia/kalkulator-placowy" --post-data "rok=2017&brutto_netto=N&rodzaj_umowy=o_prace&wynagrodzenie_praca=1+600%2C00&wynagrodzenie_zlecenie=0%2C00&wynagrodzenie_dzielo=0%2C00&tax_free=y&chorobowe_uz=y&zdrowotne_uz=y&zdrowotne_ud=y&amount_percent_praca=100%2C00&amount_percent_pracaChoice=P&amount_percent_zlecenie=100%2C00&amount_percent_zlecenieChoice=P&amount_percent_dzielo=100%2C00&amount_percent_dzieloChoice=P&oblicz=Oblicz&miesiace-styczen-prace_brutto=0%2C00&miesiace-styczen-prace_netto=1+600%2C00&miesiace-luty-prace_brutto=0%2C00&miesiace-luty-prace_netto=1+600%2C00&miesiace-marzec-prace_brutto=0%2C00&miesiace-marzec-prace_netto=1+600%2C00&miesiace-kwiecien-prace_brutto=0%2C00&miesiace-kwiecien-prace_netto=1+600%2C00&miesiace-maj-prace_brutto=0%2C00&miesiace-maj-prace_netto=1+600%2C00&miesiace-czerwiec-prace_brutto=0%2C00&miesiace-czerwiec-prace_netto=1+600%2C00&miesiace-lipiec-prace_brutto=0%2C00&miesiace-lipiec-prace_netto=1+600%2C00&miesiace-sierpien-prace_brutto=0%2C00&miesiace-sierpien-prace_netto=1+600%2C00&miesiace-wrzesien-prace_brutto=0%2C00&miesiace-wrzesien-prace_netto=1+600%2C00&miesiace-pazdziernik-prace_brutto=0%2C00&miesiace-pazdziernik-prace_netto=1+600%2C00&miesiace-listopad-prace_brutto=0%2C00&miesiace-listopad-prace_netto=1+600%2C00&miesiace-grudzien-prace_brutto=0%2C00&miesiace-grudzien-prace_netto=1+600%2C00"

 # ruby -e 'puts readlines.join[/(?<=<!-- Start -->).+(?=<!-- Stop -->)/m]' kalkulator-placowy 


#webpage <- postForm(theurl)
filename<-"technicalmanager"
system(sprintf("wget -O %s %s --post-data \"%s\"",
               filename,
               "https://www.bankier.pl/narzedzia/kalkulator-placowy",
               "rok=2017&brutto_netto=N&rodzaj_umowy=o_prace&wynagrodzenie_praca=1+600%2C00&wynagrodzenie_zlecenie=0%2C00&wynagrodzenie_dzielo=0%2C00&tax_free=y&chorobowe_uz=y&zdrowotne_uz=y&zdrowotne_ud=y&amount_percent_praca=100%2C00&amount_percent_pracaChoice=P&amount_percent_zlecenie=100%2C00&amount_percent_zlecenieChoice=P&amount_percent_dzielo=100%2C00&amount_percent_dzieloChoice=P&oblicz=Oblicz&miesiace-styczen-prace_brutto=0%2C00&miesiace-styczen-prace_netto=1+600%2C00&miesiace-luty-prace_brutto=0%2C00&miesiace-luty-prace_netto=1+600%2C00&miesiace-marzec-prace_brutto=0%2C00&miesiace-marzec-prace_netto=1+600%2C00&miesiace-kwiecien-prace_brutto=0%2C00&miesiace-kwiecien-prace_netto=1+600%2C00&miesiace-maj-prace_brutto=0%2C00&miesiace-maj-prace_netto=1+600%2C00&miesiace-czerwiec-prace_brutto=0%2C00&miesiace-czerwiec-prace_netto=1+600%2C00&miesiace-lipiec-prace_brutto=0%2C00&miesiace-lipiec-prace_netto=1+600%2C00&miesiace-sierpien-prace_brutto=0%2C00&miesiace-sierpien-prace_netto=1+600%2C00&miesiace-wrzesien-prace_brutto=0%2C00&miesiace-wrzesien-prace_netto=1+600%2C00&miesiace-pazdziernik-prace_brutto=0%2C00&miesiace-pazdziernik-prace_netto=1+600%2C00&miesiace-listopad-prace_brutto=0%2C00&miesiace-listopad-prace_netto=1+600%2C00&miesiace-grudzien-prace_brutto=0%2C00&miesiace-grudzien-prace_netto=1+600%2C00"))
outf<-"test"
propertext <- system(sprintf("ruby -e 'puts readlines.join[/(?<=<!-- Start -->).+(?=<!-- Stop -->)/m]' %s >> %s",filename,outf))
page <- read_html(outf)
table <- html_table(page, fill = TRUE)

library(htmltab)

url <- "http://christianrubba.com/cran/htmltab/vignette/Demography%20of%20the%20United%20Kingdom%20-%20Wikipedia.html"
#ukLang <- htmltab(doc = outf, which = "//td[class() = 'koszty_pracodawcy']")
xp <- "//caption[starts-with(text(), 'Electorate resulst')]/ancestor::table"
body_xp <- "//tr[./td[@lass = 'koszty_pracodawcy']]"

nz1 <- htmltab(doc = outf, which = xp, body = body_xp, encoding = "UTF-8")


head(ukLang)

# Navigate your way through the tree. It may be possible to do this more efficiently using getNodeSet
pagetree <- htmlTreeParse(outf, error=function(...){})
tables <- pagetree$children[names(pagetree)=="table"]
divbodyContent <- body$children$div$children[[1]]$children$div$children[[4]]
tables <- pagetree$children[names(pagetree)=="table"]$children


#ruby -e 'puts readlines.join[/(?<=<!-- Start -->).+(?=<!-- Stop -->)/m]' | wget "https://www.bankier.pl/narzedzia/kalkulator-placowy" --post-data "rok=2017&brutto_netto=N&rodzaj_umowy=o_prace&wynagrodzenie_praca=1+600%2C00&wynagrodzenie_zlecenie=0%2C00&wynagrodzenie_dzielo=0%2C00&tax_free=y&chorobowe_uz=y&zdrowotne_uz=y&zdrowotne_ud=y&amount_percent_praca=100%2C00&amount_percent_pracaChoice=P&amount_percent_zlecenie=100%2C00&amount_percent_zlecenieChoice=P&amount_percent_dzielo=100%2C00&amount_percent_dzieloChoice=P&oblicz=Oblicz&miesiace-styczen-prace_brutto=0%2C00&miesiace-styczen-prace_netto=1+600%2C00&miesiace-luty-prace_brutto=0%2C00&miesiace-luty-prace_netto=1+600%2C00&miesiace-marzec-prace_brutto=0%2C00&miesiace-marzec-prace_netto=1+600%2C00&miesiace-kwiecien-prace_brutto=0%2C00&miesiace-kwiecien-prace_netto=1+600%2C00&miesiace-maj-prace_brutto=0%2C00&miesiace-maj-prace_netto=1+600%2C00&miesiace-czerwiec-prace_brutto=0%2C00&miesiace-czerwiec-prace_netto=1+600%2C00&miesiace-lipiec-prace_brutto=0%2C00&miesiace-lipiec-prace_netto=1+600%2C00&miesiace-sierpien-prace_brutto=0%2C00&miesiace-sierpien-prace_netto=1+600%2C00&miesiace-wrzesien-prace_brutto=0%2C00&miesiace-wrzesien-prace_netto=1+600%2C00&miesiace-pazdziernik-prace_brutto=0%2C00&miesiace-pazdziernik-prace_netto=1+600%2C00&miesiace-listopad-prace_brutto=0%2C00&miesiace-listopad-prace_netto=1+600%2C00&miesiace-grudzien-prace_brutto=0%2C00&miesiace-grudzien-prace_netto=1+600%2C00" 
wget https://www.bankier.pl/narzedzia/kalkulator-placowy --post-data rok=2017&brutto_netto=N&rodzaj_umowy=o_prace&wynagrodzenie_praca=1600 -O manager