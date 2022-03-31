# Model Interpretability

Tenemos un modelo, pero al inicio consiste de una caja negra a la que le entran datos y le salen datos. Puede que la caja negra haga bien su tarea, pero que pasa si la tarea consiste en detectar gatos y está clasificando entre gatos y perros utilizando el color de fondo. En estos casos necesitamos modelos de interpretabilidad, para poder detectar sobre que es que está trabajando el modelo.

## Lime
Local interpretable Model Agnostic Explanations (LIME): Aproxima una función localmente con modelos simples e interpretables.

## SHAP
Shapley Additive exPlanations (SHAP): Utiliza teoría de juegos con explicaciones locales.

## ELI5
Explain Like I'm Five (ELI5): API para debuggear clasificadores de machine learning y así explicar el funcionamiento de diferentes frameworks y paquetes como "sci-kit learn", "keras", "xgboost", etc.

## Skater
Librería open-source que provee un framework unificado para analizar la interpretabilidad de cualquier modelo modelado como una caja negra.