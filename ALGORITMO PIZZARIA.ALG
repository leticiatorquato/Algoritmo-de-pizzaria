Algoritmo "Algoritmo pizzaria"
// Disciplina   : [Lógica de Programação]
// Professor   : William Ribeiro
// Descrição   : Módulos mesa/pagamento/pizza/preco
// Autor(a)    : Amanda, Carolina, Joana e Letícia
// Data atual  : 17/11/2025
Var
// Seção de Declarações das variáveis
opcao_principal: inteiro // é o menu principal
mesas: vetor[1..10] de caractere // status das mesas
total_mesa: vetor[1..10] de real // essa variável é o total do valor de pedidos de uma mesa (precisa do modulo de pedidos)
menu_mesa: inteiro // esse é pra escolher as opções do menu de mesas
nu_mesa: inteiro // esse guarda o número da mesa
forma: inteiro // formas de pagamento
qtd_aguardando: inteiro
menu_pizza: inteiro // esse é pra escolher as opções do menu de pizzas
sabor: caractere
categoria: inteiro
salgadas: vetor [1..7] de caractere // variável que guarda os sabores salgados
doces: vetor [1..5] de caractere // variável que guarda os sabores doces
vegetarianas: vetor [1..4] de caractere // variável que guarda os sabores vegetarianos
i: inteiro
cat_salgadas: logico
cat_doces: logico
cat_vegetarianas: logico
precop: real //variável que guarda o valor da pizza P
precom: real //variável que guarda o valor da pizza M
precog: real  //variável que guarda o valor da pizza G
menu_funcionario: inteiro // esse é pra escolher as opções do menu de funcionarios
nome_pizzaiolo: vetor [1..2] de caractere
cpf_pizzaiolo: vetor [1..2] de inteiro
telefone_pizzaiolo: vetor [1..2] de inteiro
email_pizzaiolo: vetor [1..2] de caractere
nome_atendente: vetor [1..2] de caractere
cpf_atendente: vetor [1..2] de inteiro
telefone_atendente: vetor [1..2] de inteiro
email_atendente: vetor [1..2] de caractere
nome_caixa: vetor [1..2] de caractere
cpf_caixa: vetor [1..2] de inteiro
telefone_caixa: vetor [1..2] de inteiro
email_caixa: vetor [1..2] de caractere
pizzaiolo: logico
atendente: logico
caixa: logico
cargo: inteiro
totalPedido: real
sabor_escolhido: inteiro
quantidade: inteiro
subtotal: real
preco_item: real
continuar: caractere
j: inteiro
tamanho: caractere


Inicio
// Seção de Comandos, procedimento, funções, operadores, etc...
qtd_aguardando <- 0
para nu_mesa de 1 ate 10 faca
        mesas[nu_mesa] <- "vazia"
        total_mesa[nu_mesa] <- 0
    fimpara

repita

//===== MENU PRINCIPAL =====

escreval("===== MENU PRINCIPAL =====")
        escreval("1 - Módulo de pizzas")
        escreval("2 - Módulo de preços")
        escreval("3 - Módulo de mesas")
        escreval("4 - Módulo de pedidos")
        escreval("5 - Módulo de pagamentos")
        escreval("6 - Módulo de funcionários")
        escreval("0 - Sair do sistema")
        
        leia(opcao_principal)
        
        

//=========MÓDULO DE PIZZAS=========
cat_salgadas <- falso
cat_doces <- falso
cat_vegetarianas <- falso

se opcao_principal=1 entao

//------MENU DE PIZZAS-----

// enquanto houver categorias faltando, manter o menu

repita

escreval("====== MÓDULO DE PIZZAS ======")
escreval("1 - Cadastrar pizzas")
escreval("2 - Mostrar pizzas cadastradas")
escreval("0 - Voltar ao menu principal")
leia(menu_pizza)

se menu_pizza=1 entao

enquanto (cat_salgadas = falso) ou (cat_doces = falso) ou (cat_vegetarianas = falso) faca


      escreval("Escolha uma categoria de pizza para cadastrar:")

      se cat_salgadas = falso entao
            escreval("1 - Pizzas Salgadas (7 sabores)")
      fimse

      se cat_doces = falso entao
            escreval("2 - Pizzas Doces (5 sabores)")
      fimse

      se cat_vegetarianas = falso entao
            escreval("3 - Pizzas Vegetarianas (4 sabores)")
      fimse

      escreva("Digite sua opção: ")
      leia(categoria)

//Validação da categoria
         enquanto (categoria<1) ou (categoria>3) faca
                  escreva("Categoria inválida. Digite 1, 2 ou 3.")
                  leia(categoria)
         fimenquanto

