Algoritmo "semnome"
// Disciplina  : [Noções de Programação/ITI]
// Professor   : Sérgio Netto
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Rodrigo Damasceno
// Data atual  : 19/09/2021
Var
   // Seção de Declarações das variáveis
   cont,TipoAtendimento,TipoOrigem,idade,Tot_CG,Tot_OR,SomaIdadePart,SomaIdadePS:inteiro
   Part,PS,Superior:inteiro
   atendimento,origem:caractere
   perc_CG, perc_OR,med_IdadePart,med_IdadePS,med_IdadeSuperior:real

Inicio
   // Seção de Comandos, procedimento, funções, operadores, etc...

   cont<-0
   idade<-0
   Tot_CG<-0
   Tot_OR<-0
   Superior<-0

   escreval("Paciênte - Tipo de Atendimento - Origem            -   Idade")

   enquanto cont<100 faca   //contador
      cont<-cont+1                    //contagem contador
      TipoAtendimento<-randi(2)       //gerador de atendimento
      TipoOrigem<-randi(2)
      Idade<-randi(90)

      //bloco de atendimento
      se TipoAtendimento=0 entao
         atendimento<-"Clínica Geral"
         Tot_CG<-Tot_CG+1           //Total de atendimentos Clínica Geral
         se idade>60 entao      //Bloco paciêntes acima dos 60
            superior<-superior+1
         fimse
      fimse

      se TipoAtendimento=1 entao
         atendimento<-"Ortopedia    "
         Tot_OR<-Tot_OR+1           //Total de atendimentos Ortopedia
      fimse

      //bloco de origem de atendimento
      se TipoOrigem=0 entao
         origem<-"Particular    "
         SomaIdadePart<-SomaIdadePart+idade
         Part<-Part+1
      fimse

      se TipoOrigem=1 entao
         origem<-"Plano de Saúde"
         SomaIdadePS<-SomaIdadePS+idade
         PS<-PS+1
      fimse


      escreval("   ",cont,"    -   ",atendimento,"      - ",origem,"   -   ",idade)
   fimenquanto

   perc_CG<-Tot_CG/cont*100  //percentual de atendimentos em Clínica Geral
   perc_OR<-Tot_OR/cont*100  //percentual de atendimentos em Ortopedia
   med_IdadePart<-SomaIdadePart/Part   //media idade particular
   med_IdadePS<-SomaIdadePS/PS         //media idade plano de saude
   med_IdadeSuperior<-Superior/Tot_CG*100  // media idade acima dos 60 anos

   escreval("O percentual de atendimentos em Clínica Geral é de: ",perc_CG:4:1,"%")
   escreval("O percentual de atendimentos em Ortopedia é de:  ",perc_OR:4:1,"%")
   escreval()
   escreval()
   escreval()
   escreval("A média de idade dos paciêntes PARTICULARES é de:      ",med_IdadePart:4:1)
   escreval("A média de idade dos paciêntes de PLANO DE SAÚDE é de: ",med_IdadePS:4:1)
   escreval("============================================")
   escreval("O Percentual de paciências com idade superior a 60 anos é de: ",med_IdadeSuperior:4:1,"%")
   escreval("============================================")
Fimalgoritmo