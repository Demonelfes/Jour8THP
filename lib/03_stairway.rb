$current_step = 1
$dice = [1, 2, 3, 4 ,5 ,6]
$dice_roll = 0

def play_game
    i = 0
    while $current_step != 10

        case $dice_roll
        when 1..1
            #puts "Vous avez fait 1, vous reculez d'une marche. Marche actuelle : #{$current_step}."
            $current_step-=1
        when 2..4
          #  puts "Vous avez fait 2, 3 ou 4. Rien ne se passe."
        when 5..6
           # puts "Vous avez fait 5 ou 6, vous avancez d'une marche. Marche actuelle : #{$current_step}."
            $current_step+= 1
        end
       # print "Vous êtes en bas d'un escalier à 10 marches.\n" + "Marche actuelle : #{$current_step}.\n"
        $dice_roll = $dice.sample
        i += 1
    end
    $current_step = 1
    $dice_roll = 0
   # puts "Vous êtes arrive a la 10eme marche, felicitation !"
    return i
end


def average_finish_time
    mean_before_ten = []
    100.times do
        mean_before_ten.push(play_game)
    end
    average = mean_before_ten.sum / mean_before_ten.size
    return average
end


def perform
    #play_game
   puts average_finish_time
end

perform