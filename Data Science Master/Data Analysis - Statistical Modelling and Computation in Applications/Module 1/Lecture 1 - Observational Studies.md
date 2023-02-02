## 6. Randomized Controlled Trials (RCT)

- RCT: Diseño experimental en el que los tratamientos se asignan de manera aleatoria
- Unidad: Individuo u objeto al que se le expone al tratamiento o control
- Al medir una "feature" de interés, por la ley de números grandes, se espera que la diferencia entre los promedios de las unidades de tratamiento y de control sea pequeña. Esto nos permite analizar esta diferencia para estimar el efecto del tratamiento. 
- *Stratification*: Pre-dividir un grupo de personas en grupos de acuerdo a características como edad, sexo y etnicidad. Dentro de cada grupo se puede realizar un RCT asignando de manera aleatoria el tratamiento.
- *Subgroup Analysis*: Analizar el efecto de un tratamiento dentro de un subgrupo en particular. 
- Mientras más leve es la diferencia que queremos detectar con el tratamiento a aplicar, mayor es el número de muestras que debemos tomar, y viceversa.

## 7. Ethical and Human Considerations in a Study

- *double-blind study*: No se le explica ni a la persona recibiendo el tratamiento, o al colaborador que aplica al tratamiento, si el "human subject" se le aplicará un control o el tratamiento como tal.
- Las unidades deben dar consent de su participación

## 8. Randomization, and Control Variables

- Existen algunos experimentos en los que no se puede simplemente decidir aplicar el tratamiento de manera aleatoria. Por ejemplo, si se quiere estudiar el efecto de fumar en una población, no se puede tomar un grupo de personas que fuman, y obligar a aquellos que serán sometidos al tratamiento a fumar. En estos casos se toma una muestra de la población y de la misma se eligen personas que cumplen con los requisitos.
- *observational study*: Cuando es imposible aplicar un tratamiento de forma aleatoria a una unidad, entonces se puede realizar este tipo de tratamiento. Este consiste en utilizar datos ya existentes.
	- No puede estudiarse el efecto de un tratamiento utilizando la diferencia en medias. Las medias pueden contar con un bias pre-existente. 
	- Por ejemplo, si se quiere estudiar el efecto de fumar en la aparición de cáncer de pulmón, una variable que puede causar este bias es la edad, ya que la gente de generaciones previas tiende a fumar más y a la vez, son más propensas a desarrollar cáncer. Por lo tanto no tiene sentido concluir en base a un grupo tomado aleatoriamente, ya que muy probablemente nos toparemos con muchos boomers fumadores.
	- Solución 1: Estratificar. En el ejemplo anterior, al estratificar por edad, se puede aislar el efecto a un grupo demográfico específico.
	- Solución 2: Se pueden identificar variables de control adecuadas que capturen el efecto del bias, y luego se puede utilizar "regresión multivariable" para reducir el efecto del bias en los datos.
 - Una variable de control no es apropiada cuando introduce bias al experimento, o básicamente cuando hace concluir que dos eventos están relacionados, debido a que el control parece apuntar en esa dirección, cuando no es así.
 
## 11. Initial Data Analysis and Causal Effect Identification


![[Pasted image 20230131002122.png]]

- *experimento*: En una empresa de seguros, se les ofreció mamografías a 31k mujeres, mientras que otras 31k se mantuvieron sin ofertas como un control. De las 31k tratadas, 20,200 aceptaron la mamografía, y 10,800 lo negaron. 
	- Se midió la tasa de mortalidad por cada 1000 mujeres para cada caso (tanto por cáncer como por otras razones) y se llegó a observar una diferencia significativa en la taza de mortalidad por cancer entre el control y las mujeres tratadas, pero se notó que la taza de mortalidad por otras causas no mostró ningún bias (una diferencia grande) solo al comparar a las mujeres a las que se les ofreció la mamografía con el control. Debido a esto, el estudio solo va a ser capaz de comprobar el efecto de ofrecer o no ofrecer el tratamiento, no si se tomó o no. 
	 - La tasa de muerte en el grupo de control era de 0.00203 (63/31000), mientras que en el grupo en el que se ofreció la mamografía era 0.00126 (39/31000). Si restamos ambas cantidades, entonces podemos decir que el efecto de ofrecer mamografías es una reducción de 0.77 muertes por cada 1000 mujeres.

## 12. Bernoulli and Binomial Models

$$
f(x)\displaystyle = \begin{cases}  p &  \mbox{if } x = 1 \\ 1-p &  \mbox{if } x = 0 \end{cases}

\displaystyle = p^ x(1-p)^{1-x}

\displaystyle = px + (1-p)(1-x)
$$
- Variables de Bernoulli: Variables que pueden tener dos posibles valores, 0 o 1. Puede ser 1 con probabilidad $p$.
$$
f(Y = k) = \binom {n}{k} \cdot p^ k \cdot (1-p)^{n-k}.
$$
- Variable aleatoria binomial: La suma de $n$ variables independientes de Bernoulli, todas con un mismo parámetro $p$.  La ecuación de arriba es la ecuación para la "probability mass function" (PMF) para una variable $Y$ con parámetros $n$ y $p$. $k$ es el número de variables que tomarán un valor de 1.
![[Drawing 2023-01-30 22.43.28.excalidraw]]

