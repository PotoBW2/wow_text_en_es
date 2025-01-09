let text_inserted = ""
let text_updated = ""
let text_espansioned = ""
let text_jumped = ""
let text_traslated = ""
const modal = document.getElementById("modal")
const modal_mess = document.getElementById("modal_message")

document.getElementById("conn_form").addEventListener("submit", function (event) {
    event.preventDefault();
});

function change_tool() {
    tool = document.getElementById("select_tool")
    let label = document.getElementById("label_tool")
    let description = document.getElementById("description_tool")
    let et = document.getElementById("extrat_text")
    et.hidden = true;
    let ai = document.getElementById("adjust_id")
    ai.hidden = true;
    let t = document.getElementById("traducir")
    t.hidden = true;
    let il = document.getElementById("inyect_locales")
    il.hidden = true;
    switch (tool.value) {
        case "extrat_text":
            label.innerHTML = "Extractor de Textos"
            description.innerHTML = "Herramienta para extraer los textos en ingles de un campo de una tabla e introducirlos en la base de datos para su posterior traducción."
            et.hidden = false;
            break
        case "adjust_id":
            label.innerHTML = "Ajustar Identificadores"
            description.innerHTML = "Herramienta para ajustar los identificadores de los textos acabados de insertar para evitar errores en las demás herramientas."
            ai.hidden = false;
            break
        case "traducir":
            label.innerHTML = "Traducir Texto en Ingles"
            description.innerHTML = "Herramienta que permite traducir todos los textos en inglés que no estén traducidos (esta traducción es proporcionada por Google y no está exenta de errores)."
            t.hidden = false;
            break
        case "inyectar_locales":
            label.innerHTML = "Inyectar Texto en Español"
            description.innerHTML = "Herramienta que permite introducir los textos ya traducidos en las bases de datos del Core."
            il.hidden = false;
            break

    }
}