//Cadastro conforme a categoria
         //categoria salgadas
         se (categoria=1) e (cat_salgadas = falso) entao
                  para i de 1 ate 7 faca
                       escreval("Digite o sabor", i, " de pizza salgada que você deseja cadastrar:")
                       leia(salgadas[i])
                  fimpara
                  cat_salgadas <- verdadeiro
                  escreval("Categoria salgadas cadastrada!")
         fimse

         //categoria doces
         se (categoria=2) e (cat_doces = falso) entao
            para i de 1 ate 5 faca
                 escreval("Digite o sabor", i, " de pizza doce que você deseja cadastrar:")
                 leia(doces[i])
            fimpara
            cat_doces <- verdadeiro
            escreval("Categoria doces cadastrada!")
         fimse

         //categoria vegetarianas
         se (categoria=3) e (cat_vegetarianas = falso) entao
            para i de 1 ate 4 faca
                 escreval("Digite o sabor", i, " de pizza vegetariana que você deseja cadastrar:")
                 leia(vegetarianas[i])
            fimpara
            cat_vegetarianas <- verdadeiro
            escreval("Categoria vegetarianas cadastrada!")
         fimse

fimenquanto

fimse

//------SABORES CADASTRADOS------
se menu_pizza=2 entao

escreval("========SABORES CADASTRADOS========")

escreval("Pizzas salgadas:")
para i de 1 ate 7 faca
     escreval("- ",salgadas[i])
fimpara

escreval("Pizzas doces:")
para i de 1 ate 5 faca
     escreval("- ",doces[i])
fimpara

escreval("Pizzas vegetarianas:")
para i de 1 ate 4 faca
     escreval("- ",vegetarianas[i])
fimpara

fimse

ate menu_pizza=0

fimse

//========MÓDULO DE PREÇO=========

se opcao_principal=2 entao

   //------CADASTRO DE PREÇOS------
   escreval("------CADASTRO DE PREÇOS------")

   escreval("Digite o preço da pizza pequena (P)")
   leia(precop)

   escreval("Digite o preço da pizza média (M)")
   leia(precom)

   escreval("Digite o preço da pizza grande (G)")
   leia(precog)

//------PREÇOS CADASTRADOS------
escreval("------PREÇOS CADASTRADOS------")
escreval("Pizza pequena: R$", precop)
escreval("Pizza média: R$", precom)
escreval("Pizza grande: R$", precog)

fimse
        
//=========MÓDULO DE MESAS=========

se opcao_principal = 3 entao

  repita

        escreval("===== MÓDULO DE MESAS =====")
        escreval("1 - Ver status de todas as mesas")
        escreval("2 - Alterar status de uma mesa")
        escreval("3 - Consultar mesa específica")
        escreval("0 - voltar ao menu principal")

        leia(menu_mesa)


        // 1 - Ver status de todas as mesas
             se menu_mesa = 1 entao
            escreval("")
            escreval("STATUS DAS MESAS:")
            para nu_mesa de 1 ate 10 faca
                escreval("Mesa ", nu_mesa, ": ", mesas[nu_mesa])
            fimpara
            fimse

         // 2 - Alterar status de uma mesa

            se menu_mesa = 2 entao
            escreva("Digite o número da mesa: ")
            leia(nu_mesa)

            se (nu_mesa < 1) ou (nu_mesa > 10) entao
                escreval("Mesa inválida!")
            senao
                escreval("Status atual da mesa ", nu_mesa, ": ", mesas[nu_mesa])
                escreval("Escolha o novo status:")
                escreval("1 - vazia")
                escreval("2 - ocupada")
                escreval("3 - aguardando pagamento")
                leia(menu_mesa)

                se menu_mesa = 1 entao
                    mesas[nu_mesa] <- "vazia"
                    total_mesa[nu_mesa] <- 0
                senao
                    se menu_mesa = 2 entao
                        mesas[nu_mesa] <- "ocupada"
                    senao
                        se menu_mesa = 3 entao
                            mesas[nu_mesa] <- "aguardando pagamento"
                            qtd_aguardando <- qtd_aguardando + 1
                        senao
                            escreval("Opção inválida.")
                        fimse
                    fimse
                fimse

                escreval("Status atualizado com sucesso!")
            fimse
         fimse
      // "3 - Consultar mesa específica
            se menu_mesa = 3 entao
            escreva("Digite o número da mesa: ")
            leia(nu_mesa)

            se (nu_mesa < 1) ou (nu_mesa > 10) entao
                escreval("Mesa inválida!")
            senao
                escreval("Mesa ", nu_mesa, " está: ", mesas[nu_mesa])
                escreval(" O total atual: R$ ", total_mesa[nu_mesa])
            fimse
        fimse
        ate menu_mesa = 0
    fimse
    
