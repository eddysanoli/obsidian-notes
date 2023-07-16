## 2. Different hypothesis Test for the Mammography Experiment

- Se utilizan pruebas de doble cola cuando la hipótesis nula consiste de una igualdad (e.g. $\pi = 0.02$) 
- No se debería de asumir que se sabe el valor real de la estadística de prueba en el grupo de control. Lo que se tiene es un estimado. Por lo mismo, ya no podemos asumir que para la mamografías sabemos que la tasa de mortalidad es de 0.00203. Este es solo un estimado
- Sin asumir conocimiento sobre la probabilidad de muerte en el grupo de control, podemos decir que la "test statistic" es el número de muertes en el grupo del tratamiento. 
	- El modelo de esta "test statistic" es una distribución hipergeométrica
 
	 ![[Module 1 - Lecture 2 - Hypergeometric Distribution]]
	- *p-value*: Queremos el área antes de $T=39$, entonces básicamente habría que calcular $P_{H_o}$ para todas las T's desde 0 hasta 39 y sumar todos los valores. Este sería el p-value.

## 3. Hypergeometric Distribution

- Ejemplo: Suponemos que tenemos $N$ bolitas en un bowl. $K$ son rojas y las restantes $N- K$ son azules. Del bowl se toman $n$ bolitas sin reemplazarlas. La probabilidad de que $x$ bolitas sean rojas se calcula con la siguiente fórmula 

![[Pasted image 20230201001611.png]]
- Entonces podemos traducir los parámetros de este ejemplo a un valor más general:
	- $N$: Tamaño de la población
	- $K$: Tamaño de la sub-población de interés
	- $n$: Número de muestras o "targeted outcomes"
 - En el estudio, no es correcto asumir que la tasa de mortalidad real es igual a la obtenida en el grupo de control, entonces, en lugar de asumir y usar la tasa de control ($\pi_{\text{control}}$), ahora comparamos ambas tasas (de tratamiento y control) como si ambas fueran datos experimentales. Por lo tanto pasamos de esto
	 - $H_o: \pi_{treatment} = 0.0023$
	- $H_a: \pi_{treatment}<0.0023$
    A esto:
	- $H_o: \pi_{treatment}=\pi_{control}$
	- $H_a: \pi_{treatment}<\pi_{control}$

![[Module 1 - Lecture 2 - Q2]]

## 4. Fisher's Exact Test

- Forma de las hipótesis para un test de Fisher
![[Pasted image 20230204162455.png]]
![[Pasted image 20230204162536.png]]
- La distribución geométrica anterior consiste en realidad de un test de fisher exacto
- Ventajas:
	- No asume que conocemos la tasa real de muerte por cáncer de mama.
- Desventajas:
	- Asume que, en caso repitamos el experimento, a pesar de la incertidumbre y demás, siempre tendremos el mismo valor para la estadística de prueba $T$. En el caso de las mamografías, asumimos que siempre va a haber un total de 102 muertos.
	 - Es difícil de calcular cuando tenemos varios tratamientos y un gran número de condiciones observadas
- Alternativa: "Bernard's" test.

![[Pasted image 20230204162656.png]]
- Porque $n=102$ en la imagen de arriba? Porque de acuerdo a nuestra hipótesis, asumimos que la tasa de muerte entre el control y el tratamiento va a ser la misma, entonces no importa si las muertes observadas vienen del control o del tratamiento.
- Para la mamografía se esperaría probar que la estadística de prueba sea menor al número de muertes en el grupo de tratamiento (39 en este caso) 
![[Pasted image 20230204163542.png]]
![[Pasted image 20230204163638.png]]
- Tabla de contingencia: La tabla de arriba que muestra los números de tratamiento y control

## 5. Paired tests and continuous data

