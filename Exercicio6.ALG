Algoritmo "semnome"
// Disciplina  : [No��es de Programa��o/ITI]
// Professor   : S�rgio Netto
// Descri��o   : Aqui voc� descreve o que o programa faz! (fun��o)
// Autor(a)    : Rodrigo Damasceno
// Data atual  : 16/09/2021
Var
   // Se��o de Declara��es das vari�veis
   ordens,os,diasP,diasG,tipoS,tot_man,tot_rep,atraso_man,atraso_rep:inteiro
   osat,atrasoM,atraso:inteiro
   tipoS1:caractere
   med_man,med_rep:real


Inicio
   // Se��o de Comandos, procedimento, fun��es, operadores, etc...

   ordens<-0
   diasP<-0
   tot_rep<-0
   tot_man<-0
   diasG<-0
   os<-0
   atrasoM<-0
   osat<-0
   escreval(" OS  -   Dias Previsto  - Dias Gastos  -  Servi�o  ")

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
         tipoS1<-"Manuten��o"
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

   escreval("O percentual de atraso em MANUTEN��ES � de ",med_man:4:1,"%")
   escreval("O percentual de atraso em MANUTEN��ES � de ",med_rep:4:1,"%")
   escreval("A OS com maior atraso � a",osat," com ",atrasom," dias de atraso")

Fimalgoritmo