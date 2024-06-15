=== start-multi-column: First part
```multi-column-settings  
number of columns: 4
Largest Column: standard  
shadow: off
border: off
```


## Unit 1 - L1 - Probability Models and Axioms

### Probability axioms

- Nonnegativity: Un evento no puede tener probabilidad menor a 0
- Normalization: La probabilidad máxima de un evento es 1
- Additivity:
	- Conjunto finito: For disjoint events, their union should be equal to the sum of their probabilities  $$P(A\cup B \cup \dots\cup Z) = P(A) + P(B) + \dots + P(Z)$$
	- Conjunto infinito: Solo cumple con additivity si es **contable**.
### Consequences of the axioms

- For non disjoint (without an intersection) sets 
$$P(A \cup B) = P(A) + P(B) - P(A \cap B) \qquad \text{2 Events} $$
$$ P(A \cup B \cup C) = P(A) + P(A^c \cap B) + P(A^c \cap B^c \cap C) \qquad \text{3 Events}$$

---
## Unit 1 - Mathematical Background
De Morgan's Law
$$\qquad \displaystyle {\Big(\bigcup _ n S_ n\Big)^ c=\bigcap _ n S_ n^ c,\qquad \Big(\bigcap _ n S_ n\Big)^ c=\bigcup _ n S_ n^ c}$$
Geometric series
$$\sum_{k=0}^{\infty}\alpha^i=\frac{1}{1-\alpha} \qquad |\alpha|<1$$

---
## Unit 2 - L2 - Conditioning and Bayes Rule

### Conditional probability
$$P(A|B) = \frac{P(A\cap B)}{P(B)}$$
### Multiplication rule
$$P(A_1 \cap A_2 \cap A_3 \cap \dots \cap A_n) = P(A_1) \prod_{i=2}^n P(A_i|A_1 \cap \dots \cap A_{i-1})$$
$$P(A\cap B \cap C) = P(A \cap B) P(C | A\cap B) = P(A) P(B|A) P(C|A\cap B)$$
### Total Probability 
Summing all the possible scenarios where B occur through events $A_i$ leads to the total probability of B. This is a weighted average.
$$P(B) = \sum_i P(A_i) P(B|A_i)$$
### Bayes Rule
$$P(A|B)=\frac{P(B|A) P(A)}{P(B)}$$
$$P(A_i|B) = \frac{P(A_i)P(B|A_i)}{\sum_jP(A_j)P(B|A_j)}$$
This can be used to continuously update the prior knowledge of an event $P(A)$. You compute the conditional probability $P(A|B)$ and then use that as the prior $P(A)$ afterwards to keep improving your estimate.

----
## Unit 1 - L3 - Independence

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
## Unit 3 - L4 - Counting

### Discrete Uniform Law
$$P(A) = \frac{\text{number of elements of } A}{\text{number of elements of } \Omega} = \frac{k}{n}$$
### Counting Methods

| Name | Formula | Description |
| ---- | ------- | ----------- |
| Permutations     | $n!$         | Number of ways of ordering $n$ elements. Useful when the order of subsets matters            |
| Total Subsets     | $2^n$         | Number of subsets of $1, \dots, n$            |
| Decision Tree     | $x \text{ decisions} \times y \text{ decisions} \times \dots$         | If you have a decision tree and want to count the number of possibilities just multiply the decisions at level 1, by the decisions at level 2, so on and so forth.            |
| Combinations     | ${n \choose k} = \frac{n!}{k! (n-k)!} \qquad {n \choose n} = 1 \qquad {n \choose 0} = 1$         | Number of $k$-element subsets of a given $n$-element set. Useful when the order of the subsets doesn't matter |
### Number of Partitions
- Subdividing a set of $n$ items in groups of a set size with a specific combination. 
- Por ejemplo, tomamos $n$ cartas y le repartimos $n_1$ al jugador 1, $n_2$ al jugador 2 y así. Esto da el número total de combinaciones totales que pueden tener todas las subdivisiones.
$$\text{number of partitions} = \frac{n!}{n_1!n_2!\dots n_r!}$$
---
## Unit 4 - L5 - Probability Mass Functions and Expectation

