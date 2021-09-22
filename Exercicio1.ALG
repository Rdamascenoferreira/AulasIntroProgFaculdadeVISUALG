Algoritmo "semnome"
// Disciplina  : [Noções de Programação/ITI]
// Professor   : Sérgio Netto
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Rodrigo Damasceno
// Data atual  : 19/09/2021
Var
   // Seção de Declarações das variáveis
   cont, idade,sx,SomaM,SomaF,Tot_M,Tot_F:inteiro
   sexo:caractere
   med_M,Med_F:real



Inicio
   // Seção de Comandos, procedimento, funções, operadores, etc...
   idade<-0
   sx<-0
   Tot_M<-0
   Tot_F<-0

   enquanto cont<4 faca
      cont<-cont+1
      idade<-randi(29)+17
      sx<-randi(2)

      se sx=1 entao
         sexo<-"M"
         SomaM<-SomaM+idade
         Tot_M<-Tot_M+1

      fimse

      se sx=0 entao
         sexo<-"F"
         SomaF<-SomaF+idade
         Tot_F<-Tot_F+1
      fimse

      escreval(idade," ---- ",sexo)
   fimenquanto

   med_M<-SomaM/Tot_M
   med_F<-SomaF/Tot_F

   escreval("A média de idade MASCULINA é de :",med_M:4:2)
   escreval("A média de idade FEMININA é de  :",med_F:4:2)
Fimalgoritmo