//========= MÓDULO DE PEDIDOS =========

se opcao_principal = 4 entao

     escreval("===== MÓDULO DE PEDIDOS =====")
     escreva("Digite o número da mesa para registrar pedidos: ")
     leia(nu_mesa)

     se (nu_mesa < 1) ou (nu_mesa > 10) entao
          escreval("Mesa inválida!")
     senao
          se mesas[nu_mesa] <> "ocupada" entao
               escreval("A mesa precisa estar 'ocupada' para fazer pedidos.")
          senao
                
                continuar <- "S"

                repita

                    i <- i + 1

                    escreval("Escolha a categoria:")
                    escreval("1 - Salgadas")
                    escreval("2 - Doces")
                    escreval("3 - Vegetarianas")
                    leia(categoria)

                    // mostrar sabores cadastrados
                    se categoria = 1 entao
                        para j de 1 ate 7 faca
                             escreval(j, " - ", salgadas[j])
                        fimpara
                    senao
                        se categoria = 2 entao
                            para j de 1 ate 5 faca
                               escreval(j, " - ", doces[j])
                            fimpara
                        senao
                            para j de 1 ate 4 faca
                               escreval(j, " - ", vegetarianas[j])
                            fimpara
                        fimse
                    fimse

                    escreva("Escolha o sabor (número): ")
                    leia(sabor_escolhido)

                    escreval("Escolha o tamanho:")
                    escreval("P - Pequena (", precop, ")")
                    escreval("M - Média   (", precom, ")")
                    escreval("G - Grande  (", precog, ")")
                    leia(tamanho)

                    se (tamanho = "P") ou (tamanho = "p") entao
                        preco_item <- precop
                    senao
                        se (tamanho = "M") ou (tamanho = "m") entao
                             preco_item <- precom
                        senao
                             preco_item <- precog
                        fimse
                    fimse

                    escreva("Quantidade: ")
                    leia(quantidade)

                    subtotal <- preco_item * quantidade
                    totalPedido <- totalPedido + subtotal

                    escreval("Subtotal do item: R$ ", subtotal:4:2)

                    escreval("Deseja adicionar outro item? (S/N)")
                    leia(continuar)

                ate (continuar = "N") ou (continuar = "n")

                escreval("Total do pedido: R$ ", totalPedido:4:2)

                // soma no total da mesa
                total_mesa[nu_mesa] <- total_mesa[nu_mesa] + totalPedido

                escreval("Pedido registrado com sucesso!")
           fimse
     fimse
fimse


//========MÓDULO DE PAGAMENTOS=========
    
se opcao_principal = 5 entao
     repita

        escreval("===== MÓDULO DE PAGAMENTOS =====")
        escreval("1 - Pagar mesas")
        escreval("2 - Listar todas as mesas que estao aguarando pagamento")
        escreval("0 - Sair do módulo")
        leia(menu_mesa)
             escreval(" ")
         se menu_mesa = 1 entao
                   escreva("Qual mesa deseja pagar? ")
        leia(nu_mesa)
                   se (nu_mesa < 1) ou (nu_mesa > 10) entao
                escreval("Mesa inválida!")

                senao
                    se mesas[nu_mesa] <>  "aguardando pagamento" entao
                         escreval("Mesa nao esta aguardando pagamento ")
                    senao
                            qtd_aguardando <- qtd_aguardando - 1
                            escreval("Total: R$", total_mesa[nu_mesa])
                            escreval("escolha a forma pagamento")
                            escreval(" ")
                             escreval("1 - PIX")
                              escreval("2 - debito")
                               escreval("3 - credito")

                               leia (forma)


                          escolha forma
                                caso 1
                                    escreval("Pagamento PIX concluído!")
                                caso 2
                                    escreval("Pagamento Débito concluído!")
                                caso 3
                                    escreval("Pagamento Crédito concluído!")
                                outrocaso
                                    escreval("Forma inválida.")
                            fimescolha

                            mesas[nu_mesa] <- "vazia"
                            total_mesa[nu_mesa] <- 0
                            escreval("Mesa liberada!")

                        fimse
                    fimse

                fimse


                // 2 — LISTAR MESAS PENDENTES
                se menu_mesa = 2 entao
                    escreval("aguardando pagamento: ", qtd_aguardando)
                    escreval(" " )
                    para nu_mesa de 1 ate 10 faca
                        se mesas[nu_mesa] = "aguardando pagamento" entao
                            escreval("Mesa: ", nu_mesa, " — Total: R$ ", total_mesa[nu_mesa])
                             escreval(" — Total: R$ ", total_mesa[nu_mesa])

                        fimse
                    fimpara
                fimse

            ate menu_mesa = 0

        fimse


