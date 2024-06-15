# Unit 1

## Lecture 1

Sample Space: List or set of possible outcomes. It must be
- Mutually exclusive: Si un caso ocurrió, no debería de poder ocurrir otro al mismo tiempo. Por ejemplo, si se tomó una sola pelotita y era de color rojo, no debería de haberse podido tomar la pelotita azul
- Collectively exhaustive: Todos los elementos en el conjunto cubren todas las posibilidades.

### Probability axioms

- Nonnegativity: Un evento no puede tener probability menor a 0
- Normalization: La probabilidad máxima de un evento es 1
- Additivity (Finite): Si dos conjuntos no comparten elementos, la probabilidad de su unión es solo la suma de sus probabilidades. $$P(A\cup B) = P(A) + P(B)$$ $$P(A\cup B \cup \dots\cup Z) = P(A) + P(B) + \dots + P(Z)$$
- Additivity (Infinite): En un sample space infinito, el additivity axiom solo se cumple si el sample space es countable. Un area por ejemplo, no es contable porque no se le puede asignar una secuencia
### Consequences of the axioms

- For non disjoint sets  $$P(A \cup B) = P(A) + P(B) - P(A \cap B) $$
- More than 2 sets $$P(A \cup B \cup C) = P(A) + P(A^c \cap B) + P(A^c \cap B^c \cap C)$$
In a continuous case, probability, the probability of a specific event is going to be zero. In a continuous case, the probability is calculated through the area, and the area of a point is zero.

---
## Mathematical Background
### De Morgan's Laws

$$\qquad \displaystyle {\Big(\bigcup _ n S_ n\Big)^ c=\bigcap _ n S_ n^ c,\qquad \Big(\bigcap _ n S_ n\Big)^ c=\bigcup _ n S_ n^ c}$$

### Series

Geometric series
$$\sum_{k=0}^{\infty}\alpha^i=\frac{1}{1-\alpha} \qquad |\alpha|<1$$

---
## Lecture 2

### Conditional probability
$$P(A|B) = \frac{P(A\cap B)}{P(B)}$$
Probability axioms still apply for conditional probability
- For example, for disjoint sets A and C.
$$P(A\cup C|B) = P(A|B) +P(C|B)$$
### Multiplication rule
$$P(A_1 \cap A_2 \cap A_3 \cap \dots \cap A_n) = P(A_1) \prod_{i=2}^n P(A_i|A_1 \cap \dots \cap A_{i-1})$$
$$P(A\cap B \cap C) = P(A \cap B) P(C | A\cap B) = P(A) P(B|A) P(C|A\cap B)$$

### Total Probability 
Summing all the possible scenarios where B occur through A, leads to the total probability of B. This is a weighted average.
$$P(B) = \sum_i P(A_i) P(B|A_i)$$
### Bayes Rule
$$P(A|B)=\frac{P(B|A) P(A)}{P(B)}$$
$$P(A_i|B) = \frac{P(A_i)P(B|A_i)}{\sum_jP(A_j)P(B|A_j)}$$
This can be used to continuously update the prior knowledge of an event $P(A)$. You compute the conditional probability $P(A|B)$ and then use that as the prior $P(A)$ afterwards to keep improving your estimate.

----
## Lecture 3

### Independence
- Two events being disjoint does not imply that the variables are independent
- Variables are independent when the following occurs
$$P(A\cap B) = P(A) P(B) \quad \text{2 Variables}$$
$$P(A_i\cap A_j \cap \dots \cap A_m) = P(A_i)P(A_j)\dots P(A_m) \quad \text{m Variables}$$
- As a result of the previous property, the following happens
$$ P(A|B) = P(A)$$
- If $A$ and $B$ are independent, $A$ and $B^C$ are independent as well as $A^C$ and $B^C$ 
### Conditional Independence
$$P(A\cap B|C) = P(A|C) P(B|C)$$

---
## Lecture 4 - Counting

### Discrete Uniform Law
$$P(A) = \frac{\text{number of elements of } A}{\text{number of elements of } \Omega} = \frac{k}{n}$$
### Basic Counting Principle
- Permutations: number of ways of ordering $n$ elements. 
	- Useful when the order of the subsets matters

$$n!$$
- Number of subsets of ${1, \dots, n}$
$$2^n$$
- If you have a decision tree and want to count the number of possibilities just multiply the decisions at level 1, by the decisions at level 2, so on and so forth.
$$x \text{ decisions} \times y \text{ decisions} \times \dots$$
### Combinations
Number of $k$-element subsets of a given $n$-element set.
- Useful when the order of the subsets doesn't matter
$${n \choose k} = \frac{n!}{k! (n-k)!} \qquad {n \choose n} = 1 \qquad {n \choose 0} = 1$$
### Binomial Probabilities
$$P(binomial) = {n \choose k}p^k(1-p)^{n-k}$$
### Number of Partitions
Subdividing a set of $n$ items in groups of a set size with a specific combination
$$\text{number of partitions} = \frac{n!}{n_1!n_2!\dots n_r!}$$

