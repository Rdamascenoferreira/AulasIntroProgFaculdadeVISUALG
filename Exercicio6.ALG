Algoritmo "semnome"
// Disciplina  : [Noções de Programação/ITI]
// Professor   : Sérgio Netto
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Rodrigo Damasceno
// Data atual  : 16/09/2021
Var
   // Seção de Declarações das variáveis
   ordens,os,diasP,diasG,tipoS,tot_man,tot_rep,atraso_man,atraso_rep:inteiro
   osat,atrasoM,atraso:inteiro
   tipoS1:caractere
   med_man,med_rep:real


Inicio
   // Seção de Comandos, procedimento, funções, operadores, etc...

   ordens<-0
   diasP<-0
   tot_rep<-0
   tot_man<-0
   diasG<-0
   os<-0
   atrasoM<-0
   osat<-0
   escreval(" OS  -   Dias Previsto  - Dias Gastos  -  Serviço  ")

   enquanto ordens<250 faca

      ordens<-ordens+1
      //os<-randi(250)+1354
      diasP<-randi (11)+5
      tipoS<-randi(2)+1
      diasG<-randi (16)+5
      os<-ordens+1353
      se diasG>diasP entao
         atraso<- diasG-diasP
         se atraso>atrasoM entao
            atrasoM<-atraso
            osat<-ordens+1353
         fimse

      fimse


      se tipoS=1 entao
         tipoS1<-"Manutenção"
         tot_man<-tot_man+1
         se diasP<diasG entao
            atraso_man<-atraso_man+1

         fimse
      fimse

      se tipoS=2 entao
         tipoS1<-"Reparo"
         tot_rep<-tot_rep+1
         se diasP<diasG entao
            atraso_rep<-atraso_rep+1
         fimse
      fimse




      escreval(os,"      ",diasP, "             ",diasG,"           ",tipoS," - ",tipoS1)

   fimenquanto

   med_man<-atraso_man/tot_man*100
   med_rep<-atraso_rep/tot_rep*100

   escreval("O percentual de atraso em MANUTENÇÕES é de ",med_man:4:1,"%")
   escreval("O percentual de atraso em MANUTENÇÕES é de ",med_rep:4:1,"%")
   escreval("A OS com maior atraso é a",osat," com ",atrasom," dias de atraso")

Fimalgoritmo