function change_tool() {
    tool = document.getElementById("select_tool")
    switch (tool.value) {
        case "extrat_text":
            label = document.getElementById("label_tool")
            description = document.getElementById("description_tool")
            label.innerHTML = "Extractor de Textos"
            description.innerHTML = "Herramienta para extraer los textos en ingles de un campo de una tabla e introducirlos en la base de datos para su posterior traducción."
    }
}

function change_db() {
    serv = document.getElementById("serv_form").value
    user = document.getElementById("user_form").value
    pass = document.getElementById("pass_form").value
    if (serv != "" && user != "" && pass != "") {
        locol = document.getElementById("selt_db")
        locol.innerHTML = "<option value=\"one\">1</option>\n" +
            "                        <option value=\"two\">2</option>\n" +
            "                        <option value=\"eThree\">3</option>"

    }
}
