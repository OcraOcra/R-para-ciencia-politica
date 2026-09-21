# Codebook: encuesta CIEP-UCR, noviembre 2020

Este apendice describe las variables de la base de datos
`data/CIEPnoviembre2020.dta`, leida en R con `haven::read_dta()`. El libro de
codigos se genera automaticamente a partir de las etiquetas del archivo.

## Listado de variables



Table: (\#tab:codebook)Fuente: encuesta CIEP-UCR, noviembre 2020.

|Variable      |Etiqueta                                                  |Valores (etiqueta = codigo)                                             | Faltantes|
|:-------------|:---------------------------------------------------------|:-----------------------------------------------------------------------|---------:|
|sexo          |Sexo                                                      |Mujer = 0; Hombre = 1; Otro no binario = 2                              |         3|
|edad          |Edad en años cumplidos                                    |                                                                        |        15|
|sit_economica |¿Cómo califica la situación económica del país?           |Muy mala = 1; Mala = 2; Regular (NO LEER) = 3; Buena = 4; Muy buena = 5 |         3|
|nota_al       |Nota para la Asamblea Legislativa                         |                                                                        |        46|
|nota_dh       |Nota para la Defensoría de los Habitantes                 |                                                                        |        71|
|nota_gob      |Nota para el gobierno                                     |                                                                        |        14|
|nota_oij      |Nota para el Organismo de Investigación Judicial          |                                                                        |        36|
|nota_pp       |Nota para los partidos políticos                          |                                                                        |        51|
|nota_pj       |Nota para el Poder Judicial                               |                                                                        |        39|
|nota_siv      |Nota para la Sala Constitucional                          |                                                                        |        96|
|nota_ucr      |Nota para la Universidad de Costa Rica                    |                                                                        |        53|
|nota_uni_pub  |Nota para las otras universidades públicas                |                                                                        |        82|
|b1            |Los tribunales de justicia garantizan un juicio justo     |Nada = 1; Mucho = 7                                                     |        36|
|b2            |Respeto por las instituciones políticas de Costa Rica     |Nada = 1; Mucho = 7                                                     |        32|
|b3            |Los derechos básicos del ciudadano están  bien protegidos |Nada = 1; Mucho = 7                                                     |        24|
|b4            |Orgullo de vivir bajo el sistema político costarricense   |Nada = 1; Mucho = 7                                                     |        17|
|b6            |Apoyo al sistema político costarricense                   |Nada = 1; Mucho = 7                                                     |        38|
|educarec      |Nivel educativo                                           |Primaria o menos = 1; Secundaria = 2; Universitaria = 3                 |         0|
|gestionrec    |Valoración de la gestión gubernamental                    |Negativa = 0; Positiva = 1                                              |        15|
|desempleado   |Persona desempleada                                       |                                                                        |         5|
|provinciarec  |Provincia donde habita                                    |Provincia costera = 0; Provincia central = 1                            |         0|
|votopac       |Votó por el PAC en 2018                                   |Otros casos = 0; Voto PAC = 1                                           |       160|



## Descripcion de los bloques de variables

- **Sociodemograficas:** `sexo`, `edad`, `educarec`, `provinciarec`,
  `desempleado`.
- **Evaluacion de instituciones (nota de 0 a 10):** `nota_al` (Asamblea
  Legislativa), `nota_dh` (Defensoria de los Habitantes), `nota_gob` (gobierno),
  `nota_oij` (Organismo de Investigacion Judicial), `nota_pp` (partidos
  politicos), `nota_pj` (Poder Judicial), `nota_siv` (Sala Constitucional),
  `nota_ucr` (Universidad de Costa Rica), `nota_uni_pub` (otras universidades
  publicas).
- **Actitudes politicas:** `sit_economica` (percepcion de la situacion economica
  del pais), `gestionrec` (valoracion de la gestion del gobierno), `b1` a `b6`
  (escalas de apoyo al sistema, de 1 a 7).
- **Comportamiento electoral:** `votopac` (voto por el PAC en 2018).
