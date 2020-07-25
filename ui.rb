def da_boas_vindas
  puts "*************************"
  puts "*     Jogo da forca     *"
  puts "*************************"
  puts "Qual é o seu nome?"
  nome = gets.strip
  puts "\n\n\n\n"
  puts "Começaremos o jogo para você #{nome}"
  nome
end

def desenha_forca(erros)
  cabeca = "  "
  corpo = " "
  pernas = " "
  bracos = " "

  if erros >= 1
    cabeca = "(_)"
  end
  if erros >= 2
    bracos = " | "
    corpo =  " | "
  end
  if erros >= 3
    bracos = "\\|/"
  end
  if erros >= 4
    pernas = "/ \\"
  end
 
  puts "  ----- "
  puts " |/    | "
  puts " |     #{cabeca}  "
  puts " |     #{bracos}  "
  puts " |     #{corpo}   "
  puts " |     #{pernas}  "
  puts " |                "
  puts " |                "
  puts "-|---             "
  puts ""
  
end

def avisa_acertou_palavra
  puts "Parabens voce ganhou! \n\n"

  puts "     ----------     "
  puts "    '._==_==_=.'    "
  puts "    .-\\\\:     /-. "
  puts "   | (|:.     |) |  "
  puts "    '-|:.     |-'   "
  puts "     \\::.    /     "
  puts "      '::. .'       "
  puts "        ) (         "
  puts "      -.' '.-       "
  puts "      '------'      "
  puts "                    "
end

def cabecalho_de_tentativas(chutes, erros, mascara)
  puts "\n\n\n\n"
  desenha_forca erros
  puts "Palavra secreta: #{mascara}"
  puts "Erros ate agora: #{erros}"
  puts "Chutes ate agora: #{chutes}"
end

def pede_um_chute
  puts "Entre coma letra ou palavra"
  chute = gets.strip.downcase
  puts "Será que acertou? Você chutou #{chute}"
  chute
end

def nao_quer_jogar?
  puts "Deseja jogar novamente? (S/N)"
  quero_jogar = gets.strip
  nao_quero_jogar = quero_jogar.upcase == "N"
end

def sorteira_palavra_secreta
  palavra_secreta  =  "programador"
  palavra_secreta
end

def avisa_escolhendo_palavra
  puts "Escolha uma palavra secreta ... "
end

def avisa_palavra_escolhida(palavra_secreta)
  puts "Escolhida a palavra secreta com  #{palavra_secreta.size} letras ... boa sorte!"
  palavra_secreta
end

def avisa_chute_repetido(chute)
  puts "Voce ja chutou #{chute}"
end

def avisa_letra_nao_encontrada
  puts "Letra não encontrata!"
end

def avisa_letra_encontrada(total_encontrado)
  puts "Letra encontradda#{total_encontrado} vezes!"
end

def avisa_errou_palavra
  puts "Que pena ... errou!"
end

def avisa_pontos(pontos_ate_agora)
  puts "Voce ganhou #{pontos_ate_agora} pontos."
end

def avisa_pontos_totais(pontos)
  puts "Voce possui #{pontos} pontos."
end

def avisa_campeao_atual(dados)
  puts "Nossso campeao atual eh #{dados[0]} com #{dados[1]} pontos. "
end
