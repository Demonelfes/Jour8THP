$password_is_set = false


def sign_up
    print "Definissez un mot de passe :\n> "
    user_password = gets.chomp
    return user_password
end

def log_in
    print "Quel est votre mot de passe :\n> "
    password_field = gets.chomp
    return password_field
end

def welcome_screen
    puts "------------------------" + "     BIENVENUE DANS VOTRE ZONE SECRETE    " + "------------------------" 
    puts "------------------------" + "                                          " + "------------------------"
    puts "------------------------" + "                                          " + "------------------------"
    puts "------------------------" + "         TOP SECRET SECRETS FOLDER        " + "------------------------"
    puts "------------------------" + "                                          " + "------------------------"
    puts "------------------------" + "                                          " + "------------------------"
end

def perform()
    user_password = sign_up
    $password_is_set = true
    password_field = log_in
    if user_password != password_field
        print "Les mots de passe ne correspondent pas. "
        log_in
    end
    welcome_screen
end

perform