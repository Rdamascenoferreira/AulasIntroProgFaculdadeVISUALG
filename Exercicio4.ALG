Algoritmo "semnome"
// Disciplina  : [No��es de Programa��o/ITI]
// Professor   : S�rgio Netto
// Descri��o   : Aqui voc� descreve o que o programa faz! (fun��o)
// Autor(a)    : Rodrigo Damasceno
// Data atual  : 14/09/2021
Var
   // Se��o de Declara��es das vari�veis
   jv,sexo,idade,esporte,tot_idade,tot_bas:inteiro
   tot_fut,tot_vol,jv1,jv2,jv3:inteiro
   sx,es:caractere
   med_bas,med_fut,med_vol:real


Inicio
   // Se��o de Comandos, procedimento, fun��es, operadores, etc...

   jv<-0

   enquanto jv<75 faca
      jv<-jv+1
      sexo<-randi(2)+1
      idade<-randi(6)+12
      esporte<-randi(3)+1
      tot_idade<-tot_idade+idade

      se esporte=1 entao
         es<-"Basquete"
         tot_bas<-tot_bas+idade
         jv1<-jv1+1
      fimse

      se esporte=2 entao
         es<-"Futebol
         tot_fut<-tot_fut+idade
         jv2<-jv2+1
      fimse

      se esporte=3 entao
         es<-"V�lei"
         tot_vol<-tot_vol+idade
         jv3<-jv3+1
      fimse

      se sexo=1 entao
         sx<-"Masculino"

      fimse

      se sexo=2 entao
         sx<-"Feminino"

      fimse

      escreval(jv,"---",sx,"---",idade,"---",esporte," - ",es)

   fimenquanto

   med_bas<-tot_bas/jv1
   med_fut<-tot_fut/jv2
   med_vol<-tot_vol/jv3

   escreval("A m�dia de idade do BASQUETE � de: ",med_bas:5:1)
   escreval("A m�dia de idade do FUTEBOL � de: ",med_fut:5:1)
   escreval("A m�dia de idade do V�LEI � de: ",med_vol:5:1)





Fimalgoritmo