---

## Lecture 5 - Discrete Random Variables
- Random variable: Función de valores reales que modela el output de un experimento
- Discrete random variables: Los outputs de la variable son contables
- PDF: Función que da la probabilidad de cada valor numérico que una variable puede adoptar

### Indicator Random Variables
- Bernoulli random variables that are equal to 1 when an event occurs and 0 when it doesn't. 
- Allow us to take the logic of events, and treat them like random variables.

### Expectation (Media)
For variable $X$ with PMF $p_X$
$$E[X]=\sum_x xp_X(x)$$

When applying a function $g()$ to $X$
$$E[g(X)]=\sum_x g(x)p_X(x)$$
### Total Expectation
$$E[X] = E[X|A]p(A) + E[X|B]p(B) + \dots + E[X|n]p(n)$$
### Variance
Theoretically
$$var(X)=E[(X-E[X])^2]$$
More practically
$$var(X)= \sum_x(x-E[X])^2p_X(x)$$
Standard deviation
$$\sigma_X = \sqrt{var(X)}$$
En términos de momentos
$$var(X)=E[X^2]-(E[X])^2$$

---
## Lecture 6 - Joint PMFs
### Operations on Mean and Variance
Let $X$ be a random variable and let
$$Y=aX+b$$
where $a$ and $b$ consist of scalars. Then
$$E[Y]=aE[X]+b$$
$$var(Y) = a^2var(X)$$
### Joint PMFs of Multiple Random Vars
Joint PMF
$$p_{X,Y}(x,y) = P(X=x, Y=y)$$
Marginal PMF (Solo X o solo Y)
$$p_X(x) = \sum_y p_{X,Y}(x,y)$$
$$p_Y(y) = \sum_x p_{X,Y}(x,y)$$
Other properties
- All properties apply when you have more than 2 variables
$$E[g(X,Y)] = \sum_x \sum_y g(x,y) p_{X,Y}(x,y)$$
$$E[aX+bY+c]=aE[X]+bE[Y]+c$$
---
## Lecture 7 - Conditioning and Independence
### Conditional PMFs
$$p_{X|A}(x)=P(X=x|A)  \qquad \sum_x p_{X|A}(x)=1$$
If $Ai$ are disjoint events, and $P(A_i) >0$
$$p_X(x) = \sum_{i=1}^nP(A_i) p_{X|A_i}(x)$$
Very similar behavior to conditional probabilities
$$p_{X|Y}(x|y) = \frac{p_{X,Y}(x,y)}{p_Y(y)}$$
### Conditional Expectations
$$E[X|A]=\sum_x xp_{X|A}(x)$$
Same properties as with the regular expectations apply, for example
$$E[X]=\sum_{i=1}^n p(A_i)E[X|A_i]$$
$$E[X|Y=y]=\sum_x xp_{X|Y}(x|y)$$
### Independence
- X es independiente del evento $A$
$$p_{X|A}(x) = p_X(x)$$
- $X$ and $Y$ are independent if 
$$p_{X,Y}(x,y) = p_X(x)p_Y(y)$$
   This extends to multiple variables as well.
- También se puede decir lo siguiente si son independientes $X$ y $Y$
$$E[XY]=E[X]E[Y]$$
$$var(X+Y) = var(X) + var(Y)$$
### Special Random Variables
![[Pasted image 20231026215647.png]]
- Geometric series: 
	- Memorylessness: Pruebas o experimentos anteriores, no afectan nuevos experimentos
	- Si en el problema menciona $\leq$  o algo similar, en lugar de un $=$ , la fórmula del PMF cambia a
$$p_x(k)=(1-p)^{k-1}$$

---

## Unit 5
Properties of a continuous random variable $X$ with PDF $f_x$
$$f_X(x) \geq 0 \qquad \text{for all } x$$ 
$$\int_{-\infty}^{\infty}f(x)dx = 1$$
If $\delta$ is very small, then
$$P([x, x+\delta])\approx f_X(x) \delta$$

### Expectation, Variance and Properties
Expectation
$$E[X]=\int_{-\infty}^{\infty} xf_X(x)dx$$
$$E[g(X)]=\int_{-\infty}^{\infty} g(x)f_X(x)dx$$
Variance
$$var(X) = E[(X-E[X])^2 = \int_{-\infty}^\infty (x-E[X])^2 \quad f_X(x)dx$$
$$0\leq var(X) = E[X^2] - (E[X])^2$$
Properties
$$E[Y] = aE[X]+b \qquad var(Y) = a^2 var(X)$$

### Properties of CDF
The CDF $F_X$ of a random variable $X$ is defined by
$$F_X(x) = P(X\leq x)$$
Properties
- $F_x$ es monotónicamente creciente
- $F_X(x)$ tiende a 0 a medida que $x \rightarrow -\infty$ y a 1 a medida que $x \rightarrow \infty$.
-  If $X$ is:
	- Discrete: $F_X(x)$ is a piecewise constant function of $x$ 
	- 