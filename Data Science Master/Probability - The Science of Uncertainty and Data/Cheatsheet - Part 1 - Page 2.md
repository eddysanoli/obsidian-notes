=== start-multi-column: First part
```multi-column-settings  
number of columns: 4
Largest Column: standard  
shadow: off
border: off
```


## Poisson Approximation of the Binomial
PMF of a random variable $Z$ with parameter $\lambda$
$$p_Z(k)=e^{-\lambda} \frac{\lambda^k}{k !}, \quad k=0,1,2, \ldots$$
Mean and variance
$$E[Z] = \lambda \qquad var(Z) = \lambda$$
For any fixed, nonnegative integer $k$, the binomial probability is 
$$p_S(k)=\frac{n !}{(n-k) ! k !} \cdot p^k(1-p)^{n-k}$$
which converges to $p_Z(k)$ when $n$ tends to do $\infty$
### Poisson Process
Process with rate $\lambda$ with the following properties
- Time-homogeneity: The probability of $P(k, \tau)$ of $k$ arrivals is the same for all intervals of the same lengths. 
- Independence: The number of arrivals during an interval is independent of the history of arrivals outside this interval
- Small interval probabilities
$$\begin{aligned}
& P(0, \tau)=1-\lambda \tau+o(\tau), \\
& P(1, \tau)=\lambda \tau+o_1(\tau) \text {, } \\
& P(k, \tau)=o_k(\tau), \quad \text { for } k=2,3, \ldots \\
&
\end{aligned}$$
### Associated Random Variables
- Poisson with parameter $\lambda \tau$. This is the number of $N_T$ arrivals in a poisson process with rate $\lambda$ over an interval of length $\tau$. Its PMF, variance and mean is
$$p_{N_\tau}(k)=P(k, \tau)=e^{-\lambda \tau} \frac{(\lambda \tau)^k}{k !}, \quad k=0,1, \ldots$$
$$\mathbf{E}\left[N_\tau\right]=\lambda \tau, \quad \operatorname{var}\left(N_\tau\right)=\lambda \tau$$
- The exponential with parameter $\lambda$. This is the time $T$ until the first arrival
$$f_T(t)=\lambda e^{-\lambda t}, \quad t \geq 0, \quad \mathbf{E}[T]=\frac{1}{\lambda}, \quad \operatorname{var}(T)=\frac{1}{\lambda^2}$$
### Independence Properties
- For a given time $t>0$, the history of the process after time $t$ is also a Poisson process, and is independent from the history of the process until time $t$.
- Let $t$ be a given time and let $\bar{T}$ be the time of the first arrival after time $t$. Then $\bar{T} - t$ has an exponential distribution with parameter $\lambda$ and is independent of the history of the process until time $t$
### Properties of kth Arrival Time
$$Y_k = T_1 + T_2 + \dots + T_k$$
Mean and variance of $Y_k$
$$\begin{gathered}
\mathbf{E}\left[Y_k\right]=\mathbf{E}\left[T_1\right]+\cdots+\mathbf{E}\left[T_k\right]=\frac{k}{\lambda}, \\
\operatorname{var}\left(Y_k\right)=\operatorname{var}\left(T_1\right)+\cdots+\operatorname{var}\left(T_k\right)=\frac{k}{\lambda^2} .
\end{gathered}$$
The PDF of $Y_k$ is known as the Erlang PDF of order $k$
$$f_{Y_k}(y)=\frac{\lambda^k y^{k-1} e^{-\lambda y}}{(k-1) !}, \quad y \geq 0$$
### Properties of Sums of a Random Number of R.V.s
Let $N, X_1, X_2, \dots$ be independent random variables, where $N$ takes nonnegative integer values. Let $Y = X_1 + \dots + X_N$ for positive values of $N$ and let $Y=0$ when $N=0$
- If $X_i$ is Bernoulli with parameter $p$ and $N$ is binomial with parameters $m$ and $q$ then $Y$ is binomial with parameters $m$ and $pq$
- If $X_i$ is Bernoulli with parameter $p$ and $N$ is Poisson with parameter $\lambda$, then $Y$ is Poisson with parameter $\lambda p$
- If $X_i$ is geometric with parameter $p$ and $N$ is geometric with parameter $q$, then $Y$ is geometric with parameter $pq$
- If $X_i$ is exponential with parameter $\lambda$ and $N$ is geometric with parameter $q$ then $Y$ is exponential with parameter $\lambda q$

