class Game
    def initialize
        @limit = rand(5..10)
        @number = rand(1..10)
    end 
    def start 
        puts "Advinhe o número que eu estou pensando entre 1 e 10"
        puts "Pronto?"
        starting_game
    end
    def starting_game
        puts "Digitte o número"
        my_guess = gets.chomp.to_i       
        case my_guess
            when my_guess < @number
                puts "O número é maior que #{my_guess}"            
            when my_guess > @number
                puts "O número é menor que #{my_guess}"
            when my_guess == @number
                success (attempts)
        end
        def success
          puts "\nParabééééééééns!!!! Você acertou depois de #{attempts} tentativas!" #congratulações
          puts "O número é #{@number}"
        end
    end
end
game = Game.new
game.start
