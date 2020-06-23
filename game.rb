class Game               #classe game
    def initialize        #metodo initialize
        @limit = rand(5..10)
        @number = rand(1..10)
    end
    def start             #metodo inicio
      intro
      guess
    end
    def guess            #frase de apresentação
      puts "Você tem 4 tentativas para adivinhar o número que eu gerei entre 1 a #{@limit}..."
      puts 'Vamos começar?'
      beginning_the_game    #chamada metodo
    end
    def beginning_the_game  
      attempts = 4
      4.times do        #estrutura de repetição
        puts 'Digite o número e vamos ver se você ira acertar:'
        my_guess = gets.chomp.to_i
        if my_guess == @number  #condicional my_guess igual ao numero 
          sucess(attempts)
          break
        else                    #se diferente....
          fail(attempts)
        end
        attempts -= 1           #contador -1
      end
    end
    def sucess(attempts)        #metodo sucesso
      puts '\o/' * 10
      puts "\nParabééééééééns!!!! Você acertou depois de #{attempts} tentativas!" #congratulações
      puts "O número é #{@number}"
    end
    def fail(attempts)                                #falha
      puts "Ainda não... Faltam #{attempts - 1} tentativas!"
      puts "Game over! O número é #{@number}" if attempts == 1
    end
    def intro                                       #apresentação
      puts '#' * 100
      puts '######## BEM VINDO AO JOGO DE ADVINHAR ############'
      puts '#' * 100
      puts 'Iniciando o jogo em:'
      splash
    end
    def splash
      5.downto(1).each do |x|
        puts x
        sleep 1
      end
    end
end

game = Game.new
game.start