### Indicator Random Variables
- Bernoulli random variables that are equal to 1 when an event occurs and 0 when it doesn't: $I_A$ for event $A$
- Allow us to take the logic of events, and treat them like random variables.

### Expectation (Media)
For variable $X$ with PMF $p_X$
$$E[X]=\sum_x xp_X(x)$$
$$E[g(X)]=\sum_x g(x)p_X(x)$$
### Total Expectation
$$E[X] = E[X|A]p(A) + E[X|B]p(B) + \dots + E[X|n]p(n)$$

---
## Unit 4 - L6 - Variance, Conditioning on an Event and Multiple R.V.s

### Variance
$$var(X)=E[(X-E[X])^2] = E[X^2] + E[E[X]^2] - 2E[XE[X]]$$
$$var(X)= \sum_x(x-E[X])^2p_X(x)$$
En términos de momentos
$$var(X)=E[X^2]-(E[X])^2$$

=== end-column ===

### Standard deviation
$$\sigma_X = \sqrt{var(X)}$$
### Operations on Mean and Variance
Let $X$ be a random variable and let $Y=aX+b$ where $a$ and $b$ consist of scalars. Then
$$E[Y]=aE[X]+b \qquad var(Y) = a^2 var(X)$$
### Joint PMFs of Multiple Random Vars
Joint PMF
$$p_{X,Y}(x,y) = P(X=x, Y=y)$$
Marginal PMF (PMF's en función de una sola variable)
$$p_X(x) = \sum_y p_{X,Y}(x,y) \qquad p_Y(y) = \sum_x p_{X,Y}(x,y) $$
Regular properties apply when you have more than 2 variables
$$E[g(X,Y)] = \sum_x \sum_y g(x,y) p_{X,Y}(x,y)$$
$$E[aX+bY+c]=aE[X]+bE[Y]+c$$
---
## Unit 4 - L7 - Conditioning and Independence of Random Variables

### Conditional PMFs
$$p_{X|A}(x)=P(X=x|A)  \qquad \sum_x p_{X|A}(x)=1$$
If $Ai$ are disjoint events, and $P(A_i) >0$
$$p_X(x) = \sum_{i=1}^nP(A_i) p_{X|A_i}(x)$$
Very similar behavior to conditional probabilities
$$p_{X|Y}(x|y) = \frac{p_{X,Y}(x,y)}{p_Y(y)}$$
### Conditional Expectations
$$E[X|A]=\sum_x xp_{X|A}(x)$$
Same properties as with the regular expectations apply, for example
$$E[X]=\sum_{i=1}^n p(A_i)E[X|A_i] \qquad E[X|Y=y]=\sum_x xp_{X|Y}(x|y)$$
### Independence
- X es independiente del evento $A$
$$p_{X|A}(x) = p_X(x)$$
- $X$ and $Y$ are independent if 
$$p_{X,Y}(x,y) = p_X(x)p_Y(y)$$
   This extends to multiple variables as well.
- También se puede decir lo siguiente si son independientes $X$ y $Y$
$$E[XY]=E[X]E[Y] \qquad var(X+Y) = var(X) + var(Y)$$
---
## Special Discrete Random Variables
![[Pasted image 20231026215647.png]]
- Geometric series: 
	- Memorylessness: Pruebas o experimentos anteriores, no afectan nuevos experimentos
	- Si en un problema menciona $\leq$  o algo similar, en lugar de un $=$ , la fórmula del PMF cambia a
$$p_x(k)=(1-p)^{k-1}$$
---
## Unit 5 - L8, L9, L10 - Probability Density Functions (PDFs)
Properties of a continuous random variable $X$ with PDF $f_x$
$$f_X(x) \geq 0 \qquad \text{for all } x$$
$$\int_{-\infty}^{\infty}f(x)dx = 1$$
If $\delta$ is very small, then
$$P([x, x+\delta])\approx f_X(x) \delta$$
### Expectation, Variance and Properties
Expectation
$$E[X]=\int_{-\infty}^{\infty} xf_X(x)dx \qquad E[g(X)]=\int_{-\infty}^{\infty} g(x)f_X(x)dx$$
Variance
$$var(X) = E[(X-E[X])^2 = \int_{-\infty}^\infty (x-E[X])^2 f_X(x)dx$$
$$0\leq var(X) = E[X^2] - (E[X])^2$$
Properties
$$E[Y] = aE[X]+b \qquad var(Y) = a^2 var(X)$$
### Properties of CDF
$$F_X(x) = P(X\leq x)$$
Properties
- $F_x$ is monotonically non-decreasing (values can only increase or stay the same)
- $F_X(x)$ tiende a 0 a medida que $x \rightarrow -\infty$ y a 1 a medida que $x \rightarrow \infty$.
-  If $X$ is discreta, $F_X(x)$ es una función constante por partes de $x$. Si es continua, $F_X(x)$ es una función continua de $x$

Se puede obtener la PDF ($f_X(x)$) de la CDF ($F_X(x)$) of viceversa así:
- Caso discreto
$$F_X(k) = \sum_{i=-\infty}^k p_X(i) \qquad p_X(k) = P(X\leq k)-P(X\leq k-1)=F_X(k)-F_X(k-1)$$
- Caso continuo
$$F_X(x) = \int_{-\infty}^x f(t)dt \qquad f_X(x) = \frac{dF_X}{dx}(x)$$

=== end-column ===

### Normal Random Variables
- Linear transformations apply in the same way as in [[Cheatsheet - Part 1 - Page 1#Operations on Mean and Variance|here]]. The condition is that $a \neq 0$
- To calculate the CDF of a normal random variable do the following
	1. "Standardize" $X$ (by subtracting $\mu$ and dividing by $\sigma$) to get a standard normal
	2. Read the CDF value from the standard normal table found in the book on page 21
$$P(X\leq x) = P(\frac{X-\mu}{\sigma}) = P(Y\leq \frac{x-\mu}{\sigma})$$ 
### Conditional Expectations
This behaves very similarly to how the conditional expectation works on discrete random variables.
$$E[X|A]=\int_{-\infty}^\infty xf_{X|A}(x)dx \qquad \text{conditioning on an event}$$
$$E[X|Y=y] = \int_{-\infty}^\infty xf_{X|Y}(x|y)dx \qquad \text{conditioning on a variable}$$
Total expectation theorem
$$E[X]=\sum_{i=1}^n P(A_i)E[X |A_i] \qquad E[X]=\int_{-\infty}^\infty E[X|Y=y]f_Y(y)dy$$
The expected value rule
$$E[g(X)|A]=\int_{-\infty}^\infty g(x)f_{X|A}(x)dx \qquad E[g(X)|Y=y]=\int_{-\infty}^\infty g(x)f_{X|Y}(x|y)dx$$
### Independence of Continuous Random Variables
$X$ and $Y$ are independent if
$$f_{X,Y}(x,y)=f_X(x)f_Y(y) \qquad \text{for all } x,y$$
If the variables are independent, then (these do not imply independence, they are a consequence of)
$$E[XY] = E[X]E[Y] \qquad var(X+Y)=var(X)+var(Y)$$
### Bayes Rule Relations for Random Variables

| $X$ and $Y$ are | Bayes rule formula |
| ----------- | ---------- |
| Discrete    |  $p_X(x)p_{Y\mid X}(y \mid x)=p_Y(y)p_{X \mid Y}(x \mid y)$         |
| Discrete and continuous    |  $p_X(x) f_{Y\mid X}(y\mid x)=f_Y(y)p_{X \mid Y}(x \mid y)$         |
| Continuous    |  $f_X(x) f_{Y \mid X}(y \mid x)=f_Y(y)f_{X \mid Y}(x \mid y)$         |

---
## Special Continuous Random Variables
![[Pasted image 20231028193607.png]]

---

## Unit 6 - Further Topics on Random Variables
### Calculate the PDF of a Function
1. Calculate the CDF $F_Y$ of $Y$ using the formula
$$F_Y(y) = P(g(X)\leq y) = \int_{{x|g(x)\leq y}} f_X(x)dx$$
2. Differentiate to obtain the PDF of $Y$
$$f_Y(y)=\frac{dF_Y}{dy}(y)$$
### PDF of a Linear Function of a Random Variable
Let $X$ be continuous with PDF $f_X$ and let $Y = aX+b$ where $a$ and $b$ are scalars, with $a\neq 0$
$$f_Y(y) = \frac{1}{|a|}f_X(\frac{y-b}{a})$$
### PDF Formula for a Strictly Monotonic Function
$g$ is strictly monotonic and that for some function $h$ and all $x$ in the range we have 
$$y=g(x) \qquad \text{if and only if } x= h(y)$$
Assume $h$ is differentiable. Then the PDF of $Y$ in the region where $f_Y(y) > 0$ is given by
$$f_Y(y)=f_X(h(y))|\frac{dh}{dy}(y)|$$
### Covariance and Correlation
$$cov(X,Y) = E[(X-E[X])(Y-E[Y])] = E[XY] - E[X]E[Y]$$
- If $cov(X, Y) = 0$ the variables are uncorrelated
- If $X$ and $Y$ are independent they are uncorrelated. The reverse is not always true
- Covariance in terms of the variance
$$var(X+Y) = var(X) + var(Y) + 2cov(X,Y)$$
- Correlation coefficient
$$\rho(X, Y) = \frac{cov(X,Y)}{\sqrt{var(X)var(Y)}} \qquad \text{where } -1\leq\rho(X,Y)\leq1$$
### Conditional Expectation and Variance
Law of iterated expectations
$$E[E[X|Y]] = E[X]$$
Law of total variance
$$var(X) = E[var(X|Y)] + var(E[X|Y])$$
Properties of conditional expectation and variance
- $E[X|Y = y]$ is a number whose value depends on $y$
- $E[X|Y]$ is a function of the random variable $Y$, hence also a random variable. You actually get a value when you assign a value to $Y$ ($E[X|Y=y]$)
- $E[X|Y =y]$ can be viewed as an estimate of $X$ given $Y=y$. The error $E[X|Y] - X$ is a zero mean random variable uncorrelated with $E[X|Y]$
- $var(X|Y)$ is a random variable whose value is $var(X|Y=y)$ whenever the value of $Y$ is $y$

### Sum of Random Number of Independent R.V.s
Let $X_1, X_2, \dots$ be identically distributed random variables with mean $E[X]$ and variance $var(X)$. Let $N$ be a random variable that takes nonnegative integer values. These variables are independent and consider their sum
$$Y= X_1+\dots+X_N$$
Then:
- $E[Y] = E[N]E[X]$
- $var(Y) = E[N]var(X) + (E[X])^2 var(N)$

---
## Unit 8 - L18, L19 - Inequalities and Central Limit Theorem
### Markov and Chebyshev Inequalities
Markov inequality
- If a random variable $X$ can only take nonnegative values
$$P(X\geq a) \leq \frac{E[X]}{a} \qquad \text{for all } a > 0$$
Chebyshev inequality
- If $X$ is a random variable with mean $\mu$ and variance $\sigma^2$
$$P(|X-\mu| \geq c) \leq \frac{\sigma^2}{c^2}$$

=== end-column ===

### Weak Law of Large Numbers
Let $X_1, X_2, \dots$ be independent identically distributed random variables with mean $\mu$. For every $\epsilon > 0$, we have
$$P(|M_n-\mu| \geq \epsilon) = P\left(\left| \frac{X_1+\dots+X_n}{n} - \mu \right| \geq \epsilon \right) \rightarrow 0 \qquad \text{as } n \rightarrow \infty$$
### Convergence of a Deterministic Sequence
Let $a_1, a_2, \dots$ be a sequence of real numbers, and let $a$ be another real number. We say that the sequence  $a_n$ converges to $a$, or $lim_{n \rightarrow \infty}a_n = a$ if for every $\epsilon > 0$ there exists some $n_0$ such that
$$|a_n-a|\leq\epsilon \qquad \text{for all } n \geq n_0$$
### Convergence in Probability
Let $Y_1, Y_2, \dots$ be a sequence of random variables (not necessarily independent), and let $a$ be a real number. We say that the sequence $Y_n$ converges to $a$ in probability, if for every $\epsilon > 0$ we have
$$\lim_{n\rightarrow \infty} P(|Y_n - a| \geq \epsilon) = 0$$
### The Central Limit Theorem
Let $X_1, X_2, \dots$ be a sequence of independent identically distributed random variables with common mean $\mu$ and variance $\sigma^2$, and define
$$Z_n=\frac{X_1+\cdots+X_n-n \mu}{\sigma \sqrt{n}}$$
Then, the CDF of $Z_n$ converges to the standard normal CDF
$$\Phi(z)=\frac{1}{\sqrt{2 \pi}} \int_{-\infty}^z e^{-x^2 / 2} d x$$
in the sense that
$$\lim _{n \rightarrow \infty} \mathbf{P}\left(Z_n \leq z\right)=\Phi(z), \quad \text { for every } z$$
### Normal Approximation Based on the Central Limit Theorem
Let $S_n = X_1 + \dots + X_n$ where the $X_i$ are independent identically distributed random variables with mean $\mu$ and variance $\sigma^2$. If $n$ is large, the probability $P(S_n \leq c)$ can be approximated by treating $S_n$ as if it were normal, according to the following procedure
1. Calculate the mean $n\mu$ and the variance $n\sigma$ of $S_n$
2. Calculate the normalized value $z = \frac{c - n\mu}{\sigma \sqrt{n}}$
3. Use the approximation
$$P(S_n \leq c) \approx \Phi(z)$$
	where $\Phi(z)$ is available from standard normal CDF tables

### De Moivre-Laplace Approximation to the Binomial
If $S_n$ is a binomial random variable with parameters $n$ and $p$, $n$ is large, and $k$, $l$ are nonnegative integers, then
$$\mathbf{P}\left(k \leq S_n \leq l\right) \approx \Phi\left(\frac{l+\frac{1}{2}-n p}{\sqrt{n p(1-p)}}\right)-\Phi\left(\frac{k-\frac{1}{2}-n p}{\sqrt{n p(1-p)}}\right)$$

---
## Unit 8 - L20 - Classical Statistics
### Estimators
Let $\hat{\Theta}_n$ be an estimator of an unknown parameter $\theta$, that is, a function of n observations $X_1, \dots, X_n$ whose distribution depends on $\theta$. 
- The estimation error, denoted by $\theta_n$, is defined by $\tilde{\Theta_n} = \hat{\Theta_n} - \theta$ 
- The bias of the estimator, denoted by $b_\theta(\hat{\Theta}_n)$, is the expected value of the estimation error: $b_\theta(\hat{\Theta}_n) = E_\theta[\hat{\Theta}_n] - \theta$ 
- The expected value, the variance, and the bias of $\hat{\Theta}_n$ depend on $\theta$, while the estimation error depends in addition on the observations $X_1, \dots , X_n$. 
- We call $\hat{\Theta}_n$ unbiased if $E_\theta[\hat{\Theta}_n] = \theta$, for every possible value of \theta. 
- We call $\hat{\Theta}_n$ asymptotically unbiased if $\lim_{n} E_\theta[\hat{\Theta_n}] = \theta$, for every possible value of $\theta$. 
- We call $\hat{\Theta_n}$ consistent if the sequence $\hat{\Theta_n}$ converges to the true value of the parameter $\theta$, in probability, for every possible value of $\theta$.

### Maximum Likelihood Estimation
- We are given the realization $x = (x_1,\dots , x_n)$ of a random vector $X = (X_1,\dots , X_n)$, distributed according to a PMF $p_X(x; \theta)$ or PDF $f_X(x; \theta)$. 
- The maximum likelihood (ML) estimate is a value of $\theta$ that maximizes the likelihood function, $p_X(x; \theta)$ or $f_X(x; \theta)$, over all $\theta$ 
- The ML estimate of a one-to-one function $h(\theta)$ of $\theta$ is $h(\hat{\theta_n})$, where $\hat{\theta_n}$ is the ML estimate of $\theta$ (the invariance principle) 
- When the random variables $X_i$ are i.i.d., and under some mild additional assumptions, each component of the ML estimator is consistent and asymptotically normal
### Estimates of the Mean and Variance of a Random Variable
Let the observations $X_1, \dots, X_n$ be i.i.d, with mean \theta and variance $v$ that are unknown
- The sample mean is an unbiased estimator of $\theta$ and its mean squared error is $v/n$
$$M_n = \frac{X_1 + \dots + X_n}{n}$$
- Two variance estimators are 
$$\bar{S}_n^2=\frac{1}{n} \sum_{i=1}^n\left(X_i-M_n\right)^2, \quad \hat{S}_n^2=\frac{1}{n-1} \sum_{i=1}^n\left(X_i-M_n\right)^2$$
- The estimator $\bar{S_n^2}$ coincides with the ML estimator if the $X_i$ are normal. It is biased but asymptotically unbiased. The estimator $\hat{S_n^2}$ is unbiased. For large $n$, the two variance estimators essentially coincide
### Confidence Intervals
- A confidence interval for a scalar unknown parameter $\theta$ is an interval whose endpoints $\hat{\Theta^-_n}$ and $\hat{\Theta^+_n}$ bracket $\theta$ with a given high probability. 
- $\hat{\Theta^-_n}$ and $\hat{\Theta^+_n}$ are random variables that depend on the observations $X_1,\dots , X_n$. 
- A $1 - \alpha$ confidence interval is one that satisfies
$$\mathbf{P}_\theta\left(\hat{\Theta}_n^{-} \leq \theta \leq \hat{\Theta}_n^{+}\right) \geq 1-\alpha$$
	for all possible values of $\theta$

---
## Unit 9 - L21, L22, L23 - Poisson and Bernoulli Processes

### Random Variables Associated with Bernoulli Process
- Binomial: Parameters $p$ and $n$. Consists of the number $S$ of successes in $n$ independent trials
$$\begin{gathered}
p_S(k)=\left(\begin{array}{l} nk
\end{array}\right) p^k(1-p)^{n-k}, \quad k=0,1, \ldots, n,
\end{gathered}
$$
$$\begin{gathered}\mathbf{E}[S]=n p, \quad \operatorname{var}(S)=n p(1-p) . \end{gathered}$$
- Geometric: Parameters $p$. Number of $T$ trials up to (and including) the first success.
$$p_T(t)=(1-p)^{t-1} p, \quad t=1,2, \ldots,$$
$$\mathbf{E}[T]=\frac{1}{p}, \quad \operatorname{var}(T)=\frac{1-p}{p^2}$$
### Independence Properties of Bernoulli Process
- For any given time $n$, the sequence $X_{n+1}, X_{n+2}, \dots$ is also a Bernoulli process, independent of $X_1, \dots, X_n$
- Let $n$ be a given time and let $\bar{T}$ be the time of the first success after time $n$. Then, $\bar{T} - n$ has a geometric distribution with parameter $p$, and is independent of the random variables $X_1, \dots , X_n$.
### Properties of the kth Arrival Time
The kth arrival time is equal to the sum of the first $k$ interarrival times with each $T$ being a geometric random variable with common parameter $p$
$$T_k = T_1 + T_2 + \dots + T_k$$
Mean and variance of $Y_k$
$$\mathbf{E}\left[Y_k\right]=\mathbf{E}\left[T_1\right]+\cdots+\mathbf{E}\left[T_k\right]=\frac{k}{p},$$
$$\operatorname{var}\left(Y_k\right)=\operatorname{var}\left(T_1\right)+\cdots+\operatorname{var}\left(T_k\right)=\frac{k(1-p)}{p^2}$$
The PMF of $Y_k$ is known as Pascal PMF of order $k$
$$p_{Y_k}(t)=\left(\begin{array}{c}
t-1 \\
k-1
\end{array}\right) p^k(1-p)^{t-k}, \quad t=k, k+1, \ldots$$

=== end-multi-column

