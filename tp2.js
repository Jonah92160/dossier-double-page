function affichagetableau() {
    document.write("<table border=2 width=30%;>");
    for(var i=0;i <=5; i++) {
        document.write("<tr> <td>*</td> <td>*</td> <td>*</td> </tr>")
    }
    document.write("<table>")
 }



function tableau2 () {
    var ligne = prompt("Donner le nombre de ligne à afficher.");
    document.write("<table border=2 width=30%;>");
    for(i=1; i<=ligne; i++) {
        document .write("<tr> <td>"+i+"</td> <td>*</td> <td>*</td> </tr>")
    }
    document.write("<table>")
}

function seconnecter () {
    var id = prompt("Donnez votre nom d'utilisateur");
    var mdp = prompt("Entrez votre mot de passe");
    if (id == "admin" && mdp == "admin")
    {
        document.write("Bienvenue:      " + id);
    }
    else
    {
        alert("Accès refusé");
    }
}

function connexion2 () {
    var i = 0;
    do {
        var id = prompt("Donnez votre nom d'utilisateur");
        var mdp = prompt("Entrez votre mot de passe");
        if (id == "admin" & mdp == "admin")
    {
        document.write("Bienvenue:      " + id);
        break;
    }

    else
     
    alert("Accès refusé");
    i+=1;

    } while (i<3);
if(i == 3)
alert("délai dépassé");
}


function printString () {
var chaine=prompt("Donnez un mot")
document.write(chaine.toUpperCase()+"<br>");
document.write(chaine.toLowerCase()+"<br>");
document.write("la chaine contient  " + chaine.lenght+" caractères  " + "<br>");
document.write("la premiere lettre est  " +chaine.substr(0,1)+"<br>");
}

function couleurs () {
    var color = prompt("Entrez une couleur");
    switch(color)
    {
        case "rouge" : document.body.style.background = "red";;
        break;
        case "ROUGE" : document.body.style.background = "red";;
        break;
        case "bleu" : document.body.style.background = "blue";;
        break;
        case "BLEU" : document.body.style.background = "blue";;
        break;

        default:alert("couleur non définis");
    }
}

function facture () {
    somme = 0;
    var produit
    var quant
    var prix
    var prix_final
    do{
        produit = prompt("Donnez le nom du produit");
        quant = prompt("Donnez la quantité");
        prix = prompt("Donnez le prix");

        prix_final= Number(prix)*Number(quant);
        somme = somme + prix_final;

        alert("Votre Panier est égale a " + somme);

        suite = prompt("Avez vous d'autres produit a rentrez? oui/non")
    }

    while (suite !="non");
    document.write("Votre panier est égale a " + somme);
}