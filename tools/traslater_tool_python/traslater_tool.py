"""
Traducto de palabras realizado con Python
"""

# Importamos la libreria request
import requests
import pymysql


def Traduccion(source, target, text):
    parametros = {'sl': source, 'tl': target, 'q': text}
    cabeceras = {"Charset": "UTF-8",
                 "User-Agent": "AndroidTranslate/5.3.0.RC02.130475354-53000263 5.1 phone TRANSLATE_OPM5_TEST_1"}
    url = "https://translate.google.com/translate_a/single?client=at&dt=t&dt=ld&dt=qca&dt=rm&dt=bd&dj=1&hl=es-ES&ie=UTF-8&oe=UTF-8&inputm=2&otf=2&iid=1dd3b944-fa62-4b55-b330-74909a99969e"
    response = requests.post(url, data=parametros, headers=cabeceras)
    if response.status_code == 200:
        traduc = ''
        for x in response.json()['sentences']:
            traduc = traduc + x['trans']
        return traduc
    else:
        return "Ocurrió un error"

miConexion = pymysql.connect(host='localhost', port= 1509, user='root', passwd='root', db='wow_text_en_es')
cur = miConexion.cursor()
cur2 = miConexion.cursor()
cur3 = miConexion.cursor()
cur.execute('SELECT id_text, text_en , text_es FROM text WHERE text_es = "" AND text_en != "";')
cur3.execute('SELECT count(*) as num FROM text WHERE text_es = "" AND text_en != "";')
total = 0
cont = 0
for num in cur3.fetchall():
    total = num[0]
for id_text, text_en, text_es in cur.fetchall():
    porc = round(cont/total*100)
    print("----------------------------------------------------- "+str(porc)+"% --------------------------------------------------")
    print(str(id_text)+" - "+text_en)
    respuesta = Traduccion("en", "es", text_en)
    text_es_esc = miConexion.escape(respuesta)
    print(" ")
    print("TRADUCCIóN ------ "+respuesta)
    update = 'UPDATE text SET text_es='+text_es_esc+' WHERE id_text = '+str(id_text)+';'
    print(update)
    cur2.execute(update)
    cont = cont + 1
    miConexion.commit()
miConexion.close()
