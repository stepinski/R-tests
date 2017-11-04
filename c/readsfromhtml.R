library(RCurl)
library(XML)

theurl <- "https://www.bankier.pl/narzedzia/kalkulator-placowy?rok=2017&brutto_netto=N&rodzaj_umowy=o_prace&wynagrodzenie_praca=1+600%2C00&wynagrodzenie_zlecenie=0%2C00&wynagrodzenie_dzielo=0%2C00&tax_free=y&chorobowe_uz=y&zdrowotne_uz=y&zdrowotne_ud=y&amount_percent_praca=100%2C00&amount_percent_pracaChoice=P&amount_percent_zlecenie=100%2C00&amount_percent_zlecenieChoice=P&amount_percent_dzielo=100%2C00&amount_percent_dzieloChoice=P&oblicz=Oblicz&miesiace-styczen-prace_brutto=0%2C00&miesiace-styczen-prace_netto=1+600%2C00&miesiace-luty-prace_brutto=0%2C00&miesiace-luty-prace_netto=1+600%2C00&miesiace-marzec-prace_brutto=0%2C00&miesiace-marzec-prace_netto=1+600%2C00&miesiace-kwiecien-prace_brutto=0%2C00&miesiace-kwiecien-prace_netto=1+600%2C00&miesiace-maj-prace_brutto=0%2C00&miesiace-maj-prace_netto=1+600%2C00&miesiace-czerwiec-prace_brutto=0%2C00&miesiace-czerwiec-prace_netto=1+600%2C00&miesiace-lipiec-prace_brutto=0%2C00&miesiace-lipiec-prace_netto=1+600%2C00&miesiace-sierpien-prace_brutto=0%2C00&miesiace-sierpien-prace_netto=1+600%2C00&miesiace-wrzesien-prace_brutto=0%2C00&miesiace-wrzesien-prace_netto=1+600%2C00&miesiace-pazdziernik-prace_brutto=0%2C00&miesiace-pazdziernik-prace_netto=1+600%2C00&miesiace-listopad-prace_brutto=0%2C00&miesiace-listopad-prace_netto=1+600%2C00&miesiace-grudzien-prace_brutto=0%2C00&miesiace-grudzien-prace_netto=1+600%2C00"

webpage <- postForm(theurl)

propertext <- system(sprintf("sed -n -e '/Mies./,/Suma/p' %s",webpage))
