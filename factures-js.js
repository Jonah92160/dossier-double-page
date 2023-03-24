function add(){
  var newLi= document.getElementById("frstLigne").cloneNode(true);
  var lastLi= document.getElementById("lastLigne");

  var pere= document.getElementById("table-calcul").firstChild.nextSibling;
  pere.insertBefore(newLi,lastLi);

}
function suppr(){
  document.getElementById("table-calcul").deleteRow(-1);
}

function remplir() {
  const tabDesc = ["Ecran 17 pouces", "Souris", "Ram 8 GO", "Clef usb 16 Gb", "Bureau", "portable"];

  const champsDesc = document.querySelectorAll("#table-calcul input[name='desc']");

  champsDesc.forEach(champDesc => {
    const indexAleatoire = Math.floor(Math.random() * tabDesc.length);
    const motAleatoire = tabDesc[indexAleatoire];
    champDesc.value = motAleatoire;
  });
}

function remplirNombres() {
  const remplirNombreInputs = document.getElementsByClassName("prix");
  const qteInputs = document.getElementsByClassName("qte");
  
  for (let i = 0; i < remplirNombreInputs.length; i++) {
    const randomNombre = Math.floor(Math.random() * 50) + 1;
    remplirNombreInputs[i].value = randomNombre;
  }

  for (let i = 0; i < qteInputs.length; i++) {
    const randomQte = Math.floor(Math.random() * 10) + 1;
    qteInputs[i].value = randomQte;
  }
}

function calculate() {
  var total = 0;
  var soustotal = 0;

  var listePrix = document.getElementsByClassName("prix");
  var listeQte = document.getElementsByClassName("qte");
  var listeTtl = document.getElementsByClassName("totalLigne");
  var listeSoustotal = document.getElementById("soustotal");
  var listesremise = document.getElementById('sremise');
  var listeremise = document.getElementById('remise');
  var listetauximpo = document.getElementById('tauximpo');
  var listetaxetotal = document.getElementById('taxetotal');
  var listeexpi = document.getElementById('expi');
  var listeprixfinal = document.getElementById('prixfinal');
  

  console.log("1" + listesremise)
  console.log("2" + listeSoustotal)

  for (var i = 0; i < listePrix.length; i++) {
      listeTtl[i].value = parseInt(listeQte[i].value) * parseInt(listePrix[i].value);
      total = total + parseInt(listeTtl[i].value);
      document.getElementsByClassName("total")[0].innerHTML = total; 
      soustotal = total;
      
  }
  listesremise.value = soustotal - (soustotal * (parseFloat(listeremise.value)/100));

  listetaxetotal.value = (soustotal * (parseFloat(listetauximpo.value)/100));

  listeprixfinal.value = parseFloat(listesremise.value) + parseFloat(listetaxetotal.value) + parseFloat(listeexpi.value);




}