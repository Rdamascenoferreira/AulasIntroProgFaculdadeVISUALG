Algoritmo "semnome"
// Disciplina  : [No��es de Programa��o/ITI]
// Professor   : S�rgio Netto
// Descri��o   : Aqui voc� descreve o que o programa faz! (fun��o)
// Autor(a)    : Rodrigo Damasceno
// Data atual  : 16/09/2021
Var
   // Se��o de Declara��es das vari�veis
   ordens,os,diasP,diasG,tipoS,tot_man,tot_rep,atraso_man,atraso_rep:inteiro
   osat,atrasoM,atraso,DiasMan,DiasRep,emDia:inteiro
   tipoS1:caractere
   med_man,med_rep,med_dias_man,med_dias_rep,med_m,med_r,perc_emDia:real


Inicio
   // Se��o de Comandos, procedimento, fun��es, operadores, etc...

   ordens<-0 //contador
   diasP<-0    //Dias Programados
   tot_rep<-0  //Total de reparo
   tot_man<-0   //Total de manuten��o
   diasG<-0     // Dias gastos
   os<-0        // Numero das ordens de servi�o
   atrasoM<-0    //Atrasos
   osat<-0       //OS atrasada
   escreval(" OS  -   Dias Previsto  - Dias Gastos  -  Servi�o  ")

   enquanto ordens<250 faca

      ordens<-ordens+1               //contador
      diasP<-randi (11)+5
      tipoS<-randi(2)+1
      diasG<-randi (16)+5
      os<-ordens+1353               //n�mero da os em atraso

      //OP ENTREGUES DENTRO DO PRASO
      se diasP>=diasG entao
         emDia<-emDia+1  //NUMERO DE OS DENTRO DO PRAZO
         
      fimse

      //OS EM ATRASO
      se diasG>diasP entao
         atraso<- diasG-diasP
         se atraso>atrasoM entao
            atrasoM<-atraso
            osat<-ordens+1353

         fimse

      fimse

      //DESIGNA��O DE OS'S
      se tipoS=1 entao
         tipoS1<-"Manuten��o"
         tot_man<-tot_man+1
         se diasP<diasG entao
            atraso_man<-atraso_man+1  //atraso em dias de manuten��o
            DiasMan<-diasMan+(diasG-diasP) //somat�rio da qtde. de dias de manuten��o em atraso

         fimse
      fimse

      se tipoS=2 entao
         tipoS1<-"Reparo"
         tot_rep<-tot_rep+1
         se diasP<diasG entao
            atraso_rep<-atraso_rep+1 //atraso em dias de reparo
            DiasRep<-DiasRep+(diasG-diasP)//somat�rio da qtde. de dias de reparo em atraso
         fimse
      fimse




      escreval(os,"      ",diasP, "             ",diasG,"           ",tipoS," - ",tipoS1)

   fimenquanto
   //medias e percentuais
   med_man<-atraso_man/tot_man*100  //percentual de OS de manuten��o fora do Prazo
   med_rep<-atraso_rep/tot_rep*100 //percentual de OS de reparo fora do Prazo
   med_m<-DiasMan/atraso_man      //medias dos dias em atraso+somario dos dias
   med_r<-DiasRep/atraso_rep     //medias dos dias em atraso+somario dos dias
   perc_emDia<-emDia/ordens*100   //percentual de OS dentro do Prazo


   escreval("O percentual de atraso em MANUTEN��ES � de ",med_man:4:1,"%")
   escreval("O percentual de atraso em REPAROS � de ",med_rep:4:1,"%")
   escreval("A OS com maior atraso � a",osat," com ",atrasom," dias de atraso")
   escreval(".")
   escreval(".")
   escreval(".")
   escreval("A m�dia de dias em atraso de MANUTEN��O � de: ",med_m:4:2)
   escreval("A m�dia de dias em atraso de REPARO � de: ",med_r:4:2)
   
   
   escreval("O percentual de OS dentro do PRAZO � de ",perc_emDia:4:1,"%")
Fimalgoritmo