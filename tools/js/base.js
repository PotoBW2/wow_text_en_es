document.getElementById("conn_form").addEventListener("submit", function (event) {
    event.preventDefault();
});

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

function obt_local() {
    ls = localStorage.getItem("wow_text_en_es")
    if (ls == null) {
        dicc = {conn_db: {serv: "", user: "", no_pass: false}}
        localStorage.setItem("wow_text_en_es", JSON.stringify(dicc))
        return dicc
    }
    return JSON.parse(ls)
}

function guar_local(data) {
    localStorage.setItem("wow_text_en_es", JSON.stringify(data))
}

async function change_server() {
    input = document.getElementById("serv_input")
    serv = input.value
    text = document.getElementById("serv_text")
    icon = document.getElementById("serv_icon")
    field = document.getElementById("serv_field")
    input.classList.remove("is-danger")
    icon.classList.remove("fa-exclamation-triangle")
    input.classList.remove("is-success")
    icon.classList.remove("fa-check")
    text.classList.remove("is-success")
    text.classList.remove("is-danger")
    text.innerHTML = ""
    db_o_select = document.getElementById("bd_o_selt")
    db_o_select.setAttribute("disabled", "")
    db_o_select.innerHTML = ""
    field.classList.add("is-loading")
    if (serv == "") {
        document.getElementById("serv_loanding").remove()
        input.classList.add("is-danger")
        icon.classList.add("fa-exclamation-triangle")
        text.classList.add("is-danger")
        text.innerHTML = "Debe introducir un servidor."
    } else {
        user = document.getElementById("user_input")
        pass = document.getElementById("pass_input")
        check_pass = document.getElementById("check_pass")
        check_pass.setAttribute("disabled", "")
        pass.setAttribute("disabled", "")
        user.setAttribute("disabled", "")
        user_text = document.getElementById("user_text")
        user_icon = document.getElementById("user_icon")
        pass_text = document.getElementById("pass_text")
        pass_icon = document.getElementById("pass_icon")
        user.value = ""
        user.classList.remove("is-danger")
        user.classList.remove("is-success")
        user_icon.classList.remove("fa-exclamation-triangle")
        user_icon.classList.remove("fa-check")
        user_text.classList.remove("is-success")
        user_text.classList.remove("is-danger")
        user_text.innerHTML = ""
        pass.classList.remove("is-danger")
        pass.classList.remove("is-success")
        pass_icon.classList.remove("fa-exclamation-triangle")
        pass_icon.classList.remove("fa-check")
        pass_text.classList.remove("is-success")
        pass_text.classList.remove("is-danger")
        pass_text.innerHTML = ""
        pass.value = ""
        resp = await fetch('http://localhost/wow_text_en_es/tools/php/ping.php', {
            method: 'POST',
            headers: {
                'Content-Type': 'application/json'
            },
            body: JSON.stringify({hostname: serv})
        })
        data = await resp.json()
        field.classList.remove("is-loading")
        if (data) {
            input.classList.add("is-success")
            icon.classList.add("fa-check")
            text.classList.add("is-success")
            ls = obt_local()
            ls.conn_db.serv = serv
            ls.conn_db.user = ""
            ls.conn_db.no_pass = false
            guar_local(ls)
            user.removeAttribute("disabled")
            check_pass.removeAttribute("disabled")
            pass.removeAttribute("disabled")
        } else {
            input.classList.add("is-danger")
            icon.classList.add("fa-exclamation-triangle")
            text.classList.add("is-danger")
            text.innerHTML = "No hay acceso al servidor."
        }
    }
}

async function change_checked_pass() {
    check_pass = document.getElementById("check_pass")
    pass = document.getElementById("pass_input")
    pass.classList.remove("is-danger")
    pass.classList.remove("is-success")
    pass_icon.classList.remove("fa-exclamation-triangle")
    pass_icon.classList.remove("fa-check")
    pass_text.classList.remove("is-success")
    pass_text.classList.remove("is-danger")
    pass_text.innerHTML = ""
    pass.value = ""
    if (check_pass.checked) {
        pass.setAttribute("disabled", "")
    } else {
        pass.removeAttribute("disabled")
    }
    await charge_db(document.getElementById("user_input"), pass, check_pass)
}

