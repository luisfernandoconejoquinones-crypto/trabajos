let listaMascotas = [];

let guardar = () => {

    let listaMascotas = JSON.parse(localStorage.getItem("mascotas")) || [];

    let mascota = {
        nombre: document.getElementById("nombreAnimal").value,
        especie: document.getElementById("tipoAnimal").value,
        edad: document.getElementById("anios").value,
        habitat: document.getElementById("lugarAnimal").value,
        imagen: document.getElementById("fotoAnimal").value
    };

    listaMascotas.push(mascota);

    localStorage.setItem("mascotas", JSON.stringify(listaMascotas));

    alert("Mascota guardada");

    nombreAnimal.value = "";
    tipoAnimal.value = "";
    anios.value = "";
    lugarAnimal.value = "";
    fotoAnimal.value = "";

};

let verDatos = () => {

    let datos = JSON.parse(localStorage.getItem("mascotas")) || [];

    let contenedor = document.getElementById("catalogo");

    contenedor.innerHTML = "";

    for(let i = 0; i < datos.length; i++) {

        let tarjeta = document.createElement("div");

        tarjeta.style.border = "1px solid";
        tarjeta.style.borderRadius = "8px";
        tarjeta.style.padding = "10px";
        tarjeta.style.margin = "10px";
        tarjeta.style.display = "inline-block";
        tarjeta.style.width = "200px";

        let h3 = document.createElement("h3");
        h3.textContent = datos[i].nombre;

        let pEspecie = document.createElement("p");
        pEspecie.textContent = "Especie: " + datos[i].especie;

        let pEdad = document.createElement("p");
        pEdad.textContent = "Edad: " + datos[i].edad + " años";

        let pHabitat = document.createElement("p");
        pHabitat.textContent = "Hábitat: " + datos[i].habitat;

        let img = document.createElement("img");
        img.src = datos[i].imagen;
        img.style.width = "150px";

        tarjeta.appendChild(h3);
        tarjeta.appendChild(pEspecie);
        tarjeta.appendChild(pEdad);
        tarjeta.appendChild(pHabitat);
        tarjeta.appendChild(img);

        contenedor.appendChild(tarjeta);
    }

};