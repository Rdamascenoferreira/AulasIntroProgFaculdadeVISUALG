Algoritmo "semnome"
// Disciplina  : [Noções de Programação/ITI]
// Professor   : Sérgio Netto
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Rodrigo Damasceno
// Data atual  : 14/09/2021
Var
   // Seção de Declarações das variáveis
   jv,sexo,idade,esporte,tot_idade,tot_bas:inteiro
   tot_fut,tot_vol,jv1,jv2,jv3:inteiro
   sx,es:caractere
   med_bas,med_fut,med_vol:real


Inicio
   // Seção de Comandos, procedimento, funções, operadores, etc...

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
         es<-"Vôlei"
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

   escreval("A média de idade do BASQUETE é de: ",med_bas:5:1)
   escreval("A média de idade do FUTEBOL é de: ",med_fut:5:1)
   escreval("A média de idade do VÔLEI é de: ",med_vol:5:1)





Fimalgoritmo