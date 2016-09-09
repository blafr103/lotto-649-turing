/*Benoit Lafrance
Projet Lotto
Ver 1.0
9 septembre 2016*/


var numrand : array 1 .. 6 of int 
var numchoix : array 1 .. 6 of int 
var bonnum : array 1 .. 6 of boolean 
for i : 1 .. 6 
    bonnum (i) := false %met tout elements de "bonnum" a "false" 
end for 
var exit_loop : boolean 

%variable pour determiner les prix
var d : int
d :=0
%variable pour l'argent de l'utilisateur
var m : int
m :=0


%%introduction
    put "Bienvenue a la lotterie 6-49, "
    put "Chaque billet coute 3$"
    put "Pour jouer, vous devez rentrer 6 nombres differents entre 1 et 49"
    put " "
    put "Bonne chance!"

Time.Delay(6000)
cls

    put "Vous avez ", m, "$ pout jouer, "
    put "voulez-vous en rajouter? Si oui, rentrez un montant"

get m
    
	if m >= 3 then
	    put "Vous avez maintenant ", m, "$ pour jouer"
	elsif m < 3 then
	    put "Desole, vous n'avez pas assez d'argent pour jouer"
	end if
   
Time.Delay(1800)
cls

assert m >=3






%demande a l'utilisateur pour ses nombres
for p : 1 .. 6 
    put "Rentre le ", p, "er/eme nombre: " .. 
    loop 
	exit_loop := true 
	locate (p, 26) 
	get numchoix (p) 
	if numchoix (p) < 1 or numchoix (p) > 49 then 
	    exit_loop := false             
	end if 
	for c : 1 .. p - 1 
	    if numchoix (c) = numchoix (p) then 
		exit_loop := false 
	    end if 
	end for 
	exit when exit_loop  
    end loop 
end for 


loop


% Ceci genere les nombres, et fait sure qu'il n'y a pas de repetitions 
for l : 1 .. 6 
    loop 
	exit_loop := true 
	numrand (l) := Rand.Int (1, 49) 
	for decreasing c : l - 1 .. 1 
	    if numrand (l) = numrand (c) then 
		exit_loop := false 
	    end if 
	end for 
	exit when exit_loop 
    end loop 
end for 
m := m-3
%Enleve les textes/nombres precedents
cls 

%%ceci met les nombres genere et ceux de l'utilisateur
    put "Les nombres gagnant sont:" 
	for l : 1 .. 6 
	    put " ", numrand (l) .. 
	end for 
    put "" 
    put "" 
    put "Tes nombres etaient" 
	for p : 1 .. 6 
	    put " ", numchoix (p) .. 
	end for 
    put "" 

%%verification des nombres le l'utilisateur contre ceux genere%% 
for p : 1 .. 6 
    for l : 1 .. 6 
	if numchoix (p) = numrand (l) then 
	    bonnum (p) := true 
	end if 
    end for 
end for 

for f : 1 .. 6 
    if bonnum (f) then     % meme chose que "if bonnum (f) = true then" 
	put "Tu as bien devine ton ", f, "er/eme nombre.  Tu as choisi ", numchoix (f), "."
	d +=1
    else 
	put "Tu as mal devine ton ", f, "er/eme nombre.  Tu a choisi ", numchoix (f), "." 
    end if 
end for

%Ceci est pour determiner si l'uyilisateur a gagne un prix ou non
    if d <=2 then
	put "Vous n'avez rien gagne"
    elsif d =3 then
	put "Bravo, vous avez gagne 10$"
	m +=10
    elsif d =4 then
	put "Bravo, vous avez gagne 100$"
	m +=100
    elsif d =5 then
	put "Bravo, vous avez gagne 10 000$"
	m +=10000
    elsif d =6 then
	put "Vous avez gagne la lotterie 6-49, votre prix est 10 000 000$"
	m +=10000000
    end if

    
Time.Delay(7000)
cls 
    
%variable cree pour decider ce que l'utilisateur veut faire 
var inp : string
var mo : int

       
    
	put "Voulez-vous jouer une autre ronde? Il vous reste ", m, "$ pour jouer." 
   
	    loop
    
	 if m <= 0 then
	     put "Vous n'avez pas assez d'argent pour jouer"
	 end if
    
	put "Si vous voulez ajouter de l'argent, tapez l'ajout. Sinon, tapez un <<0>>"

    get mo
    m := m+mo
    
	put "Vous avez maintenant ", m, "$"
	put " "
    
    if m >=3 then
	exit
 end if
    
	    end loop
%done l'option a l'utilisateur de recommencer
    put "Si vous voulez jouer encore avec les meme nombres choisi, tappez <<ok>>."
    put "Si vous voulez arreter de jouer, tapez <<quit>>."


%%%%%%%%%%%%Ces commandes sont pour fair un "reset" des variables pour le prochain loop
for l :  1 .. 6  
numrand (l) :=0 
end for

d := 0

for i : 1 .. 6 
    bonnum (i) := false 
end for 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    
    get inp

	if inp = "ok" then       
	elsif inp = "quit" then
	    quit
	end if     
end loop       

cls



