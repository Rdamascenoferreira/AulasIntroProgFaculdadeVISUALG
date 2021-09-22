Algoritmo "semnome"
// Disciplina  : [Noções de Programação/ITI]
// Professor   : Sérgio Netto
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Rodrigo Damasceno
// Data atual  : 14/09/2021
Var
   // Seção de Declarações das variáveis
   jv,sexo,idade,esporte,tot_idade,tot_bas,tot_sexoM,tot_sexoF:inteiro
   sexoF_bas,sexoF_fut,sexoF_vol,sexoM_bas,sexoM_fut,sexoM_vol:inteiro
   tot_fut,tot_vol,jv1,jv2,jv3:inteiro
   sx,es:caractere
   med_bas,med_fut,med_vol,MedF_bas,MedF_fut,MedF_vol:real
   MedM_bas,MedM_fut,MedM_vol:real
   maior:inteiro


Inicio
   // Seção de Comandos, procedimento, funções, operadores, etc...

   jv<-0
   maior<-0

   enquanto jv<75 faca
      jv<-jv+1
      sexo<-randi(2)+1
      idade<-randi(6)+12
      esporte<-randi(3)+1
      //tot_idade<-tot_idade+idade


      //se maior<idade entao
      //maior<-idade

      //fimse

      se esporte=1 entao
         es<-"Basquete"
         tot_bas<-tot_bas+idade
         jv1<-jv1+1

         se sexo=2 entao
            sexoF_bas<-sexoF_bas+1   //contagem participante feminino
         fimse
         se sexo=1 entao
            sexoM_bas<-sexoM_bas+1   // contagem participante masculino
         fimse

      fimse

      se esporte=2 entao
         es<-"Futebol
         tot_fut<-tot_fut+idade
         jv2<-jv2+1
         se sexo=2 entao               // contagem participante feminina
            sexoF_fut<-sexoF_fut+1
         fimse
         se sexo=1 entao              // contagem participante masculina
            sexoM_fut<-sexoM_fut+1
         fimse
      fimse

      se esporte=3 entao
         es<-"Vôlei"
         tot_vol<-tot_vol+idade
         jv3<-jv3+1
         se sexo=2 entao                // contagem participante feminina
            sexoF_vol<-sexoF_vol+1
         fimse
         se sexo=1 entao               // contagem participante masculina
            sexoM_vol<-sexoM_vol+1

         fimse
      fimse

      se sexo=1 entao
         sx<-"Masculino"
         tot_sexoM<-tot_sexoM+1       //Total público masculino

      fimse

      se sexo=2 entao
         sx<-"Feminino"
         tot_sexoF<-tot_sexoF+1   //Total público feminino

      fimse

      escreval(jv,"---",sx,"---",idade,"---",esporte," - ",es)

   fimenquanto

   //medias de idade geral em cada esporte
   med_bas<-tot_bas/jv1
   med_fut<-tot_fut/jv2
   med_vol<-tot_vol/jv3
   //percentual feminino
   MedF_bas<-sexoF_bas/tot_sexoF*100
   MedF_fut<-sexoF_fut/tot_sexoF*100
   MedF_vol<-sexoF_vol/tot_sexoF*100

   //percentual masculino
   MedM_bas<-sexoM_bas/tot_sexoM*100 // Total de homens em cada esporte
   MedM_fut<-sexoM_fut/tot_sexoM*100 // DIVIDIDO pelo Total de homens geral
   MedM_vol<-sexoM_vol/tot_sexoM*100 // multiplicado por 100


   escreval("A média de idade do BASQUETE é de: ",med_bas:5:1)
   escreval("A média de idade do FUTEBOL é de: ",med_fut:5:1)
   escreval("A média de idade do VÔLEI é de: ",med_vol:5:1)
   escreval()
   escreval()
   escreval()
   escreval("O percentual de MULHERES no BASQUETE é de: ",MedF_bas:5:1,"%")
   escreval("O percentual de MULHERES no FUTEBOL é de: ",MedF_fut:5:1,"%")
   escreval("O percentual de MULHERES no VOLEI é de: ",MedF_vol:5:1,"%")
   escreval("--------------------------------------------")
   escreval("O percentual de HOMENS no BASQUETE é de: ",MedM_bas:5:1,"%")
   escreval("O percentual de HOMENS no FUTEBOL é de: ",MedM_fut:5:1,"%")
   escreval("O percentual de HOMENS no VOLEI é de: ",MedM_vol:5:1,"%")



Fimalgoritmo