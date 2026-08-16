let naciones = [];

let guardar = () => {

    naciones = JSON.parse(localStorage.getItem("naciones")) || [];

    let pais = document.getElementById("pais");
    let capitalPais = document.getElementById("capitalPais");
    let zona = document.getElementById("zona");
    let lengua = document.getElementById("lengua");
    let urlBandera = document.getElementById("urlBandera");

    let nacion = {
        nombre: pais.value,
        capital: capitalPais.value,
        continente: zona.value,
        idioma: lengua.value,
        bandera: urlBandera.value
    };

    naciones.push(nacion);

    localStorage.setItem("naciones", JSON.stringify(naciones));

    alert("Nación agregada");

    pais.value = "";
    capitalPais.value = "";
    zona.value = "";
    lengua.value = "";
    urlBandera.value = "";

}

let mostrar = () => {

    let datos = JSON.parse(localStorage.getItem("naciones")) || [];

    let contenedor = document.getElementById("contenedor");

    contenedor.innerHTML = "";

    for(let i = 0; i < datos.length; i++){

        let tarjeta = document.createElement("div");

        tarjeta.style.border = "1px solid";
        tarjeta.style.borderRadius = "8px";
        tarjeta.style.padding = "10px";
        tarjeta.style.margin = "10px";
        tarjeta.style.display = "inline-block";
        tarjeta.style.width = "200px";

        let img = document.createElement("img");

        img.src = datos[i].bandera;
        img.style.width = "100%";
        img.style.borderRadius = "4px";

        let titulo = document.createElement("h3");

        titulo.textContent = datos[i].nombre;

        let pCapital = document.createElement("p");

        pCapital.textContent = "Capital: " + datos[i].capital;

        let pContinente = document.createElement("p");

        pContinente.textContent = "Continente: " + datos[i].continente;

        let pIdioma = document.createElement("p");

        pIdioma.textContent = "Idioma: " + datos[i].idioma;

        tarjeta.appendChild(img);
        tarjeta.appendChild(titulo);
        tarjeta.appendChild(pCapital);
        tarjeta.appendChild(pContinente);
        tarjeta.appendChild(pIdioma);

        contenedor.appendChild(tarjeta);
    }
};