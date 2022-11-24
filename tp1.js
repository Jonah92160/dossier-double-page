function calcul_moyenne()
{
    var note1= prompt("donner première note /20:");
    var note2= prompt("donner la deuxième note /20: ");
    var note3= prompt("donner la troisième /20:");

    var somme = Number(note1)+Number(note2)+Number(note3);

    document.write ("Voici la sommme de vos notes: " + somme + "<br>");
    var moyenne= somme/3;

    document.write("Voici la moyenne:" + moyenne + "/20" +"<br>");

    if(moyenne<10)
    {
    document.write("Vous etes redoublant");
    document.body.style.background = "red";
    }
    else
    {
    document.write("vous etes admis");
    document.body.style.background = "green";
    }
}


function test_age(){
    var age= prompt("donnez votre age");
    if (age<18)
    {
        document.write("Vous etes mineur, le ptiot");
        document.body.style.background = "red";
    }
    else
    {
        document.write("Vous etes majeur l'alcool c'est pas cool mec reste concentré chacal ça t'apporteras rien")
        document.body.style.background = "green";
    }
}


function simple_affichage(){
    var nom = prompt("donner votre nom");
    var prenom = prompt("donner votre pronom");

    document.write("<div style=' color:red; margin:auto; width:300px; border:2px solid blue: '>");
    document.write("Bonjour " + prenom + " " + nom)
    document.write("</div>"); 
}   

function test_couleur()
{
    var c = prompt("donner une couleur");
    if ( c == "rouge " || c == "ROUGE" || c== "R")
    document.body.style.background = "red";
    else if( c == "bleu " || c == "BLEU")
    document.body.style.background = "blue";
    else
    document.write("couleur non comprise");
}

function somme()
{
    var a = (document.getElementById("t1").value);
    var b = (document.getElementById("t2").value);
    var c = Number(a) + Number(b);

    t3.value = c;
}

function soustraction()
{
    var a = (document.getElementById("t1").value);
    var b = (document.getElementById("t2").value);
    var c = Number(a) - Number(b);

    t3.value = c;
}

function division()
{
    var a = (document.getElementById("t1").value);
    var b = (document.getElementById("t2").value);
    var c = Number(a) / Number(b);

    t3.value = c;
}

function multiplication()
{
    var a = (document.getElementById("t1").value);
    var b = (document.getElementById("t2").value);
    var c = Number(a) * Number(b);

    t3.value = c;
}

function parite()
{
    var v = N(document.getElementById("t1").value);
    if (v % 2==0)

    alert("Ce nombre est pair");
    else
    alert("Ce nombre est impair");
}

function permute()
{
    var v3 = "";
    a = document.getElementById("t1").value;
    a = document.getElementById("t2").value;
    v3=a;
    a=b;
    b=v3;

    t1.value = a;
    t2.value = b;
}