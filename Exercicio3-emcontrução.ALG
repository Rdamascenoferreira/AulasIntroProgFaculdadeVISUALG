Algoritmo "semnome"
// Disciplina  : [Noções de Programação/ITI]
// Professor   : Sérgio Netto
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 14/09/2021
Var
   // Seção de Declarações das variáveis
   total_Geral,op,producao,lp,tot_lp1,lp1,lp2,tot_lp2:inteiro
   linha:caractere
   med_l1, med_l2,perc_op_l1,perc_op_l2:real



Inicio
   // Seção de Comandos, procedimento, funções, operadores, etc...
   op<-0
   escreval(" Op. -- Prod.-- Linha")

   enquanto op<50 faca
      op<-op+1
      producao<-randi(231)+120
      lp<-randi(2)+1
      total_Geral<-total_Geral+producao

      se lp= 1 entao
         linha<- "Linha 1"
         tot_lp1<-tot_lp1+producao
         lp1<-lp1+1

      fimse

      se lp= 2 entao
         linha<- "Linha 2"
         tot_lp2<-tot_lp2+producao
         lp2<-lp2+1
      fimse

      escreval(op,"-----",producao,"-----",linha)

   fimenquanto

   escreval("O Total geral é: ",total_Geral)
   escreval("O Total da Linha 1: ",tot_lp1)
   escreval("O Total da Linha 2: ",tot_lp2)


   med_l1<-tot_lp1/lp1
   med_l2<-tot_lp2/lp2
   perc_op_l1<- lp1/op*100

   escreval("A média da LINHA DE PRODUÇÃO 1: ",med_l1:5:2)
   escreval("A média da LINHA DE PRODUÇÃO 2: ",med_l2:5:2)
   escreval("O percentual de trabalhadores na LINHA 1 é de:",perc_op_l1,"%")


Fimalgoritmo