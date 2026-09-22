# Estadistica aplicada para la ciencia politica (con R)

Libro de texto en **R Markdown / bookdown** para ensenar R y estadistica
aplicada, con ejemplos y practicas basados en la encuesta del **CIEP-UCR de
noviembre de 2020** (Costa Rica, n = 969).

Este repositorio es una **traduccion y adaptacion** de la obra *Applied
Statistics for Political Science* de **J. K. Corder**
(<https://jkcorder.github.io/>), adaptando todos los ejemplos al contexto
costarricense y usando el archivo `.dta` del CIEP.

## Contenido

| Archivo | Tema |
|---|---|
| `01-data-science.Rmd` | Ciencia de datos, teoria y observacion |
| `02-desc_stats.Rmd` | Estadistica descriptiva |
| `02b-curva-normal-z.Rmd` | La curva normal y los puntajes z |
| `03-corr.Rmd` | Medidas de asociacion: correlacion |
| `04-ttest.Rmd` | Medidas de asociacion: prueba t |
| `04b-prueba-z-ic.Rmd` | Diferencia de medias paso a paso: prueba z, prueba t e intervalo de confianza |
| `04c-anova.Rmd` | Analisis de varianza (prueba F): ANOVA |
| `05-chisq.Rmd` | Medidas de asociacion: chi-cuadrado (incluye calculo manual y correccion de Yates) |
| `06-ols.Rmd` | Regresion |
| `07-models.Rmd` | Modelos con muchos predictores |
| `07b-regresion-simulacion.Rmd` | Regresion desde la simulacion y visualizacion de modelos |
| `10-codebook.Rmd` | Codebook de la base de datos |

### Material complementario del curso CP-2007 (UCR)

Los capitulos `02b`, `04b`, `04c` y `07b`, asi como las secciones nuevas sobre el
calculo manual del chi-cuadrado y la correccion de Yates, se inspiraron en la guia
del curso **CP-2007, Analisis Politico Cuantitativo 2**, de la Escuela de Ciencias
Politicas de la Universidad de Costa Rica (profesor Steffan Gomez Campos,
segundo semestre de 2025). Aportan el procedimiento manual paso a paso de la
prueba z, la prueba t y el ANOVA, los puntajes z y el area bajo la curva normal,
el intervalo de confianza de la diferencia de medias y la simulacion de datos para
entender la regresion.

## Estructura

```
.
├── index.Rmd               # portada y creditos
├── 01-...Rmd ... 07-...Rmd # capitulos del libro
├── _bookdown.yml           # configuracion de bookdown
├── _output.yml             # formato de salida (bs4_book)
├── _common.R               # librerias y preparacion de datos
├── bibliography.bib        # referencias
├── data/                   # base de datos .dta
├── images/                 # figuras estaticas
├── ejercicios/             # PRACTICAS para estudiantes (con huecos)
├── soluciones/             # SOLUCIONES para el instructor
├── scripts/                # scripts auxiliares
└── docs/                   # sitio HTML generado
```

## Requisitos

- R (>= 4.4) y RStudio.
- Paquetes: `bookdown`, `knitr`, `rmarkdown`, `haven`, `tidyverse`,
  `stargazer`.

Instalacion:

```r
install.packages(c("bookdown", "haven", "tidyverse", "stargazer"))
```

## Como compilar el libro

Abre el proyecto `R-para-ciencia-politica.Rproj` en RStudio y ejecuta:

```r
bookdown::render_book("index.Rmd", output_format = "bookdown::bs4_book")
```

El sitio HTML se genera en `docs/`.

## Como usar las practicas

- Los archivos de `ejercicios/` tienen **espacios en blanco** (`___`) para que el
  estudiantado los complete.
- Los archivos de `soluciones/` tienen el codigo completo y la interpretacion.
- Cada practica se puede tejer (Knit) de forma independiente.

## Licencia y creditos

Obra original: **J. K. Corder**, *Applied Statistics for Political Science*,
bajo licencia **CC BY-NC-SA 4.0**. Esta adaptacion mantiene la misma licencia:
atribucion, **sin uso comercial** y compartir igual.

La traduccion, la adaptacion de ejemplos con datos del CIEP y los ejercicios son
aportes originales de **Marco Artavia Pacheco**.

### Uso permitido

- **Si:** usar el material para ensenar, dar tutorias (cobrando el servicio), y
  adaptarlo o compartirlo manteniendo la atribucion y la misma licencia.
- **No:** vender el libro, los apuntes o sus derivados como producto. El material
  en si no se comercializa; se cobra la tutorias (el servicio), no el recurso.
