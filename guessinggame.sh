#!/bin/bash

# Fonction pour demander à l'utilisateur de deviner le nombre de fichiers
function guess_files {
    local correct_answer=$(ls -l | grep -v ^l | wc -l)
    local guess=0

    while [[ $guess -ne $correct_answer ]]
    do
        echo "Devine combien de fichiers se trouvent dans le répertoire actuel : "
        read guess

        if [[ $guess -lt $correct_answer ]]
        then
            echo "C'est trop bas. Essaye encore."
        elif [[ $guess -gt $correct_answer ]]
        then
            echo "C'est trop haut. Essaye encore."
        fi
    done

    echo "Bravo ! Tu as trouvé le bon nombre de fichiers !"
}

# Appel de la fonction
guess_files