//==========MÓDULO DE FUNCIONÁRIOS============
pizzaiolo<-falso
atendente<-falso
caixa<-falso

se opcao_principal = 6 entao

repita

escreval("=========MÓDULO DE FUNCIONÁRIOS=========")
escreval("1- Cadastrar novo funcionário")
escreval("2- Visualizar funcionários cadastrados")
escreval("0- Voltar ao menu principal")
leia(menu_funcionario)

//================ CADASTRO =====================
se menu_funcionario=1 entao

     enquanto (pizzaiolo = falso) ou (atendente = falso) ou (caixa = falso) faca

          escreval("Escolha um cargo para cadastrar:")

          se pizzaiolo=falso entao
               escreval("1- Pizzaiolo (2 vagas)")
          fimse

          se atendente=falso entao
               escreval("2- Atendente (2 vagas)")
          fimse

          se caixa=falso entao
               escreval("3- Caixa (2 vagas)")
          fimse

          escreval("Digite o cargo:")
          leia(cargo)

          //Validação da cargo
          enquanto (cargo<1) ou (cargo>3) faca
               escreval("Cargo inválido. Digite 1, 2 ou 3.")
               leia(cargo)
          fimenquanto

          //==== Pizzaiolo ====
          se (cargo=1) e (pizzaiolo=falso) entao
               para i de 1 ate 2 faca
                    escreval("Digite o nome do pizzaiolo ", i, ":")
                    leia(nome_pizzaiolo[i])
                    escreval("Digite o CPF: ")
                    leia(cpf_pizzaiolo[i])
                    escreval("Digite o telefone: ")
                    leia(telefone_pizzaiolo[i])
                    escreval("Digite o e-mail: " )
                    leia(email_pizzaiolo[i])
               fimpara

               pizzaiolo<-verdadeiro
               escreval("Pizzaiolos cadastrados com sucesso!")
          fimse

          //==== Atendente ====
          se (cargo=2) e (atendente=falso) entao
               para i de 1 ate 2 faca
                    escreval("Digite o nome do atendente ", i, ":")
                    leia(nome_atendente[i])
                    escreval("Digite o CPF: ")
                    leia(cpf_atendente[i])
                    escreval("Digite o telefone: ")
                    leia(telefone_atendente[i])
                    escreval("Digite o e-mail: " )
                    leia(email_atendente[i])
               fimpara

               atendente<-verdadeiro
               escreval("Atendentes cadastrados com sucesso!")
          fimse

          //==== Caixa ====
          se (cargo=3) e (caixa=falso) entao
               para i de 1 ate 2 faca
                    escreval("Digite o nome do caixa ", i, ":")
                    leia(nome_caixa[i])
                    escreval("Digite o CPF: ")
                    leia(cpf_caixa[i])
                    escreval("Digite o telefone: ")
                    leia(telefone_caixa[i])
                    escreval("Digite o e-mail: " )
                    leia(email_caixa[i])
               fimpara

               caixa<-verdadeiro
               escreval("Caixas cadastrados com sucesso!")
          fimse

     fimenquanto

fimse

//========FUNCIONÁRIOS CADASTRADOS========
se menu_funcionario=2 entao

     escreval("========FUNCIONÁRIOS CADASTRADOS========")

     escreval("Pizzaiolos")
     para i de 1 ate 2 faca
          escreval("Dados do pizzaiolo", i)
          escreval("- ",nome_pizzaiolo[i])
          escreval("- ",cpf_pizzaiolo[i])
          escreval("- ",telefone_pizzaiolo[i])
          escreval("- ",email_pizzaiolo[i])
     fimpara

     escreval("Atendentes")
     para i de 1 ate 2 faca
          escreval("Dados do atendente", i)
          escreval("- ",nome_atendente[i])
          escreval("- ",cpf_atendente[i])
          escreval("- ",telefone_atendente[i])
          escreval("- ",email_atendente[i])
     fimpara

     escreval("Caixas")
     para i de 1 ate 2 faca
          escreval("Dados do caixa", i)
          escreval("- ",nome_caixa[i])
          escreval("- ",cpf_caixa[i])
          escreval("- ",telefone_caixa[i])
          escreval("- ",email_caixa[i])
     fimpara
     

fimse

ate menu_funcionario=0

fimse

ate opcao_principal = 0

Fimalgoritmo
