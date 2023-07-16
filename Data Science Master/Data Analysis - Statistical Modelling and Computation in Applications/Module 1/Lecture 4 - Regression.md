



## 3. Correlation Coefficient

- Definición del sample correlation coefficient

![[Pasted image 20230207173439.png]]



## 4. Regression

![[Pasted image 20230207172320.png]]

- Resolviendo la ecuación
![[Pasted image 20230207172402.png]]
- Como es cuadrática, el problema de minimización de la función de error tiene la siguiente solución
![[Pasted image 20230207172659.png]]

- Goodness of fit $R^2$. Intenté comprobar que era igual al coeficiente de correlación al cuadrado, fallé
![[Module 1 - Lecture 4 - R2 = Correlation Coeff Squared]]
- Una comprobación mucho mejor de eso:
![[Pasted image 20230207182923.png]]

## 5. Non Linear Relationship

- El error agregado a un modelo lineal se asume que tiene media cero, son independientes y siguen una distribución gaussiana.
-  Si los datos tienen una relación lineal, entonces cuando se grafiquen sus residuos ($y_i - \hat{y}$) no se verá ninguna tendencia en particular, los puntos estarán regados alrededor del eje X de dicha gráfica.  
![[Pasted image 20230207184212.png]]
- Lo mismo debe pasar si graficamos los valores predichos $\hat{y}$ en el eje $x$, vs los residuos: No debería de existir ningún patrón si el ajuste es lineal. En la imagen de abajo miramos que los datos no son lineales ya que al graficar los residuos vs las predicciones obtenemos un patrón cuadrático.
![[Pasted image 20230207184443.png]]

## 6. Multiple Linear Regression

- Cuando $X^TX$ es invertible la solución a un problema de regresión multiple siempre va a ser:
![[Pasted image 20230207203704.png]]

## 7. Model Selection and Regularization

- $X^TX$ debe ser "full rank" para ser invertible. Que es full rank?
	- Tienen que existir más (o igual número) de muestras o puntos que de variables, de lo contrario la matriz quedará indeterminada (o básicamente voy a poder escoger cualquier juego de variables y siempre van a existir soluciones).
	- Todas las variables deben ser linealmente independientes. No incluir por ejemplo, dos veces la misma variable, sino van a existir infinitas posibilidades para combinar la primera copia, con la segunda copia.
 - Regularización:
	 - L2: Penaliza valores grandes de coeficientes. Esto causa que todos los valores o coeficientes terminen siendo únicos.
		![[Pasted image 20230207211134.png]]
	- Lasso (L1) : Mata las variables que tienen poca relevancia al hacerlas tender a cero, entonces crea una "sparse matrix" de coeficientes.
		![[Pasted image 20230207211336.png]]

## Questions

- For the Hubble data, what are the units of $\hat{\beta_1}$? 