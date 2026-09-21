# =====================================================================
# _common.R
# Script que se ejecuta ANTES de cada capitulo (ver _bookdown.yml).
# Aqui van TODAS las librerias y la preparacion de los datos.
# =====================================================================

options(width = 70)

knitr::opts_chunk$set(
  comment = "",
  collapse = TRUE,
  message = FALSE,
  warning = FALSE
)

# --- Librerias ---
library(haven)        # leer archivos .dta / .sav
library(knitr)        # tablas
library(tidyverse)    # dplyr, ggplot2, etc.
library(stargazer)    # tablas de regresion

theme_set(theme_classic(base_size = 12))

# --- Datos: encuesta CIEP-UCR, noviembre 2020 (Costa Rica) ---
ciep <- read_dta("data/CIEPnoviembre2020.dta")

# --- Preparacion de variables ---
# Las variables originales son "haven_labelled": usamos as.numeric() para
# quedarnos con el numero y luego construimos factores etiquetados.
ciep <- ciep %>%
  mutate(
    sexo_f = factor(as.numeric(sexo),
                    levels = c(0, 1),
                    labels = c("Mujer", "Hombre")),
    educ_f = factor(as.numeric(educarec),
                    levels = 1:3,
                    labels = c("Primaria o menos", "Secundaria", "Universitaria"),
                    ordered = TRUE),
    sit_f = factor(as.numeric(sit_economica),
                   levels = 1:5,
                   labels = c("Muy mala", "Mala", "Regular", "Buena", "Muy buena"),
                   ordered = TRUE),
    prov_f = factor(as.numeric(provinciarec),
                    levels = c(0, 1),
                    labels = c("Provincia costera", "Provincia central")),
    gestion_f = factor(as.numeric(gestionrec),
                       levels = c(0, 1),
                       labels = c("Negativa", "Positiva")),
    votopac_f = factor(as.numeric(votopac),
                       levels = c(0, 1),
                       labels = c("No voto PAC", "Voto PAC")),
    desempleado_f = factor(as.numeric(desempleado),
                           levels = c(0, 1),
                           labels = c("Con empleo", "Desempleado")),
    # version numerica de la escala de apoyo al sistema (1 a 7)
    b6n = as.numeric(b6)
  )
