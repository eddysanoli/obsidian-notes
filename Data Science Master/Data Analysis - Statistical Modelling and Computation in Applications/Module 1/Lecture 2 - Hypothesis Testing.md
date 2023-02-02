## 2. Different hypothesis Test for the Mammography Experiment

- Se utilizan pruebas de doble cola cuando la hipótesis nula consiste de una igualdad (e.g. $\pi = 0.02$) 
- No se debería de asumir que se sabe el valor real de la estadística de prueba en el grupo de control. Lo que se tiene es un estimado. Por lo mismo, ya no podemos asumir que para la mamografías sabemos que la tasa de mortalidad es de 0.00203. Este es solo un estimado
- Sin asumir conocimiento sobre la probabilidad de muerte en el grupo de control, podemos decir que la "test statistic" es el número de muertes en el grupo del tratamiento. 
	- El modelo de esta "test statistic" es una distribución hipergeométrica
 
	 ![[Module 1 - Lecture 2 - Hypergeometric Distribution]]
	- *p-value*: Queremos el área antes de $T=39$, entonces básicamente habría que calcular $P_{H_o}$ para todas las T's desde 0 hasta 39 y sumar todos los valores. Este sería el p-value.

## 3. Hypergeometric Distribution

![[Pasted image 20230201001611.png]]
- Esta definición tiene 3 parámetros:
	- N: El tamaño de la población (número de bolitas en el bowl)
	- $K$: El tamaño de la sub-población de interés (número de bolitas rojas sacadas)
	 - $n$: El número de resultados deseados (bolitas totales sacadas del bowl) 
- Como ahora no podemos asumir que la tasa de muerte en el grupo de control es la tasa de muerte real para el cáncer de mama, entonces en lugar de hacer una hipótesis nula que busque comprobar si la tasa es menor a un número (0.00203 en este caso), podemos revisar si la tasa de muerte en las unidades con tratamiento es menor al del control ($\pi_{\text{treatment}} \lt \pi_{\text{control}}$).
