def half_pyramid
    (floors + 1).times do |i|
    puts ("#" * i).rjust(floors)
    end
end

def full_pyramid
  print "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ? (Entre 1 et 25)\n> "
  floors = gets.chomp.to_i
  (floors + 1).times do |i|
  i += 1
  print " " * floors + "#" * ((2 * i - 1)) + "\n"
  floors -= 1 
  end
end



def wtf_pyramid()
  print "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ? (Choisis un nombre impaire entre 1 et 25)\n> "
    floors = gets.chomp.to_i

    if !(floors % 2 == 0)
      (floors).times do |i|
        if i <= (floors / 2)
          print " " * ((floors - i) - ((floors / 2) + 1)) + "#" * (2 * i + 1) + "\n"
        else
          print " " * ((i + 1) - ((floors / 2) + 1)) + "#" * ((floors * 2 - i * 2) - 1) + "\n"
        end
      end
    else
      puts "Votre chiffre est pair, ça ne peut pas marcher."
    end
end

def perform
  wtf_pyramid
end

perform