Algoritmo "semnome"
// Disciplina  : [No��es de Programa��o/ITI]
// Professor   : S�rgio Netto
// Descri��o   : Aqui voc� descreve o que o programa faz! (fun��o)
// Autor(a)    : Rodrigo Damasceno
// Data atual  : 14/09/2021
Var
   // Se��o de Declara��es das vari�veis
   jv,sexo,idade,esporte,tot_idade,tot_bas,tot_sexoM,tot_sexoF:inteiro
   sexoF_bas,sexoF_fut,sexoF_vol,sexoM_bas,sexoM_fut,sexoM_vol:inteiro
   tot_fut,tot_vol,jv1,jv2,jv3:inteiro
   sx,es:caractere
   med_bas,med_fut,med_vol,MedF_bas,MedF_fut,MedF_vol:real
   MedM_bas,MedM_fut,MedM_vol:real
   maior:inteiro


Inicio
   // Se��o de Comandos, procedimento, fun��es, operadores, etc...

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
         es<-"V�lei"
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
         tot_sexoM<-tot_sexoM+1       //Total p�blico masculino

      fimse

      se sexo=2 entao
         sx<-"Feminino"
         tot_sexoF<-tot_sexoF+1   //Total p�blico feminino

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


   escreval("A m�dia de idade do BASQUETE � de: ",med_bas:5:1)
   escreval("A m�dia de idade do FUTEBOL � de: ",med_fut:5:1)
   escreval("A m�dia de idade do V�LEI � de: ",med_vol:5:1)
   escreval()
   escreval()
   escreval()
   escreval("O percentual de MULHERES no BASQUETE � de: ",MedF_bas:5:1,"%")
   escreval("O percentual de MULHERES no FUTEBOL � de: ",MedF_fut:5:1,"%")
   escreval("O percentual de MULHERES no VOLEI � de: ",MedF_vol:5:1,"%")
   escreval("--------------------------------------------")
   escreval("O percentual de HOMENS no BASQUETE � de: ",MedM_bas:5:1,"%")
   escreval("O percentual de HOMENS no FUTEBOL � de: ",MedM_fut:5:1,"%")
   escreval("O percentual de HOMENS no VOLEI � de: ",MedM_vol:5:1,"%")



Fimalgoritmo