function obt_local() {
    ls = localStorage.getItem("wow_text_en_es")
    if (ls == null) {
        dicc = { conn_db: { serv: "", user: "", no_pass: false } }
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
    reiniciar_herramientas()
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
        resp = await fetch('php/ping.php', {
            method: 'POST',
            headers: {
                'Content-Type': 'application/json'
            },
            body: JSON.stringify({ hostname: serv })
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
        document.getElementById("et_bd_o_selt").parentElement.classList.add("is-loading")
        document.getElementById("et_bd_d_selt").parentElement.classList.add("is-loading")
        document.getElementById("il_bd_o_selt").parentElement.classList.add("is-loading")
        document.getElementById("il_bd_d_selt").parentElement.classList.add("is-loading")
        resp = await fetch('php/list_bd.php', {
            method: 'POST',
            headers: {
                'Content-Type': 'application/json'
            },
            body: JSON.stringify({ hostname: serv, username: user, password: pass })
        })
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
            reiniciar_herramientas()
            document.getElementById("et_bd_o_selt").parentElement.classList.remove("is-loading")
            document.getElementById("et_bd_d_selt").parentElement.classList.remove("is-loading")
            document.getElementById("il_bd_o_selt").parentElement.classList.remove("is-loading")
            document.getElementById("il_bd_d_selt").parentElement.classList.remove("is-loading")

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
            cargar_bd_de_herramientas(HTML)
        }
    }
}

function reiniciar_herramientas() {
    const et_bd_o = document.getElementById("et_bd_o_selt")
    const et_bd_d = document.getElementById("et_bd_d_selt")
    et_bd_o.innerHTML = "";
    et_bd_d.innerHTML = "";
    et_bd_o.setAttribute("disabled", "")
    et_bd_d.setAttribute("disabled", "")
    const il_bd_o = document.getElementById("il_bd_o_selt")
    const il_bd_d = document.getElementById("il_bd_d_selt")
    il_bd_o.innerHTML = "";
    il_bd_d.innerHTML = "";
    il_bd_o.setAttribute("disabled", "")
    il_bd_d.setAttribute("disabled", "")
    change_et_c_en_o()
    change_et_c_es_o()
    change_et_bd_o()
    change_il_c_en_o()
    change_il_c_es_o()
    change_il_bd_o()
}

function cargar_bd_de_herramientas(HTML) {
    const et_bd_o = document.getElementById("et_bd_o_selt")
    const et_bd_d = document.getElementById("et_bd_d_selt")
    et_bd_o.parentElement.classList.remove("is-loading")
    et_bd_d.parentElement.classList.remove("is-loading")
    et_bd_o.innerHTML = HTML;
    et_bd_d.innerHTML = HTML;
    et_bd_o.removeAttribute("disabled")
    et_bd_d.removeAttribute("disabled")
    const il_bd_o = document.getElementById("il_bd_o_selt")
    const il_bd_d = document.getElementById("il_bd_d_selt")
    il_bd_o.parentElement.classList.remove("is-loading")
    il_bd_d.parentElement.classList.remove("is-loading")
    il_bd_o.innerHTML = HTML;
    il_bd_d.innerHTML = HTML;
    il_bd_o.removeAttribute("disabled")
    il_bd_d.removeAttribute("disabled")
    change_il_bd_o()
    change_il_bd_d()
    change_et_bd_o()
    change_et_bd_d()
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
    document.getElementById("select_tool").selectedIndex = 0
    change_tool()
}

async function change_et_bd_o() {
    const tabla_en = document.getElementById("et_t_en_selt")
    const tabla_es = document.getElementById("et_t_es_selt")
    tabla_en.innerHTML = ""
    tabla_es.innerHTML = ""
    tabla_en.setAttribute("disabled", "")
    tabla_es.setAttribute("disabled", "")
    const p_tabla_en = tabla_en.parentElement
    const p_tabla_es = tabla_es.parentElement
    p_tabla_en.classList.add("is-loading")
    p_tabla_es.classList.add("is-loading")
    const bd = document.getElementById("et_bd_o_selt")
    let valor_bd = bd.value
    ls = obt_local()
    let pass = ""
    if (!ls.conn_db.no_pass) {
        pass = document.getElementById("pass_input").value
    }
    resp = await fetch('php/list_table.php', {
        method: 'POST',
        headers: {
            'Content-Type': 'application/json'
        },
        body: JSON.stringify({ hostname: ls.conn_db.serv, username: ls.conn_db.user, password: pass, database: valor_bd })
    })
    data = await resp.json()
    let HTML = ""
    if (data["type"] == "error") {
        let user = document.getElementById("user_input")
        let pass = document.getElementById("pass_input")
        let check_pass = document.getElementById("check_pass")
        p_tabla_en.classList.remove("is-loading")
        p_tabla_es.classList.remove("is-loading")
        await charge_db(user, pass, check_pass)
    } else {
        for (let i = 0; i < data["data"].length; i++) {
            HTML = HTML + "<option value=\"" + data["data"][i] + "\">" + data["data"][i] + "</option>\n"
        }
        tabla_en.innerHTML = HTML
        tabla_es.innerHTML = HTML
        tabla_en.removeAttribute("disabled")
        tabla_es.removeAttribute("disabled")
        p_tabla_en.classList.remove("is-loading")
        p_tabla_es.classList.remove("is-loading")
        await change_et_c_en_o()
        await change_et_c_es_o()
    }
}

async function change_et_c_en_o() {
    const cell_en = document.getElementById("et_c_en_selt")
    const id_en = document.getElementById("et_id_en_selt")
    cell_en.innerHTML = ""
    id_en.innerHTML = ""
    cell_en.setAttribute("disabled", "")
    id_en.setAttribute("disabled", "")
    const p_cell_en = cell_en.parentElement
    const p_id_en = cell_en.parentElement
    p_cell_en.classList.add("is-loading")
    p_id_en.classList.add("is-loading")
    const bd = document.getElementById("et_bd_o_selt")
    let valor_bd = bd.value
    ls = obt_local()
    let pass = ""
    if (!ls.conn_db.no_pass) {
        pass = document.getElementById("pass_input").value
    }
    resp = await fetch('php/list_cells.php', {
        method: 'POST',
        headers: {
            'Content-Type': 'application/json'
        },
        body: JSON.stringify({
            hostname: ls.conn_db.serv,
            username: ls.conn_db.user,
            password: pass,
            database: valor_bd,
            table: document.getElementById("et_t_en_selt").value
        })
    })
    data = await resp.json()
    let HTML = ""
    let HTML_id = ""
    if (data["type"] == "error") {
        let user = document.getElementById("user_input")
        let pass = document.getElementById("pass_input")
        let check_pass = document.getElementById("check_pass")
        await charge_db(user, pass, check_pass)
        p_cell_en.classList.remove("is-loading")
        p_id_en.classList.remove("is-loading")
    } else {
        for (let i = 0; i < data["data"].length; i++) {
            let type = data["data"][i]["Type"]
            if (isStringField(type)) {
                HTML = HTML + "<option value=\"" + data["data"][i]["Field"] + "\">" + data["data"][i]["Field"] + "( " + type + " )</option>\n"
            }
        }
        for (let i = 0; i < data["data"].length; i++) {
            let type = data["data"][i]["Type"]
            if (!isStringField(type)) {
                HTML_id = HTML_id + "<option value=\"" + data["data"][i]["Field"] + "\">" + data["data"][i]["Field"] + "( " + type + " )</option>\n"
            }
        }
        cell_en.innerHTML = HTML
        id_en.innerHTML = HTML_id
        cell_en.removeAttribute("disabled")
        id_en.removeAttribute("disabled")
        p_cell_en.classList.remove("is-loading")
        p_id_en.classList.remove("is-loading")
    }
}

async function change_et_c_es_o() {
    const cell_es = document.getElementById("et_c_es_selt")
    const id_es = document.getElementById("et_id_es_selt")
    cell_es.innerHTML = ""
    id_es.innerHTML = ""
    cell_es.setAttribute("disabled", "")
    id_es.setAttribute("disabled", "")
    const p_cell_es = cell_es.parentElement
    const p_id_es = id_es.parentElement
    p_cell_es.classList.add("is-loading")
    p_id_es.classList.add("is-loading")
    const bd = document.getElementById("et_bd_o_selt")
    let valor_bd = bd.value
    ls = obt_local()
    let pass = ""
    if (!ls.conn_db.no_pass) {
        pass = document.getElementById("pass_input").value
    }
    resp = await fetch('php/list_cells.php', {
        method: 'POST',
        headers: {
            'Content-Type': 'application/json'
        },
        body: JSON.stringify({
            hostname: ls.conn_db.serv,
            username: ls.conn_db.user,
            password: pass,
            database: valor_bd,
            table: document.getElementById("et_t_es_selt").value
        })
    })
    data = await resp.json()
    let HTML = ""
    let HTML_id = ""
    if (data["type"] == "error") {
        let user = document.getElementById("user_input")
        let pass = document.getElementById("pass_input")
        let check_pass = document.getElementById("check_pass")
        p_cell_es.classList.remove("is-loading")
        p_id_es.classList.remove("is-loading")
        await charge_db(user, pass, check_pass)
    } else {
        for (let i = 0; i < data["data"].length; i++) {
            let type = data["data"][i]["Type"]
            if (isStringField(type)) {
                HTML = HTML + "<option value=\"" + data["data"][i]["Field"] + "\">" + data["data"][i]["Field"] + "( " + type + " )</option>\n"
            }
        }
        for (let i = 0; i < data["data"].length; i++) {
            let type = data["data"][i]["Type"]
            if (!isStringField(type)) {
                HTML_id = HTML_id + "<option value=\"" + data["data"][i]["Field"] + "\">" + data["data"][i]["Field"] + "( " + type + " )</option>\n"
            }
        }
        cell_es.innerHTML = HTML
        cell_es.removeAttribute("disabled")
        p_cell_es.classList.remove("is-loading")
        id_es.innerHTML = HTML_id
        id_es.removeAttribute("disabled")
        p_id_es.classList.remove("is-loading")
    }
}

function isStringField(cadena) {
    let is_string = true
    if (is_string && cadena.indexOf("mediumint") !== -1) {
        is_string = false
    }
    if (is_string && cadena.indexOf("tinyint") !== -1) {
        is_string = false
    }
    if (is_string && cadena.indexOf("smallint") !== -1) {
        is_string = false
    }
    if (is_string && cadena.indexOf("int") !== -1) {
        is_string = false
    }
    if (is_string && cadena.indexOf("float") !== -1) {
        is_string = false
    }
    return is_string
}

async function change_et_bd_d() {
    const tabla = document.getElementById("et_t_d_selt")
    tabla.innerHTML = ""
    tabla.setAttribute("disabled", "")
    const p_tabla = tabla.parentElement
    p_tabla.classList.add("is-loading")
    const bd = document.getElementById("et_bd_d_selt")
    let valor_bd = bd.value
    ls = obt_local()
    let pass = ""
    if (!ls.conn_db.no_pass) {
        pass = document.getElementById("pass_input").value
    }
    resp = await fetch('php/list_table.php', {
        method: 'POST',
        headers: {
            'Content-Type': 'application/json'
        },
        body: JSON.stringify({ hostname: ls.conn_db.serv, username: ls.conn_db.user, password: pass, database: valor_bd })
    })
    data = await resp.json()
    let HTML = ""
    if (data["type"] == "error") {
        let user = document.getElementById("user_input")
        let pass = document.getElementById("pass_input")
        let check_pass = document.getElementById("check_pass")
        await charge_db(user, pass, check_pass)
    } else {
        for (let i = 0; i < data["data"].length; i++) {
            HTML = HTML + "<option value=\"" + data["data"][i] + "\">" + data["data"][i] + "</option>\n"
        }
        tabla.innerHTML = HTML
        tabla.removeAttribute("disabled")
        p_tabla.classList.remove("is-loading")
    }
}

async function et_insertar() {
    document.getElementById("et_Introducido").innerHTML = "0"
    document.getElementById("et_Actualizado").innerHTML = "0"
    document.getElementById("et_Expansionado").innerHTML = "0"
    document.getElementById("et_Saltado").innerHTML = "0"
    const progeso = document.getElementById("et_progress")
    progeso.classList.add("is-primary")
    progeso.removeAttribute("value")
    ids = await fetch('php/copi_locales/obtein_id.php', {
        method: 'POST',
        headers: {
            'Content-Type': 'application/json'
        },
        body: JSON.stringify({
            hostname: ls.conn_db.serv,
            username: ls.conn_db.user,
            password: document.getElementById("pass_input").value,
            database: document.getElementById("et_bd_o_selt").value,
            tab_en: document.getElementById("et_t_en_selt").value,
            tab_es: document.getElementById("et_t_es_selt").value,
            id_en: document.getElementById("et_id_en_selt").value,
            id_es: document.getElementById("et_id_es_selt").value
        })
    })
    data_ids = await ids.json()
    if (data_ids["type"] == "error") {
        console.log(data_ids["mesage"])
    } else {
        let text_en_es = []
        let progreso = 0
        let max = data_ids["data"].length
        progeso.setAttribute("value", "0")
        for (let i = 0; i < max; i++) {
            let textos = await fetch('php/copi_locales/obtain_text_en_es.php', {
                method: 'POST',
                headers: {
                    'Content-Type': 'application/json'
                },
                body: JSON.stringify({
                    hostname: ls.conn_db.serv,
                    username: ls.conn_db.user,
                    password: document.getElementById("pass_input").value,
                    database: document.getElementById("et_bd_o_selt").value,
                    tab_en: document.getElementById("et_t_en_selt").value,
                    tab_es: document.getElementById("et_t_es_selt").value,
                    cell_en: document.getElementById("et_c_en_selt").value,
                    cell_es: document.getElementById("et_c_es_selt").value,
                    id_en: document.getElementById("et_id_en_selt").value,
                    id_es: document.getElementById("et_id_es_selt").value,
                    id: data_ids["data"][i]
                })
            })

            data_textos = await textos.json()
            if (data_textos["type"] == "error") {
                console.log(data_textos["mesage"])
            } else {
                text_en_es.push(data_textos["data"])
                progreso++
                progeso.value = Math.round(progreso * 100 / max)
            }
        }
        progreso = 0
        max = text_en_es.length
        progeso.value = 0
        progeso.classList.remove("is-primary")
        text_inserted = ""
        text_updated = ""
        text_espansioned = ""
        text_jumped = ""
        for (let i = 0; i < max; i++) {
            let textos = await fetch('php/copi_locales/incertando.php', {
                method: 'POST',
                headers: {
                    'Content-Type': 'application/json'
                },
                body: JSON.stringify({
                    hostname: ls.conn_db.serv,
                    username: ls.conn_db.user,
                    password: document.getElementById("pass_input").value,
                    database: document.getElementById("et_bd_d_selt").value,
                    table: document.getElementById("et_t_d_selt").value,
                    text_en: text_en_es[i]["eng"],
                    text_es: text_en_es[i]["esp"],
                    exp: document.getElementById("et_exp_d_selt").value
                })
            })
            data_textos = await textos.json()
            if (data_textos["type"] == "error") {
                console.log(data_textos["mesage"])
            } else {
                let camp = document.getElementById("et_" + data_textos["data"]["accion"])
                camp.innerHTML = (Number(camp.innerHTML) + 1).toString()
                progreso++
                progeso.value = Math.round(progreso * 100 / max)
                if (data_textos["data"]["accion"] == "Introducido") {
                    text_inserted = text_inserted + "<tr><td>" + text_en_es[i]["eng"] + "</td><td>" + text_en_es[i]["esp"] + "</td></tr>"
                } else {
                    if (data_textos["data"]["accion"] == "Actualizado") {
                        text_updated = text_updated + "<tr><td>" + text_en_es[i]["eng"] + "</td><td>" + text_en_es[i]["esp"] + "</td></tr>"
                    } else {
                        if (data_textos["data"]["accion"] == "Saltado") {
                            text_jumped = text_jumped + "<tr><td>" + text_en_es[i]["eng"] + "</td><td>" + text_en_es[i]["esp"] + "</td></tr>"
                        }
                    }
                }

            }
        }
    }
}

function mostrar_insertados() {
    document.getElementById("et_tabla").innerHTML = text_inserted
}

function mostrar_actualizados() {
    document.getElementById("et_tabla").innerHTML = text_updated
}

function mostrar_saltados() {
    document.getElementById("et_tabla").innerHTML = text_jumped
}

async function ai_arreglar() {
    document.getElementById("ai_Arreglados").innerHTML = "0"
    document.getElementById("ai_Saltado").innerHTML = "0"
    const progeso = document.getElementById("ai_progress")
    progeso.classList.add("is-primary")
    progeso.removeAttribute("value")
    ids = await fetch('php/adjust_id/obtein_id.php', {
        method: 'POST',
        headers: {
            'Content-Type': 'application/json'
        },
        body: JSON.stringify({
            hostname: ls.conn_db.serv,
            username: ls.conn_db.user,
            password: document.getElementById("pass_input").value
        })
    })
    data_ids = await ids.json()
    if (data_ids["type"] == "error") {
        modal.classList.add("is-active")
        modal_mess.innerHTML = data_ids["mensage"]
    } else {
        progeso.classList.remove("is-primary")
        let progreso = 0
        let max = data_ids["data"].length
        progeso.setAttribute("value", "0")
        let camp_saltado = document.getElementById("ai_Saltado")
        let camp_arreglado = document.getElementById("ai_Arreglados")
        for (let i = 0; i < max; i++) {
            count = progreso + 1
            if (count == data_ids["data"][i]) {
                camp_saltado.innerHTML = (Number(camp_saltado.innerHTML) + 1).toString()
            } else {
                let resp_arr = await fetch('php/adjust_id/adjust_id.php', {
                    method: 'POST',
                    headers: {
                        'Content-Type': 'application/json'
                    },
                    body: JSON.stringify({
                        hostname: ls.conn_db.serv,
                        username: ls.conn_db.user,
                        password: document.getElementById("pass_input").value,
                        ant: data_ids["data"][i],
                        des: count
                    })
                })

                data_resp_arr = await resp_arr.json()
                if (data_resp_arr["type"] == "error") {
                    modal.classList.add("is-active")
                    modal_mess.innerHTML = data_resp_arr["mensage"]
                    i = max
                } else {
                    camp_arreglado.innerHTML = (Number(camp_arreglado.innerHTML) + 1).toString()
                }
            }
            progreso++
            progeso.value = Math.round(progreso * 100 / max)
        }
    }
}

function close_modal() {
    document.getElementById("modal").classList.remove("is-active")
}

async function t_traducir() {
    let camp = document.getElementById("t_Traducidos")
    camp.innerHTML = "0"
    const progeso = document.getElementById("t_progress")
    progeso.classList.add("is-primary")
    progeso.removeAttribute("value")
    const tabla = document.getElementById("t_tabla")
    tabla.innerHTML = ""
    ids = await fetch('php/traslater_tool/obtain_empty_text.php', {
        method: 'POST',
        headers: {
            'Content-Type': 'application/json'
        },
        body: JSON.stringify({
            hostname: ls.conn_db.serv,
            username: ls.conn_db.user,
            password: document.getElementById("pass_input").value
        })
    })
    data_ids = await ids.json()
    if (data_ids["type"] == "error") {
        modal.classList.add("is-active")
        modal_mess.innerHTML = data_ids["mensage"]
    } else {
        let progreso = 0
        let max = data_ids["data"].length
        progeso.setAttribute("value", "0")
        progeso.classList.remove("is-primary")
        text_traslated = ""
        let falls = 0
        for (let i = 0; i < max; i++) {
            let textos = await fetch('php/traslater_tool/traslater_tool.php', {
                method: 'POST',
                headers: {
                    'Content-Type': 'application/json'
                },
                body: JSON.stringify({
                    hostname: ls.conn_db.serv,
                    username: ls.conn_db.user,
                    password: document.getElementById("pass_input").value,
                    text: data_ids["data"][i]["text_en"],
                    id: data_ids["data"][i]["id_text"]
                })
            })

            data_textos = await textos.json()
            if (data_textos["type"] == "error") {
                if ((data_textos["mensage"] == "Could not resolve host: translate.google.com" || data_textos["mensage"].includes("Failed to connect to translate.google.com port 443 after")) && falls != 60) {
                    falls++
                    i--
                    await esperar(1000)
                } else {
                    modal.classList.add("is-active")
                    modal_mess.innerHTML = data_textos["mensage"]
                    i = max
                }
            } else {
                falls = 0
                progreso++
                camp.innerHTML = progreso.toString()
                progeso.value = Math.round(progreso * 100 / max)
                text_traslated = text_traslated + "<tr><td>" + data_ids["data"][i]["text_en"] + "</td><td>" + data_textos["data"]["text_es"] + "</td></tr>"
                await esperar(63000)
            }
        }
        tabla.innerHTML = text_traslated
    }
}

function esperar(milisegundos) {
    return new Promise(resolve => setTimeout(resolve, milisegundos));
}

async function change_il_c_en_o(){
    const cell_en = document.getElementById("il_c_en_selt")
    const id_en = document.getElementById("il_id_en_selt")
    cell_en.innerHTML = ""
    id_en.innerHTML = ""
    cell_en.setAttribute("disabled", "")
    id_en.setAttribute("disabled", "")
    const p_cell_en = cell_en.parentElement
    const p_id_en = cell_en.parentElement
    p_cell_en.classList.add("is-loading")
    p_id_en.classList.add("is-loading")
    const bd = document.getElementById("il_bd_o_selt")
    let valor_bd = bd.value
    ls = obt_local()
    let pass = ""
    if (!ls.conn_db.no_pass) {
        pass = document.getElementById("pass_input").value
    }
    resp = await fetch('php/list_cells.php', {
        method: 'POST',
        headers: {
            'Content-Type': 'application/json'
        },
        body: JSON.stringify({
            hostname: ls.conn_db.serv,
            username: ls.conn_db.user,
            password: pass,
            database: valor_bd,
            table: document.getElementById("il_t_en_selt").value
        })
    })
    data = await resp.json()
    let HTML = ""
    let HTML_id = ""
    if (data["type"] == "error") {
        let user = document.getElementById("user_input")
        let pass = document.getElementById("pass_input")
        let check_pass = document.getElementById("check_pass")
        await charge_db(user, pass, check_pass)
        p_cell_en.classList.remove("is-loading")
        p_id_en.classList.remove("is-loading")
    } else {
        for (let i = 0; i < data["data"].length; i++) {
            let type = data["data"][i]["Type"]
            if (isStringField(type)) {
                HTML = HTML + "<option value=\"" + data["data"][i]["Field"] + "\">" + data["data"][i]["Field"] + "( " + type + " )</option>\n"
            }
        }
        for (let i = 0; i < data["data"].length; i++) {
            let type = data["data"][i]["Type"]
            if (!isStringField(type)) {
                HTML_id = HTML_id + "<option value=\"" + data["data"][i]["Field"] + "\">" + data["data"][i]["Field"] + "( " + type + " )</option>\n"
            }
        }
        cell_en.innerHTML = HTML
        id_en.innerHTML = HTML_id
        cell_en.removeAttribute("disabled")
        id_en.removeAttribute("disabled")
        p_cell_en.classList.remove("is-loading")
        p_id_en.classList.remove("is-loading")
    }
}

async function change_il_c_es_o() {
    const cell_es = document.getElementById("il_c_es_selt")
    const id_es = document.getElementById("il_id_es_selt")
    cell_es.innerHTML = ""
    id_es.innerHTML = ""
    cell_es.setAttribute("disabled", "")
    id_es.setAttribute("disabled", "")
    const p_cell_es = cell_es.parentElement
    const p_id_es = id_es.parentElement
    p_cell_es.classList.add("is-loading")
    p_id_es.classList.add("is-loading")
    const bd = document.getElementById("il_bd_o_selt")
    let valor_bd = bd.value
    ls = obt_local()
    let pass = ""
    if (!ls.conn_db.no_pass) {
        pass = document.getElementById("pass_input").value
    }
    resp = await fetch('php/list_cells.php', {
        method: 'POST',
        headers: {
            'Content-Type': 'application/json'
        },
        body: JSON.stringify({
            hostname: ls.conn_db.serv,
            username: ls.conn_db.user,
            password: pass,
            database: valor_bd,
            table: document.getElementById("il_t_es_selt").value
        })
    })
    data = await resp.json()
    let HTML = ""
    let HTML_id = ""
    if (data["type"] == "error") {
        let user = document.getElementById("user_input")
        let pass = document.getElementById("pass_input")
        let check_pass = document.getElementById("check_pass")
        p_cell_es.classList.remove("is-loading")
        p_id_es.classList.remove("is-loading")
        await charge_db(user, pass, check_pass)
    } else {
        for (let i = 0; i < data["data"].length; i++) {
            let type = data["data"][i]["Type"]
            if (isStringField(type)) {
                HTML = HTML + "<option value=\"" + data["data"][i]["Field"] + "\">" + data["data"][i]["Field"] + "( " + type + " )</option>\n"
            }
        }
        for (let i = 0; i < data["data"].length; i++) {
            let type = data["data"][i]["Type"]
            if (!isStringField(type)) {
                HTML_id = HTML_id + "<option value=\"" + data["data"][i]["Field"] + "\">" + data["data"][i]["Field"] + "( " + type + " )</option>\n"
            }
        }
        cell_es.innerHTML = HTML
        cell_es.removeAttribute("disabled")
        p_cell_es.classList.remove("is-loading")
        id_es.innerHTML = HTML_id
        id_es.removeAttribute("disabled")
        p_id_es.classList.remove("is-loading")
    }
}

async function change_il_bd_o() {
    const tabla_en = document.getElementById("il_t_en_selt")
    const tabla_es = document.getElementById("il_t_es_selt")
    tabla_en.innerHTML = ""
    tabla_es.innerHTML = ""
    tabla_en.setAttribute("disabled", "")
    tabla_es.setAttribute("disabled", "")
    const p_tabla_en = tabla_en.parentElement
    const p_tabla_es = tabla_es.parentElement
    p_tabla_en.classList.add("is-loading")
    p_tabla_es.classList.add("is-loading")
    const bd = document.getElementById("il_bd_o_selt")
    let valor_bd = bd.value
    ls = obt_local()
    let pass = ""
    if (!ls.conn_db.no_pass) {
        pass = document.getElementById("pass_input").value
    }
    resp = await fetch('php/list_table.php', {
        method: 'POST',
        headers: {
            'Content-Type': 'application/json'
        },
        body: JSON.stringify({ hostname: ls.conn_db.serv, username: ls.conn_db.user, password: pass, database: valor_bd })
    })
    data = await resp.json()
    let HTML = ""
    if (data["type"] == "error") {
        let user = document.getElementById("user_input")
        let pass = document.getElementById("pass_input")
        let check_pass = document.getElementById("check_pass")
        p_tabla_en.classList.remove("is-loading")
        p_tabla_es.classList.remove("is-loading")
        await charge_db(user, pass, check_pass)
    } else {
        for (let i = 0; i < data["data"].length; i++) {
            HTML = HTML + "<option value=\"" + data["data"][i] + "\">" + data["data"][i] + "</option>\n"
        }
        tabla_en.innerHTML = HTML
        tabla_es.innerHTML = HTML
        tabla_en.removeAttribute("disabled")
        tabla_es.removeAttribute("disabled")
        p_tabla_en.classList.remove("is-loading")
        p_tabla_es.classList.remove("is-loading")
        await change_il_c_en_o()
        await change_il_c_es_o()
    }
}

async function change_il_bd_d() {
    const tabla = document.getElementById("il_t_d_selt")
    tabla.innerHTML = ""
    tabla.setAttribute("disabled", "")
    const p_tabla = tabla.parentElement
    p_tabla.classList.add("is-loading")
    const bd = document.getElementById("il_bd_d_selt")
    let valor_bd = bd.value
    ls = obt_local()
    let pass = ""
    if (!ls.conn_db.no_pass) {
        pass = document.getElementById("pass_input").value
    }
    resp = await fetch('php/list_table.php', {
        method: 'POST',
        headers: {
            'Content-Type': 'application/json'
        },
        body: JSON.stringify({ hostname: ls.conn_db.serv, username: ls.conn_db.user, password: pass, database: valor_bd })
    })
    data = await resp.json()
    let HTML = ""
    if (data["type"] == "error") {
        let user = document.getElementById("user_input")
        let pass = document.getElementById("pass_input")
        let check_pass = document.getElementById("check_pass")
        await charge_db(user, pass, check_pass)
    } else {
        for (let i = 0; i < data["data"].length; i++) {
            HTML = HTML + "<option value=\"" + data["data"][i] + "\">" + data["data"][i] + "</option>\n"
        }
        tabla.innerHTML = HTML
        tabla.removeAttribute("disabled")
        p_tabla.classList.remove("is-loading")
    }
}