## Poisson Model

- Variable the poisson: Toma el límite de una distribución binomial con una media fija de $np$. A medida que $n$ tiende a infinito, la distribución converge a una PMF discreta con parámetro $\lambda=np$. La probabilidad de $k$ éxitos está dado por

![[Pasted image 20230130231135.png]]
- Útil cuando los datos siguen una distribución binomial con una $n$ grande y una $p$ pequeña.
- Evento de Poisson: Cuando un evento puede ocurrir en cualquier momento en tiempo continuo, con una tasa promedio de $\lambda$ y cada evento ocurre independientemente de otros eventos y siempre con la misma probabilidad.

## Hypothesis Testing

- Null hypothesis: Status quo, lo que ya está pasando. En el ejemplo de las mamografías, la hipótesis nula sería la probabilidad de muerte en el control (0.002)
- Alternative: Alternativa, o lo que nos interesa comprobar. En el ejemplo de las mamografías, sería que la probabilidad de muerte es menor a la del control (<0.002)
- Test statistic: Número mágico que dirá la diferencia entre la hipótesis nula y la alternativa. 
	- Es necesario poder determinar la distribución de esta estadística para poder utilizarla. 
	- En el ejemplo de las mamografías, el número total de muertes es la "test statistic", y es útil ya que se conoce que su distribución es binomial.

## Significance Level and p-value

- Significance level: Que tanto error estamos dispuestos a tener en nuestras conclusiones. Un valor muy común es $\alpha=0.05$
- Para poder decir que la hipótesis nula se rechaza, podemos graficar la PMF de la "test statistic", trazar una línea vertical donde la probabilidad sea igual al "significance level" y luego se determina si el p-value se encuentra antes de $\alpha$
- p-value: Probabilidad de obtener el valor observado o un valor aún más extremo para la estadística de prueba.
	- Rango de 0 a 1
	- Mientras más pequeño su valor, más fácil es rechazar la hipótesis nula. Por lo tanto, cuantifica la significancia de la alternativa.
	 - Por ejemplo, para la mamografía, nuestro p-value consistiría de la probabilidad asociada con el número de muertes observadas en el grupo de mujeres a las que se les ofreció mamografías (tratamiento)

----

**Ejercicio**

![[Drawing 2023-01-30 23.28.02.excalidraw]]

-----

## 17. Hypothesis Testing Errors and Power of a Test

![[Pasted image 20230131004110.png]]
- Type I error: Se rechaza la hipótesis nula a pesar de que es verdadera (se niega algo verdadero)
- Type II error: No se rechaza la hipótesis nula cuando la alternativa es verdadera (se cree como verdadero algo falso)
- Significance level: $P(\text{type I error}) \leq \alpha$. Limita el error de tipo I. 
	- Primer paso al diseñar un experimento. Se elige el nivel de significancia basado en, por ejemplo, que tan costoso sería realizar un error de tipo 1, o que tan costoso es el tratamiento a aplicar.
	- Por defecto se puede elegir 0.05, pero se puede reducir en caso el tratamiento sea muy costoso.
- Power: $1 - P(\text{type II error})$. Que tan bien eres capaz de detectar si la hipótesis nula es verdadera o falsa. Debemos tratar de usar "test statistics" que sean lo más "poderosas" posibles.
- Tradeoff: Lo ideal sería reducir tanto los errores tipo 1 como los tipo 2. Sin embargo, cuando se reduce el error tipo 1, se incrementa el error tipo 2 y viceversa.
- Previamente vimos que el "test statistic" usa el área a la izquierda de $\alpha$. Este es un test "one sided". Esto se utiliza cuando queremos que la probabilidad de algo sea más pequeña que $\alpha$. Un "two sided" test, sería cuando buscamos revisar si la probabilidad simplemente cambia entre el tratamiento y el control.
	- Deberíamos preferir "one sided" tests porque tienen un poder más alto.

 ![[Module 1 - Power and Error Types]]

### 18. Hypothesis Testing Trade-offs 

![[Module 1 - Type 1 vs. Type 2 Error Tradeoff]]
- Porque hay un tradeoff entre el error de tipo 1 y 2? Porque si nos damos cuenta, si queremos reducir el error de tipo 1, se debe reducir o mover hacia la izquierda a la línea $\alpha$. Pero al mover esta línea, el área bajo la curva a la derecha de la línea (de color verde en la figura) o el error de tipo 2 se incrementa. Entonces nos damos cuenta que ambos son inversamente proporcionales
![[Module 1 - 1 Sided Test vs. 2 Sided Test]]
- Es preferible un test de una sola cola: Es preferible realizar un test de una sola cola, ya que como se puede observar en la figura ( a la izquierda), generalmente tiende a conllevar a un valor de "power" menor. El único caso donde un test de doble cola podría llevar a un "power" mayor es en el caso de una distribución extraña como la que se mira a la derecha, la cual cuenta con una distribución bimodal. Sin embargo es importante declarar que este es un caso raro y no debería de tomarse muy en cuenta.