echo "Hey, te revoilà !"
sleep 1
echo "Ce nouveau script te laisse le choix"
sleep 1 
echo 'Que souhaites tu faire ? 
    1) Obtenir la liste de toutes les Vagrants qui sont lancées 
    2) Intéragir avec unes des Vagrants allumées (nous te présenterons la liste des vagrants allumées juste avant)'
read response

    if [[ $response == '1' ]]
        then
            echo 'Voici la liste des vagrants allumées'
            sleep 2
            vagrant global-status | grep -r running
           
    elif [[ $response == '2' ]]
        then
            echo 'Avec quelle vagrant souhaites-tu intéragir (laquelle souhaites-tu éteindre) ?(Pour information, voici la liste des vagrants allumées.'
            sleep 2
            vagrant global-status | grep -r running
            sleep 1
            echo -e 'Alors, quel est ton choix de vagrant (saisir son ID) ?'
            read vagrant
            vagrant destroy $vagrant
            

    else
        echo -e '\033[45m Merci de saisir une action valide la prochaine fois !\033[0m'
    fi
            