## Unit 7 - L14, L15, L16 - Bayesian Inference

### Bayesian inference
Requirements
1. Start with a prior distribution $p_\theta$ of $f_\theta$ for the unknown random variable $\Theta$
2. Have a model $p_{X|\Theta}$ of $f_{X|\Theta}$ of the observation vector $X$
3. After observing the value $x$ of $X$, we form the posterior distribution of $\Theta$ using the appropriate version of Bayes rule

| $\Theta$ and $X$ | Formula |
| ---------------- | ------- |
| $\Theta$ discreet and $X$ discrete                 | $p_{\Theta \mid X}(\theta \mid x)=\frac{p_{\Theta}(\theta) p_{X \mid \Theta}(x \mid \theta)}{\sum_{\theta^{\prime}} p_{\Theta}\left(\theta^{\prime}\right) p_{X \mid \Theta}\left(x \mid \theta^{\prime}\right)} .$        |
| $\Theta$ discreet and $X$ continuous                 | $p_{\Theta \mid X}(\theta \mid x)=\frac{p_{\Theta}(\theta) f_{X \mid \Theta}(x \mid \theta)}{\sum_{\theta^{\prime}} p_{\Theta}\left(\theta^{\prime}\right) f_{X \mid \Theta}\left(x \mid \theta^{\prime}\right)} .$        |
| $\Theta$ continuous and $X$ discreet                 | $f_{\Theta \mid X}(\theta \mid x)=\frac{f_{\Theta}(\theta) p_{X \mid \Theta}(x \mid \theta)}{\int f_{\Theta}\left(\theta^{\prime}\right) p_{X \mid \Theta}\left(x \mid \theta^{\prime}\right) d \theta^{\prime}}$        |
| $\Theta$ continuous and $X$ continuous                 | $f_{\Theta \mid X}(\theta \mid x)=\frac{f_{\Theta}(\theta) f_{X \mid \Theta}(x \mid \theta)}{\int f_{\Theta}\left(\theta^{\prime}\right) f_{X \mid \Theta}\left(x \mid \theta^{\prime}\right) d \theta^{\prime}}$        |
### The Maximum a Posteriori Probability (MAP) Rule
- Given the observation value $x$, the MAP rule selects a value $\hat{\theta}$ that maximizes over $\theta$ the posterior distribution $p_{\Theta|x}(\theta|x)$ (if $\Theta$ is discrete) or $f_{\Theta|x}(\theta|x)$ (if $\Theta$ is continuous). 
- Equivalently it selects $\hat{\theta}$ that maximizes over $\theta$:  $p_\Theta(\theta) p_{X|\Theta}(x|\theta)$. 
	- Esta expresión cambia entre $p(\theta)$ y $f(\theta)$ dependiendo de si $\Theta$ y $X$ es discreto o continuo. 
	- Si $\Theta$ puede tomar un número finito de valores, la regla MAP minimiza la probabilidad de seleccionar una hipótesis incorrecta.
### Point Estimates
 - An estimator is a random variable of the form $\hat{\Theta} = g(X)$ for some function $g$
 - An estimate is the value of $\hat{\theta}$ of an estimator
 - Once the value $x$ of $X$ is observed, the MAP estimator, sets the estimate $\hat{\theta}$ to a value that maximizes the posterior distribution over all possible values of $\theta$
 - Once the value of $x$ of $X$ is observed, the conditional expectation (LMS) estimator sets the estimate $\hat{\theta}$ to $E[\Theta|X=x]$
### Least Means Squares Estimation
![[Pasted image 20231029011806.png]]
![[Pasted image 20231029011831.png]]




=== end-multi-column

