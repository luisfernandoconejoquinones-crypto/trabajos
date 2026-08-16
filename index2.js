let listaAreas = [];

let guardar = () => {

    listaAreas = JSON.parse(localStorage.getItem("areas")) || [];

    let areas = {
        nombre: document.getElementById("nombreArea").value,
        responsable: document.getElementById("encargado").value,
        empleado: document.getElementById("cantidad").value,
        ubicacion: document.getElementById("lugar").value,
        imagen: document.getElementById("foto").value
    };

    listaAreas.push(areas);

    localStorage.setItem("areas", JSON.stringify(listaAreas));

    alert("Área guardada");

    nombreArea.value = "";
    encargado.value = "";
    cantidad.value = "";
    lugar.value = "";
    foto.value = "";

};

let ver = () => {

    let datos = JSON.parse(localStorage.getItem("areas")) || [];

    let contenedor = document.getElementById("tabla");

    contenedor.innerHTML = "";

    let tabla = document.createElement("table");
    tabla.border = "1";

    let filaEncabezado = document.createElement("tr");

    let thNombre = document.createElement("th");
    thNombre.textContent = "Nombre";
    filaEncabezado.appendChild(thNombre);

    let thResponsable = document.createElement("th");
    thResponsable.textContent = "Responsable";
    filaEncabezado.appendChild(thResponsable);

    let thEmpleado = document.createElement("th");
    thEmpleado.textContent = "Empleados";
    filaEncabezado.appendChild(thEmpleado);

    let thUbicacion = document.createElement("th");
    thUbicacion.textContent = "Ubicación";
    filaEncabezado.appendChild(thUbicacion);

    let thImagen = document.createElement("th");
    thImagen.textContent = "Imagen";
    filaEncabezado.appendChild(thImagen);

    tabla.appendChild(filaEncabezado);

    for(let i = 0; i < datos.length; i++) {

        let fila = document.createElement("tr");

        let tdNombre = document.createElement("td");
        tdNombre.textContent = datos[i].nombre;
        fila.appendChild(tdNombre);

        let tdResponsable = document.createElement("td");
        tdResponsable.textContent = datos[i].responsable;
        fila.appendChild(tdResponsable);

        let tdEmpleado = document.createElement("td");
        tdEmpleado.textContent = datos[i].empleado;
        fila.appendChild(tdEmpleado);

        let tdUbicacion = document.createElement("td");
        tdUbicacion.textContent = datos[i].ubicacion;
        fila.appendChild(tdUbicacion);

        let tdImagen = document.createElement("td");

        let img = document.createElement("img");

        img.src = datos[i].imagen;
        img.style.width = "100px";

        tdImagen.appendChild(img);
        fila.appendChild(tdImagen);

        tabla.appendChild(fila);
    }

    contenedor.appendChild(tabla);

}