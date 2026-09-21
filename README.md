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
| `03-corr.Rmd` | Medidas de asociacion: correlacion |
| `04-ttest.Rmd` | Medidas de asociacion: prueba t |
| `05-chisq.Rmd` | Medidas de asociacion: chi-cuadrado |
| `06-ols.Rmd` | Regresion |
| `07-models.Rmd` | Modelos con muchos predictores |
| `10-codebook.Rmd` | Codebook de la base de datos |

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