- Paired test: Cuando a cada persona se le expone al tratamiento y al control
	- Tiene un "power" ([[Lecture 1 - Observational Studies#17. Hypothesis Testing Errors and Power of a Test]]) mayor que asignando a ciertas personas al control o al tratamiento.
		- Porque? Porque cuando elegimos gente al azar y las colocamos en tratamiento o en control, existe una cierta cantidad de incertidumbre de que ambos grupos continúen siendo diferentes entre si (a pesar de la aleatoriedad). Lo que querríamos es comparar los efectos del tratamiento en una misma persona (invitándolos a dos tests, siendo uno verdadero y el otro un placebo) para así reducir esta incertidumbre e incrementar el poder (son inversamente proporcionales) 
	 - En un "paired test" la estadística de prueba no será el número de horas dormidas, sino la diferencia entre el número de horas dormidas bajo el tratamiento y bajo el control: $Y_i = X_{i, treatment} - X_{i, control}$  
		- Debido a lo anterior, nuestra hipótesis nula consiste en comprobar si $Y_i = 0$ ya que esto indica que no hay diferencia.
	- No hay necesidad de asignar el tratamiento de manera aleatoria. Se utiliza aleatoriedad al momento de darle el tratamiento o placebo a la persona.
- Test que mide el efecto de una droga para dormir:
	- Porque no usar un modelo gaussiano? Porque los datos pueden no tender a acumularse en un único foco cercano a la media
	- Porque usar un gaussiano? Porque están observando el efecto acumulativo de múltiples variables aleatorias, que conllevan al número de horas que una persona duerme. El "central limit theorem" menciona que cuando tenemos un grupo de variables aditivas, los datos seguirán una campana gaussiana.

## 6. Z-Test

- Utiliza el Central Limit Theorem.
- Útil cuando tenemos datos discretos
- Utilizado para datos que siguen una distribución gaussiana. Asume que conocemos la covarianza real de los datos $\sigma$
- Support: El conjunto de valores que nuestras observaciones pueden tomar. Por ejemplo,  si se mide el número de horas dormidas por noche, no se podría esperar un número mayor a 24, ya que ese es el número de horas en un día. 
![[Pasted image 20230204212609.png]]
- **Sleeping drug study**:
	- Support:
		- El número de horas tiene un límite superior (24 horas), así que la diferencia entre horas también debería de tener un límite superior.
		 - Un modelo uniforme se acoplaría bien ya que su "support" tiene límites. Un modelo gaussiano no tiene límites en ningún sentido entonces no sería un buen match.
	- Distribución 
		- La distribución podría descifrarse a partir de un análisis previo, no obstante, el número de horas dormidas por un adulto es cercano a las 8 horas en promedio y los "outliers" son muy extraños (no dormir nada o dormir en exceso)
	- Tomando en cuenta los dos factores anteriores, se selecciona una distribución normal. Por que?
		- Nos aseguramos de que la varianza sea pequeña para que sea raro cuando nos salgamos del promedio de 8 horas.
		- Se puede usar un gaussiano porque el sueño es un factor acumulativo de varias variables no relacionadas entre si, y de acuerdo al central limit theorem, como son muchas variables, el comportamiento se puede aproximar por una normal. 

#### Central Limit Theorem

![[Pasted image 20230204212923.png]]

- Un test z se llama así porque la estadística de prueba ya no es $Y$ (también $\overline{X}$, ya que como dijimos antes, es el resultado de muchos elementos acumulativos promediados) o la diferencia entre el tratamiento y el control, sino que es $z$, una versión normalizada de $\overline{X}$
![[Pasted image 20230204213535.png]]
- $z$ es una "pivotal quantity" ya que su distribución aproximada no depende de la media $\mu$ o su varianza $\sigma$

![[Pasted image 20230204212609.png]]
- **Sleeping Drug Study**:
	- Modelo: $X_1,..., X_{10} \sim \mathcal{N}(\mu , \sigma ^2)$ donde $X_1$ por ejemplo sería 6.1-5.2 = 0.9
	- Hipótesis nula: $H_o: \mu = 0$ o no hay diferencia entre la droga y el placebo
	- Hipótesis alternativa: $H_a: \mu > 0$ o se duerme más con la droga que con el placebo
	- Cada $X_i$ consiste de una distribución normal independiente, por lo que la estadística $z$ tendrá una distribución estándar normal sin importar el CLT
	- Inicialmente podría considerarse utilizarse la estadística $t$, pero para esta necesitamos conocer el valor de $\sigma$ y no lo tenemos.
	 - Asumiendo una varianza de $\sigma=0.045$ por ahora, el valor de $z$ es
  ![[Pasted image 20230204220122.png]]
	 - El p-value de un test $z$ consiste del área bajo la curva entre menos infinito y el valor de la estadística $z$ calculada anteriormente. 
  ![[Module 1 - Lecture 2 - Z Test p-value]]
  
## 7. Hypothesis Testing for Continuous Data: t-test

![[Pasted image 20230204222239.png]]
- Sample standard deviation formula
$$
\hat{\sigma } = \sqrt{ \frac{1}{n-1}\sum _{i = 1}^{n} (X_ i-\overline{X})^2}.
$$
- El término $n-1$ de la ecuación hace que la varianza salga "unbiased"
- Para el t-test, la varianza real del z-test se sustituye por una varianza muestral
![[Pasted image 20230204224038.png]]
- Mientras menos muestras haya, las colas de la distribución $t$ se harán más gordas ya que existirá una mayor área bajo la curva y por lo tanto, mayor incertidumbre sobre el resultado.

## 9. t-test and the normality assumption

- Tests para probar si los datos se apegan a una curva normal
	- qq-plot: Plot de cuantiles. Cualitativo. Lo que hace es que grafica sobre el eje Y, puntos que se apegan a una distribución normal, y en el eje X, se grafican las observaciones obtenidas. Si las parejas de coordenadas generan una línea recta a 45° entonces es normal.
 ![[Module 1 - Lecture 2 - qq-plot]]
	- Kolmogorov-Smirnov:  Distancia máxima entre una CDF de nuestro modelo y las muestras reales obtenidas.
![[Pasted image 20230206213704.png]]
- Si no viene de una distribución normal, se puede usar el "Wilcoxon signed rank test".
	- Tiene que ser simétrico alrededor de la media
	- $\sum_{n=1}^{\infty} 2^{-n} = 1$
	- $W = \sum_{i=1}^{n} \text{sgn}(X_i-\mu) R_i$ donde $R_i$ es el "rank" de $|X_i-\mu|$ .  Básicamente el "rank" consistiría en tomar la distancia de cada muestra hacia la media, y luego ordenamos dichas distancias de la más grande a la más pequeña. La más pequeña tendrá "rank" 1, la segunda más pequeña tendrá rank 2, etc.

## 10. Confidence Intervals

- Intervalo de confianza: Conjunto de parámetros bajo los cuales la hipótesis nula no se rechaza.
	- Es un parámetro aleatorio, ya que su cálculo depende de las muestras tomadas.
	- Queremos saber en que intervalo se encuentra la media real $\mu^*$ . Este intervalo indica que con probabilidad $1-\alpha$ el intervalo contendrá el valor real de $\mu$. 
	- Mientras mayor sea el número de muestras tomadas, más pequeño será el intervalo de confianza, básicamente incrementando la precisión de donde es que calculamos que se puede colocar el estimado de la media que queremos encontrar.