async function charge_db(user, pass, check_pass) {
    serv = document.getElementById("serv_input").value
    user = user.value
    pass = pass.value
    bol_pass = true
    if (!check_pass.checked && pass == "") {
        bol_pass = false
    }
    if (serv != "" && user != "" && bol_pass) {
        let input = document.getElementById("user_input")
        let text = document.getElementById("user_text")
        let icon = document.getElementById("user_icon")
        const field_user = document.getElementById("user_field")
        const field_pass = document.getElementById("pass_field")
        input.classList.remove("is-danger")
        icon.classList.remove("fa-exclamation-triangle")
        input.classList.remove("is-success")
        icon.classList.remove("fa-check")
        text.classList.remove("is-success")
        text.classList.remove("is-danger")
        text.innerHTML = ""
        field_user.classList.add("is-loading")
        input = document.getElementById("pass_input")
        text = document.getElementById("pass_text")
        icon = document.getElementById("pass_icon")
        input.classList.remove("is-danger")
        icon.classList.remove("fa-exclamation-triangle")
        input.classList.remove("is-success")
        icon.classList.remove("fa-check")
        text.classList.remove("is-success")
        text.classList.remove("is-danger")
        text.innerHTML = ""
        field_pass.classList.add("is-loading")
        resp = await fetch('http://localhost/wow_text_en_es/tools/php/list_bd.php', {
            method: 'POST',
            headers: {
                'Content-Type': 'application/json'
            },
            body: JSON.stringify({hostname: serv, username: user, password: pass})
        })
        locol = document.getElementById("bd_o_selt")
        HTML = ""
        data = await resp.json()
        field_user.classList.remove("is-loading")
        field_pass.classList.remove("is-loading")
        if (data["type"] == "error") {
            if (data["mensage"].includes("Access denied for user")) {
                document.getElementById("user_input").classList.add("is-danger")
                text = document.getElementById("user_text")
                text.classList.add("is-danger")
                text.innerHTML = "Acceso denegado. Usuario o contraseña incorrecta."
                document.getElementById("user_icon").classList.add("fa-exclamation-triangle")

                document.getElementById("pass_input").classList.add("is-danger")
                document.getElementById("pass_icon").classList.add("fa-exclamation-triangle")
                text = document.getElementById("pass_text")
                text.classList.add("is-danger")
                text.innerHTML = "Acceso denegado. Usuario o contraseña incorrecta."
            } else {
                document.getElementById("serv_input").classList.add("is-danger")
                document.getElementById("serv_icon").classList.add("fa-exclamation-triangle")
                text = document.getElementById("serv_text")
                text.classList.add("is-danger")
                text.innerHTML = "No hay servicio de bases de datos en el servidor."

                user_input = document.getElementById("user_input")
                user_input.classList.remove("is-danger")
                user_input.classList.remove("is-success")
                user_input.setAttribute("disabled", "")
                pass_input = document.getElementById("pass_input")
                pass_input.classList.remove("is-danger")
                pass_input.classList.remove("is-success")
                pass_input.setAttribute("disabled", "")
                document.getElementById("user_icon").classList.remove("fa-exclamation-triangle")
                document.getElementById("user_icon").classList.remove("fa-check")
                document.getElementById("pass_icon").classList.remove("fa-exclamation-triangle")
                document.getElementById("pass_icon").classList.remove("fa-check")
                text = document.getElementById("user_text")
                text.classList.remove("is-danger")
                text.classList.remove("is-success")
                text.innerHTML = ""
                text = document.getElementById("pass_text")
                text.classList.remove("is-danger")
                text.classList.remove("is-success")
                text.innerHTML = ""
                localStorage.removeItem("wow_text_en_es")

            }
            locol.innerHTML = "";
            locol.setAttribute("disabled", "")
        } else {
            ls = obt_local()
            ls.conn_db.user = user
            ls.conn_db.no_pass = check_pass.checked
            guar_local(ls)

            document.getElementById("user_input").classList.add("is-success")
            document.getElementById("user_icon").classList.add("fa-check")
            text = document.getElementById("user_text")
            text.classList.add("is-success")

            document.getElementById("pass_input").classList.add("is-success")
            document.getElementById("pass_icon").classList.add("fa-check")
            text = document.getElementById("pass_text")
            text.classList.add("is-success")

            for (let i = 0; i < data["data"].length; i++) {
                HTML = HTML + "<option value=\"" + data["data"][i] + "\">" + data["data"][i] + "</option>\n"
            }
            locol.innerHTML = HTML;
            locol.removeAttribute("disabled")
        }
    }
}

