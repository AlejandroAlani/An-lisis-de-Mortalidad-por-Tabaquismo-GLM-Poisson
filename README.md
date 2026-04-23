# Analisis-de-Mortalidad-por-Tabaquismo-GLM-Poisson
Modelado estadístico de la relación entre tabaquismo, edad y mortalidad mediante Modelos Lineales Generalizados (GLM) con distribución Poisson, implementado en R.


Este proyecto analiza cómo el tabaquismo y la edad influyen sobre las tasas de mortalidad de una población. A través de regresión de Poisson se estiman los efectos de cada variable controlando por el tamaño poblacional, y se comparan distintos modelos para identificar el mejor ajuste.
El análisis cubre desde la exploración visual de los datos hasta el diagnóstico de residuos del modelo final.

Dataset
Archivo de texto con cuatro variables:
"age": Grupo etario, "status":Status de fumador (fumador / no fumador), "population":Tamaño de la subpoblación. "death":Número de muertes observadas

Metodología
1. Exploración visual:
Gráficos de dispersión entre edad, población, status y muertes (escala logarítmica).
Identificación de patrones y valores atípicos

2. Modelos ajustados:
   
Modelo 1 — Efecto de la edad sobre las muertes:
rglm(death ~ age, family = poisson(link = "log"))
Modelo 2 — Efecto combinado de edad, status y población:
rglm(death ~ age + status + population, family = poisson(link = "log"))

3. Diagnóstico

Análisis de residuos vs valores ajustados
Evaluación del ajuste mediante summary() y deviance

Resultados clave
La edad y el status del fumador son predictores significativos de la mortalidad.
El modelo con multiple covariables mejorar el ajuste respecto al modelo lineal
Los coeficientes con escala logaritmica permiten estudiar el Rate Radio mediante exp(coef())

La edad y el status de fumador son predictores significativos de la mortalidad
El modelo con múltiples covariables mejora el ajuste respecto al modelo simple
Los coeficientes en escala logarítmica permiten estimar Rate Ratios mediante exp(coef())