async function change_user() {
    input = document.getElementById("user_input")
    user = input.value
    text = document.getElementById("user_text")
    icon = document.getElementById("user_icon")
    field = document.getElementById("user_field")
    input.classList.remove("is-danger")
    icon.classList.remove("fa-exclamation-triangle")
    input.classList.remove("is-success")
    icon.classList.remove("fa-check")
    text.classList.remove("is-success")
    text.classList.remove("is-danger")
    text.innerHTML = ""
    field.classList.add("is-loading")
    condicion = true
    if (user == "") {
        input.classList.add("is-danger")
        icon.classList.add("fa-exclamation-triangle")
        text.classList.add("is-danger")
        text.innerHTML = "Debe introducir un usuario."
    } else {
        pass = document.getElementById("pass_input")
        pass_text = document.getElementById("pass_text")
        pass_icon = document.getElementById("pass_icon")
        pass.classList.remove("is-danger")
        pass.classList.remove("is-success")
        pass_icon.classList.remove("fa-exclamation-triangle")
        pass_icon.classList.remove("fa-check")
        pass_text.classList.remove("is-success")
        pass_text.classList.remove("is-danger")
        pass_text.innerHTML = ""
        pass.value = ""
        for (let i = 0; i < user.length; i++) {
            if (!/[a-z]/.test(user[i])) {
                condicion = false
                i = user.length
            }
        }
        if (condicion) {
            input.classList.add("is-success")
            icon.classList.add("fa-check")
            text.classList.add("is-success")
            await charge_db(input, pass, document.getElementById("check_pass"))
        } else {
            input.classList.add("is-danger")
            icon.classList.add("fa-exclamation-triangle")
            text.classList.add("is-danger")
            text.innerHTML = "Solo se permiten letras minúsculas."
        }
    }
    field.classList.remove("is-loading")
}

async function change_pass() {
    input = document.getElementById("pass_input")
    pass = input.value
    text = document.getElementById("pass_text")
    icon = document.getElementById("pass_icon")
    field = document.getElementById("pass_field")
    input.classList.remove("is-danger")
    icon.classList.remove("fa-exclamation-triangle")
    input.classList.remove("is-success")
    icon.classList.remove("fa-check")
    text.classList.remove("is-success")
    text.classList.remove("is-danger")
    text.innerHTML = ""
    field.classList.add("is-loading")
    condicion = true
    if (pass == "") {
        input.classList.add("is-danger")
        icon.classList.add("fa-exclamation-triangle")
        text.classList.add("is-danger")
        text.innerHTML = "Debe introducir una contraseña."
    } else {
        input.classList.add("is-success")
        icon.classList.add("fa-check")
        text.classList.add("is-success")
        await charge_db(document.getElementById("user_input"), input, document.getElementById("check_pass"))
    }
    field.classList.remove("is-loading")
}


async function init() {
    ls = obt_local()
    const serv = ls.conn_db.serv
    const user = ls.conn_db.user
    const check_pass = ls.conn_db.no_pass
    if (serv != "") {
        document.getElementById("serv_input").value = serv
        await change_server()
    }
    if (check_pass == true) {
        document.getElementById("check_pass").checked = true
        await change_checked_pass()
    }
    if (user != "") {
        document.getElementById("user_input").value = user
        await change_user()
    }
}
