=== start-multi-column: First part
```multi-column-settings  
number of columns: 4
Largest Column: standard  
shadow: off
border: off
```


# Fundamentals of Statistics

## Unit 1 - L1 - What is Statistics
### Statistics vs. Probability
- Probability: "Estudios previos mostraron que la droga era 80% efectiva para. Se puede anticipar que en un estudio de 100 personas, 80 van a ser curados y 65 van a ser curados con 99.99% de probabilidad"
 - Statistics: "Se observa que 78 de 100 pacientes se curaron. Concluiremos con un 95% de exactitud que la droga será efectiva entre un 69 y 86% de los pacientes"

### Sample Average Estimator
$$\hat{p} = \bar{R_n} = \frac{1}{n}\sum_{i=2}^nR_i$$
- To calculate the accuracy of the estimator, a statistical model must be proposed. Coming up with a model consists of making assumptions on the observations $R_i$, for example
	- Each $R_i$ is a Bernoulli random variable with parameter $p$ 
- We need to be able to answer questions about $\hat{p}$ like
	- Is the expected value of $\hat{p}$ close to the unknown p?
	- Does $\hat{p}$ take values close to $p$ with high probability?
	- Is the variance of $\hat{p}$ large?

### Averages of Random Variables
To respond to the previous questions we need probabilistic tools that mostly depend on averaging independent random variables

---
## Unit 1 - L2 - Probability Redux
### Laws of Large Numbers
Estas nos permiten decir que a medida que la cantidad de muestras utilizada incrementa, nuestra estimación $\bar{R_n}$ se aproxima cada vez más al valor real de $p$. La estimación se vuelve cada vez más "consistente"
$$\bar{X}_n:=\frac{1}{n} \sum_{i=1}^n X_i \underset{n \rightarrow \infty}{\stackrel{\mathbf{P}, \text { a.s. }}{\longrightarrow}} \mu .$$
### Central Limit Theorem
El CLT cuantifica que tan bueno es el estimado $\bar{R_n}$.
$$\sqrt{n} \frac{\bar{X}_n-\mu}{\sigma} \underset{n \rightarrow \infty}{\stackrel{(d)}{\longrightarrow}} \mathcal{N}(0,1)$$
- La convergencia es en distribución como es indicado por la $(d)$ sobre la flechita
### Hoeffding's Inequality
Given $n (n>0)$ i.i.d. random variables $X_1, X_2, \ldots, X_n \stackrel{i i d}{\sim} X$ that are almost surely bounded meaning $\mathbf{P}(X \notin[a, b])=0$ 
$$\mathbb{P}\left[\left|\bar{X}_n-\mu\right| \geq \varepsilon\right] \leq 2 e^{-\frac{2 n \varepsilon^2}{(b-a)^2}} . \quad \forall \varepsilon>0$$
- Unlike for the central limit theorem, here the **sample size** $n$ **does not need to be large**.
- Not useful for variables like gaussians that can have values near $-\infty$ or $\infty$. Only useful when the values are bounded like in uniform distributions.
- Hoeffding's inequality provides confidence intervals for sample means or our estimator $\bar{R_n}$
### Gaussian Distribution
$$f_{\mu, \sigma^2}(x)=\frac{1}{\sigma \sqrt{2 \pi}} \exp \left(-\frac{(x-\mu)^2}{2 \sigma^2}\right)$$
- There's no closed form for their CDF. We use tables or computers for them.
- Properties:
	- $X \sim N(\mu, \sigma^2)$ , then for any $a, b$: $aX + b \sim N(a\mu + b, a^2 \sigma^2)$
	- Standardization: $Z = (X-\mu) / \sigma \sim N(0, 1)$ 
	- Symmetry: If $X \sim \mathcal{N}\left(\mathbf{0}, \sigma^2\right)$ then $-X \sim \mathcal{N}\left(\mathbf{0}, \sigma^2\right)$. 
 - Gaussian probability tables
 ![[Pasted image 20231029021453.png]]
 - A sum of Gaussians, still follows the same normal distribution: $X_1+\dots+ X_n=\mathcal{N}(a, b)$
### Quantiles
Let $\alpha$ in $(0, 1)$. The quantile of order $1-\alpha$ of a random variable $X$ is the number $q_\alpha$ such that
$$P(X\leq q_\alpha) = 1-\alpha$$
- Quantiles allow you to quantify the confidence level of our estimation, by saying that there is an $\alpha$ percent chance that the estimate is correct.
- Some important quantiles of $Z \sim N(0, 1)$ are 

| $\alpha$ | 2.5% | 5%  | 10% |
| -------- | ---- | --- | --- |
| $q_\alpha$         | 1.96     | 1.65    | 1.28    |

### Convergence
Convergence allow us to determine how a random variable behaves as sample sizes grow, or basically, if the random variable will be correctly estimated if we add more samples.  $(T_n)_{n\geq1}$ is a sequence of random variables. $T$ is a random variable
- Almost surely (a.s.) convergence: $T_n \underset{n \rightarrow \infty}{\stackrel{\text { a.s. }}{\longrightarrow}} T \quad \text { iff } \quad \mathbb{P}\left[\left\{\omega: T_n(\omega) \underset{n \rightarrow \infty}{\longrightarrow} T(\omega)\right\}\right]=1$
- Convergence in probability: $T_n \underset{n \rightarrow \infty}{\stackrel{\mathbb{P}}{\longrightarrow}} T \quad \text { iff } \quad \mathbb{P}\left[\left|T_n-T\right| \geq \varepsilon\right] \underset{n \rightarrow \infty}{\longrightarrow} 0, \quad \forall \varepsilon>0 .$
- Convergence in distribution (for all continuous and bounded function $f$): $T_n \underset{n \rightarrow \infty}{\stackrel{(d)}{\longrightarrow}} T \quad \text { iff } \quad \mathbb{E}\left[f\left(T_n\right)\right] \underset{n \rightarrow \infty}{\longrightarrow} \mathbb{E}[f(T)]$

Properties
- If $(T_n)_{n\geq1}$ convergences a.s., then it also converges in probability and the two limits are equal a.s. In other words, if $T_n$ converges to $T$ almost surely, it also converges in probability to $T$ and the limit is the same for both modes of convergence
- If $(T_n)_{n\geq1}$ converges in probability, then it also converges in distribution
- Convergence in distribution implies convergence of probabilities if the limit has a density
$$T_n \underset{n \rightarrow \infty}{\stackrel{(d)}{\longrightarrow}} T \quad \Rightarrow \quad \mathbb{P}\left(a \leq T_n \leq b\right) \underset{n \rightarrow \infty}{\longrightarrow} \mathbb{P}(a \leq T \leq b)$$
### Addition, Multiplication and Division
Why: From the law of large numbers I get a limit. From the CLT I get another limit. We want to combine those results as we also have an estimator for the mean and the variance. Here is where we can use convergence in distribution to try and merge our results

Assume
$$T_n \underset{n \rightarrow \infty}{\stackrel{\text { a.s. } / \mathbf{P}}{\longrightarrow}} T \quad \text { and } \quad U_n \underset{n \rightarrow \infty}{\stackrel{\text { a.s. } / \mathbb{P}}{\longrightarrow}} U$$
Then
- $T_n+U_n \underset{n \rightarrow \infty}{\stackrel{\text { a.s. } / \mathbb{P}}{\longrightarrow}} T+U,$
- $T_n U_n \underset{n \rightarrow \infty}{\stackrel{\text { a.s. } / \mathbf{P}}{\longrightarrow}} T U$
- If in addition $U \neq 0$ a.s., then $\frac{T_n}{U_n} \underset{n \rightarrow \infty}{\stackrel{\text { a.s. } / \mathbb{P}}{\longrightarrow}} \frac{T}{U}$

### Slutsky's Theorem
For convergence in distribution, the Slutsky's Theorem will be the main tool as it is a bit more robust than the rules explained before

Let $(T_ n), (U_ n)$ be two sequences of R.V.s such that 
$$T_n \underset{n \rightarrow \infty}{\stackrel{(d)}{\longrightarrow}} T \quad and \quad 
U_n \underset{n \rightarrow \infty}{\stackrel{\mathbb{P}}{\longrightarrow}} u$$

=== end-column ===

Where $T$ is a R.V. and $u$ is given a real number (deterministic limit: $P(U=u) = 1)$. Then, 
- $T_n+U_n \underset{n \rightarrow \infty}{\stackrel{(d)}{\longrightarrow}} T+u$
- $T_n U_n \underset{n \rightarrow \infty}{\stackrel{(d)}{\longrightarrow}} T u,$
- If in addition $U \neq 0$ a.s., then $\frac{T_n}{U_n} \underset{n \rightarrow \infty}{\stackrel{(d)}{\longrightarrow}} \frac{T}{u}$
### Continuous Mapping Theorem
If $f$ is a continuous function
$$T_ n\xrightarrow [n\to \infty ]{\mbox{a.s.}/\mathbf{P}/(d)}T\hspace{3mm}\Rightarrow \hspace{3mm} f(T_ n)\xrightarrow [n\to \infty ]{\mbox{a.s.}/\mathbf{P}/(d)}f(T)$$
- This theorem allow us to understand how functions behave when we apply them to random variables. It says that if you have a sequence of random variables and you apply a nice, smooth function to them, then the resulting sequence of transformed random variables will also behave nicely.

---
## Unit 2 - L3 - Parametric Statistical Models

Establece las tres herramientas principales de inferencia estadística
1. Estimation: $\hat{p} = \bar{R_n}$ 
2. Confidence intervals: "$[0.56, 0.73]$ is a 95% confidence interval for $p$"
3. Hypothesis testing: "We find statistical evidence that more couples turn their head to the right when kissing"

Why statistical modelling: We want to learn the distribution of $X$. This implies learning the parameters related to $X$

### Statistical Model
Let the observed outcome of a statistical experiment be a sample $X_1, \dots, X_n$ of $n$ i.i.d. random variables in some measurable space $E$, and denote by $P$ their common distribution. A statistical model associated to the statistical experiment is
$$\left(E,\left(\mathbb{P}_\theta\right)_{\theta \in \Theta}\right)$$
Where
- $E$ is the sample space for $X$, i.e. a set that contains all possible outcomes of $X$
- $\left(\mathbb{P}_\theta\right)_{\theta \in \Theta}$ is a family of probability measures on $E$
- $\Theta$ is  a parameter set, i.e. a set consisting of some possible values of $\theta$

### Model Types
Well specified model: Your model can actually reach the actual distribution of your data. 
- The particular value of $\theta$ that corresponds to the actual distribution is the true parameter. 
- In more technical terms "well specified" means that the desired or true probability distribution $\mathbb{P}$ is found inside of $\left(\mathbb{P}_\theta\right)_{\theta \in \Theta}$

Model types:
- Parametric: $\Theta \subseteq \mathbb{R}^d$ for some $d\geq1$ 
- Non-parametric: $\Theta$ could be infinite dimensional
- Semiparametric:  When $\Theta$ has two components, most of the time it would be a random variable, and a function.

### Mixture of Gaussians
$X$ follows a mixture of two Gaussians if and only if
$$X=ZX_1 + (1-Z)X_2$$
Where
- $Z \sim Ber(\pi)$
- $X_1 \sim \mathbb{N}(\mu_1, \sigma_1^2)$
- $X_2 \sim \mathbb{N}(\mu_2, \sigma_2^2)$
- $Z$ is independent of $X_1$ and $X_2$

### Identifiability 
The parameter $\theta$ is identifiable iff (if and only if) the map $\theta \in \Theta \mapsto \mathbb{P}_\theta$ is injective.
- Injectivity: If I give you two parameters to start from I will end up with two distributions that are different
$$\theta \neq \theta^{\prime} \Rightarrow \mathbb{P}_\theta \neq \mathbb{P}_{\theta^{\prime}}$$
- This basically says that different parameter sets $\theta$ turn into different probability distributions. This ensures that there is only one true value for $\theta$. 
- Not identifiable: I can't get the value for $\mu$ and $\sigma^2$ but I can get their ratio
- You can say that a parameter set is identifiable if all of the parameters that you want to estimate are present in either the expected value or the variance. That way if you get enough samples of the data, you can just get their average and their variance, and then use those values to obtain the parameter.

---
## Unit 2 - L4 - Parametric Estimation and Confidence Intervals

### Parameter Estimation
- Statistic: Any measurable function of the sample
- Estimator of $\theta$: Any statistic whose expression does not depend on $\theta$
	- Weakly consistent: An estimator is weakly consistent if 
 $$\hat{\theta_n} \xrightarrow [n\to \infty ]{P(resp \mbox{ a.s.})}\theta \qquad (\text{w.r.t } \mathbb{P}_\theta)$$
	- Asymptotically normal:
$$\sqrt{n}\left(\hat{\theta}_n-\theta\right) \underset{n \rightarrow \infty}{\stackrel{(d)}{\longrightarrow}} N\left(0, \sigma^2\right)$$
		  Where $\sigma^2$ is called the asymptotic variance of $\hat{\theta}_n$

### Estimator Bias
$$\operatorname{bias}\left(\hat{\theta}_n\right)=\mathbb{E}\left[\hat{\theta}_n\right]-\theta$$
- If $bias(\hat{\theta}) = 0$ we say that $\hat{\theta}$ is unbiased
### Estimator Variance
$$\operatorname{var}(X)=\mathbb{E}\left[(X-\mathbb{E}(X))^2\right]=\mathbb{E}\left[X^2\right]-(\mathbb{E}[X])^2$$
### Quadratic Risk
We want estimators that have low bias and low variance at the same time. The quadratic risk of an estimator tells us about the bias and variance at the same time:
$$R\left(\hat{\theta}_n\right)=\mathbb{E}\left[\left|\hat{\theta}_n-\theta\right|^2\right]$$
### Confidence Intervals
- Confidence interval of level $1-\alpha$ for $\theta$: Any random (depending on $X_1, \dots,X_n$ ) interval $\mathcal{I}$ whose boundaries do not depend on $\theta$ such that
$$\mathbb{P}_\theta\left[\mathcal{I} \ni^3 \theta\right] \geq 1-\alpha, \quad \forall \theta \in \Theta$$
- Confidence interval of level $1-\alpha$ for $\theta$: Any random interval $\mathcal{I}$ whose boundaries do not depend on $\theta$ such that
$$\lim _{n \rightarrow \infty} \mathbb{P}_\theta[\mathcal{I} \ni \theta] \geq 1-\alpha, \quad \forall \theta \in \Theta$$
### Bounding Methods
Conservative bounds
$$\mathcal{I}_{\text {conserv }}=\left[\bar{R}_n-\frac{q_{\alpha / 2}}{2 \sqrt{n}}, \bar{R}_n+\frac{q_{\alpha / 2}}{2 \sqrt{n}}\right]$$
Solving the quadratic equation for $p$: We solve the equations on both sides to get a solution that looks like this: $\mathcal{I}_{\text {solve }}=\left[p_1, p_2\right]$
$$\bar{R}_n-\frac{q_{\alpha / 2} \sqrt{p(1-p)}}{\sqrt{n}} \leq p \leq \bar{R}_n+\frac{q_{\alpha / 2} \sqrt{p(1-p)}}{\sqrt{n}}$$
Plug in
$$\mathcal{I}_{\text {plug-in }}=\left[\bar{R}_n-\frac{q_{\alpha / 2} \sqrt{\hat{p}(1-\hat{p})}}{\sqrt{n}}, \bar{R}_n+\frac{q_{\alpha / 2} \sqrt{\hat{p}(1-\hat{p})}}{\sqrt{n}}\right]$$

### The Delta Method
Let $(Z_n)_{n\geq1}$ sequence of r.v. that satisfies
$$\sqrt{n}\left(Z_n-\theta\right) \underset{n \rightarrow \infty}{\stackrel{(d)}{\longrightarrow}} N\left(0, \sigma^2\right)$$
for some $\theta \in \mathbb{R}$ and $\sigma^2>0$ (the sequence $\left(Z_n\right)_{n \geq 1}$ is said to be asymptotically normal around $\theta$) . 

=== end-column ===

Let $g: \mathbb{R} \rightarrow \mathbb{R}$ be continuously differentiable at the point $\theta$. Then
- $\left(g\left(Z_n\right)\right)_{n \geq 1}$ is also asymptotically normal around $g(\theta)$
- More precisely
$$\sqrt{n}\left(g\left(Z_n\right)-g(\theta)\right) \underset{n \rightarrow \infty}{\stackrel{(d)}{\longrightarrow}} \mathcal{N}\left(0,\left(g^{\prime}(\theta)\right)^2 \sigma^2\right)$$

---
## Unit 3 - L6 - Measures of Distance Between Probability Distributions

### Total Variation Distance
Distance between two probability measures $\mathbb{P}_\theta$ and $\mathbb{P}_{\theta'}$ 
$$\operatorname{TV}\left(\mathbb{P}_\theta, \mathbb{P}_{\theta^{\prime}}\right)=\max _{A \subset E}\left|\mathbb{P}_\theta(A)-\mathbb{P}_{\theta^{\prime}}(A)\right| .$$
### Discrete TV
If $E$ is discrete $X$ has a PMF $\mathbb{P}_\theta(X=x)=p_\theta(x)$ for all $x \in E$
$$p_\theta(x) \geq 0, \quad \sum_{x \in E} p_\theta(x)=1$$
The total variation distance between $\mathbb{P}_\theta$ and $\mathbb{P}_{\theta'}$ is a simple function of the PMF's $p_\theta$ and $p_{\theta'}$
$$\mathrm{TV}\left(\mathbb{P}_\theta, \mathbb{P}_{\theta^{\prime}}\right)=\frac{1}{2} \sum_{x \in E}\left|p_\theta(x)-p_{\theta^{\prime}}(x)\right|$$
### Continuous TV
In this case the terminology from the discrete case where it uses $p$ now gets replaced by a continuous function $f$
$$\operatorname{TV}\left(\mathbb{P}_\theta, \mathbb{P}_{\theta^{\prime}}\right)=\frac{1}{2} \int\left|f_\theta(x)-f_{\theta^{\prime}}(x)\right| d x$$
### Properties of Total Variation
$$\begin{array}{lr}
\operatorname{TV}\left(\mathbb{P}_\theta, \mathbb{P}_{\theta^{\prime}}\right)=\operatorname{TV}\left(\mathbb{P}_{\theta^{\prime}}, \mathbb{P}_\theta\right) & \text { (symmetric) } \\
\operatorname{TV}\left(\mathbb{P}_\theta, \mathbb{P}_{\theta^{\prime}}\right) \geq 0, \operatorname{TV}\left(\mathbb{P}_{\theta^{\prime}}, \mathbb{P}_{\theta^{\prime}}\right) \leq 1 & \text { (positive) } \\
\text { If } \operatorname{TV}\left(\mathbb{P}_\theta, \mathbb{P}_{\theta^{\prime}}\right)=0 \text { then } \mathbb{P}_\theta=\mathbb{P}_{\theta^{\prime}} & \text { (definite) } \\
\operatorname{TV}\left(\mathbb{P}_\theta, \mathbb{P}_{\theta^{\prime}}\right) \leq \operatorname{TV}\left(\mathbb{P}_\theta, \mathbb{P}_{\theta^{\prime \prime}}\right)+\operatorname{T}\left(\mathbb{P}_{\theta^{\prime \prime}}, \mathbb{P}_{\theta^{\prime}}\right) & \text { (triangle inequality) }
\end{array}$$
These imply that the total variation is a distance between probability distributions

### Kullback-Leibler
It may be difficult or unclear how to build an estimate for your total variation. Because of this you can use other distances to replace total variation. One of the more convenient ones is the Kullback-Leibler divergence

$$\mathrm{KL}\left(\mathbb{P}_\theta, \mathbb{P}_{\theta^{\prime}}\right)= \begin{cases}\sum_{x \in E} p_\theta(x) \log \left(\frac{p_\theta(x)}{p_{\theta^{\prime}}(x)}\right) & \text { if } E \text { is discrete } \\ \int_E f_\theta(x) \log \left(\frac{f_\theta(x)}{f_{\theta^{\prime}}(x)}\right) d x & \text { if } E \text { is continuous }\end{cases}$$

Properties

$\mathrm{KL}\left(\mathbb{P}_\theta, \mathbb{P}_{\theta^{\prime}}\right) \neq \mathrm{KL}\left(\mathbb{P}_{\theta^{\prime}}, \mathbb{P}_\theta\right) \text{ in general}$
$\mathrm{KL}\left(\mathbb{P}_\theta, \mathbb{P}_{\theta^{\prime}}\right) \geq 0$
If $\mathrm{KL}\left(\mathbb{P}_\theta, \mathbb{P}_{\theta^{\prime}}\right)=0$ then $\mathbb{P}_\theta=\mathbb{P}_{\theta^{\prime}}$ (definite)
$\mathrm{KL}\left(\mathbb{P}_\theta, \mathbb{P}_{\theta^{\prime}}\right) \not \leq \mathrm{KL}\left(\mathbb{P}_\theta, \mathbb{P}_{\theta^{\prime \prime}}\right)+\mathrm{KL}\left(\mathbb{P}_{\theta^{\prime \prime}}, \mathbb{P}_{\theta^{\prime}}\right)$ in general

- Not a distance. This is called a divergence
- Asymmetry is the key to our ability to estimate it
$$\theta^* \text { unique minimizer of } \theta \mapsto K L\left(\mathbb{P}_{\theta^*}, \mathbb{P}_\theta\right)$$

### Estimating the KL
$$
\begin{aligned}
\mathrm{KL}\left(\mathbb{P}_{\theta^*}, \mathbb{P}_\theta\right) & =\mathbb{E}_{\theta^*}\left[\log \left(\frac{p_{\theta^*}(X)}{p_\theta(X)}\right)\right] \\
& =\mathbb{E}_{\theta^*}\left[\log p_{\theta^*}(X)\right]-\mathbb{E}_{\theta^*}\left[\log p_\theta(X)\right]
\end{aligned}
$$

### Maximum Likelihood - Discrete Case
Let $\left(E,\left(\mathbb{P}_\theta\right)_{\theta \in \Theta}\right)$ be a statistical model associated with a sample of i.i.d. r.v. $X_1, \ldots, X_n$. Assume that $E$ is discrete (i.e., finite or countable).

The likelihood of the model is the map $L_n$ (or just $L$ ) defined as:
$$
\begin{aligned}
& L_n\quad: \quad E^n \times \Theta \qquad \rightarrow \mathbb{R} \\
& \qquad\quad\left(x_1, \ldots, x_n, \theta\right) \mapsto \mathbb{P}_\theta\left[X_1=x_1, \ldots, X_n=x_n\right] . \\
& \qquad\qquad\qquad\qquad\qquad=\prod_{i=1}^n \mathbb{P}_\theta\left[X_i=x_i\right] \\
&
\end{aligned}
$$
### Maximum Likelihood - Continuous Case
Let $\left(E,\left(\mathbb{P}_\theta\right)_{\theta \in \Theta}\right)$ be a statistical model associated with a sample of i.i.d. r.v. $X_1, \ldots, X_n$. Assume that all the $\mathbb{P}_\theta$ have density $f_\theta$.

The likelihood of the model is the map $L$ defined as:
$$
\begin{aligned}
& L: E^n \times \Theta \quad \rightarrow \mathbb{R} \\
& \left(x_1, \ldots, x_n, \theta\right) \mapsto \prod_{i=1}^n f_\theta\left(x_i\right) . \\
&
\end{aligned}
$$
### Maximum Likelihood Estimator

Let $X_1, \ldots, X_n$ be an i.i.d. sample associated with a statistical model $\left(E,\left(\mathbb{P}_\theta\right)_{\theta \in \Theta}\right)$ and let $L$ be the corresponding likelihood.

Definition
The maximum likelihood estimator of $\theta$ is defined as:
$$
\hat{\theta}_n^{M L E}=\underset{\theta \in \Theta}{\operatorname{argmax}} L\left(X_1, \ldots, X_n, \theta\right),
$$
provided it exists.

Remark (log-likelihood estimator): In practice, we use the fact that
$$
\hat{\theta}_n^{M L E}=\underset{\theta \in \Theta}{\operatorname{argmax}} \log L\left(X_1, \ldots, X_n, \theta\right) .
$$
### Concave and Convex Functions
Definition
A function twice differentiable function $h: \Theta \subset \mathbb{R} \rightarrow \mathbb{R}$ is said to be concave if its second derivative satisfies
$$
h^{\prime \prime}(\theta) \leq 0, \quad \forall \theta \in \Theta
$$

It is said to be strictly concave if the inequality is strict: $h^{\prime \prime}(\theta)<0$. Moreover, $h$ is said to be (strictly) convex if $-h$ is (strictly) concave, i.e. $h^{\prime \prime}(\theta) \geq 0\left(h^{\prime \prime}(\theta)>0\right)$.

### Multivariate Concave Functions
More generally for a multivariate function: $h: \Theta \subset \mathbb{R}^d \rightarrow \mathbb{R}$, $d \geq 2$, define the
gradient vector: $\nabla h(\theta)=\left(\begin{array}{c}\frac{\partial h}{\partial \theta_1}(\theta) \\ \vdots \\ \frac{\partial h_d}{\partial \partial_d}(\theta)\end{array}\right) \in \mathbb{R}^d$
Hessian matrix:
$$
\mathbf{H} h(\theta)=\left(\begin{array}{ccc}
\frac{\partial^2 h}{\partial \theta_1 \partial \theta_1}(\theta) & \cdots & \frac{\partial^2 h}{\partial \theta_1 \partial \theta_d}(\theta) \\
& & \\
\frac{\partial^2 h}{\partial \theta_d \partial \theta_q}(\theta) & \cdots & \frac{\partial^2 h}{\partial \theta_d \partial \theta_d}(\theta)
\end{array}\right) \in \mathbb{R}^{d \times d}
$$
Optimality conditions
Strictly concave functions are easy to maximize: if they have a maximum, then it is unique. It is the unique solution to
$$
h^{\prime}(\theta)=0,
$$
or, in the multivariate case
$$
\nabla h(\partial)=0 \in \mathbb{R}^d
$$
### Consistency of Maximum Likelihood Estimator

Under mild regularity conditions, we have
$$
\hat{\theta}_n^{M L E} \underset{n \rightarrow \infty}{\stackrel{\mathbb{P}}{\longrightarrow}} \theta^*
$$
=== end-column ===

This is because for all $\theta \in \Theta$
$$
\frac{1}{n} \log L\left(X_1, \ldots, X_n, \theta\right) \underset{n \rightarrow \infty}{\stackrel{\mathbb{P}}{\longrightarrow}} \text { "constant" }-K L\left(\mathbb{P}_{\text {O* }}, \mathbb{P}_\theta\right)
$$

Moreover, the minimizer of the right-hand side is $\theta^*$ if the parameter is identifiable

### Covariance
$$\begin{aligned}
\operatorname{Cov}(X, Y): & =\mathbb{E}[(X-\mathbb{E}(X])(Y-\mathbb{E}[Y])] \\
& =\mathbb{E}[X \cdot Y]-\mathbb{E}[X] \mathbb{E}[Y] \\
& =\mathbb{E}[X \cdot(Y-\mathbb{E}[Y])] \\
& =\mathbb{E}[(X-\mathbb{E}[X]) Y]
\end{aligned}$$
Properties
- $\operatorname{Cov}(X, X)=\operatorname{Vor}(X)$
- $\operatorname{Cov}(X, Y)=\operatorname{Cov}(Y, X)$
- If $X$ and $Y$ are independent, then $\operatorname{Cov}(X, Y)=0$

### Covariance Matrix
The covariance matrix of a random vector $X=\left(X^{(1)}, \ldots, X^{(d)}\right)^{\top} \in \mathbb{R}^d$ is given by
$$
\Sigma=\operatorname{Cov}(X)=\mathbb{E}\left[(X-\mathbb{E}(X))(X-\mathbb{E}(X))^{\top}\right]
$$

- This is a matrix of size $d x d$
- The term on the $i$ th row and $j$ th column is
$$
\Sigma_{i j}=\mathbb{E}\left[\left(X^{(i)}-\mathbb{E}\left(X^{(i)}\right)\right)\left(X^{(j)}-\mathbb{E}\left(X^{(j)}\right)\right)\right]=\operatorname{Cov}\left(X^{(i)}, X^{(j)}\right)
$$
### Multivariate Gaussian Distribution

More generally, a Gaussian vector ${ }^3 X \in \mathbb{R}^d$, is completely determined by its expected value and $\mathbb{E}[X]=\mu \in \mathbb{R}^d$ covariance matrix $\Sigma$. We write
$$
X \sim \mathcal{N}_d(\mu, \Sigma)
$$

It has pdf over $\mathbb{R}^d$ given by:
$$
=\frac{1}{(2 \pi \operatorname{det}(\Sigma))^{d / 2}} \exp \left(-\frac{1}{2}(x-\mu)^{\top} \Sigma^{-1}(x-\mu)\right)
$$
### Fisher Information
Define the log-likelihood for one observation as:
$$
\ell(\theta)=\log L_1(X, \theta), \quad \theta \in \Theta \subset \mathbb{R}^d
$$

Assume that $\ell$ is a.s. twice differentiable. Under some regularity conditions, the Fisher information of the statistical model is defined as:
$$
I(\theta)=\mathbb{E}\left[\nabla \ell(\theta) \nabla \ell(\theta)^{\top}\right]-\mathbb{E}[\nabla \ell(\theta)] \mathbb{E}[\nabla \ell(\theta)]^{\top}=-\mathbb{E}[\mathbf{H} \ell(\theta)]
$$

If $\Theta \subset \mathbb{R}$, we get:
$$
I(\theta)=\operatorname{var}\left[\ell^{\prime}(\theta)\right]=-\mathbb{E}\left[\ell^{\prime \prime}(\theta)\right]
$$
---
## Other Notes
### Second Moment of Common Distributions
Poisson
$$
\mathbb{E}[X]=\frac{1}{\lambda}, \quad \mathbb{E}\left[X^2\right]=\frac{2}{\lambda^2}, \quad \operatorname{Var}(X)=\frac{1}{\lambda^2}
$$
Exponential
$$
\mathbb{E}[Y]=\mu, \quad \mathbb{E}\left[Y^2\right]=\mu+\mu^2, \quad \operatorname{Var}(Y)=\mu
$$
### $\chi^2$ Distribution

If $Z_1, \ldots, Z_k$ are independent, standard normal random variables, then the sum of their squares,
$$
Q=\sum_{i=1}^k Z_i^2,
$$
is distributed according to the chi-squared distribution with $k$ degrees of freedom. This is usually denoted as
$$
Q \sim \chi^2(k) \text { or } Q \sim \chi_k^2 .
$$

The distribution PDF has the following structure
$$\frac{1}{2^{k / 2} \Gamma(k / 2)} x^{k / 2-1} e^{-x / 2}$$
Where: 
- $k$: Degrees of freedom
- $\Gamma()$: Gamma function
- $E[X]= k$
- $var(X) = 2k$

Generally used for hypothesis testing.

### Keep in Mind
- **IDENTIFIABLE**: To know that a parameter is identifiable, just check that every possible parameter value always yields a different distribution. Don't just use the fact that $E[X]$ has the parameter in it.
- **LAW OF LARGE NUMBERS**: As the sample size increases, the sample mean gets closer to the actual mean.
$$
\bar{X}_n \stackrel{\mathrm{P}}{\rightarrow} \mathbb{E}\left[X_1\right] .
$$
- **CENTRAL LIMIT THEOREM**: As the sample size increases, the resulting distribution tends to take the shape of a normal distribution
$$
\sqrt{n}\left(\bar{X}_n-\mathbb{E}\left[X_1\right]\right) \stackrel{(\mathrm{D})}{\longrightarrow} \mathcal{N}(0, V)
$$
- **EXPONENTIAL IS MEMORYLESS**
- **CONTINUOUS MAPPING THEOREM**: We have a sequence of random variables that converge to their true value
$$X_n\rightarrow X$$
   If you apply a function to the sequence, or add or multiply the sequences together, you get the same result as manipulating the real values.
$$\begin{aligned}
& X_n \stackrel{\mathrm{P}}{\rightarrow} X \Rightarrow g\left(X_n\right) \stackrel{\mathrm{P}}{\rightarrow} g(X) \\
& X_n \stackrel{\text { a.s. }}{\rightarrow} X \Rightarrow g\left(X_n\right) \stackrel{\text { a.s. }}{\rightarrow} g(X) \\
& X_n \stackrel{d}{\rightarrow} X \Rightarrow g\left(X_n\right) \stackrel{d}{\rightarrow} g(X)
\end{aligned}$$
Things to try and research
- Total variation distance: Distance between two probability measures
- Kullback-leibler: More convenient alternative to a total variation distance. Consists of a divergence
- $\theta^*$ is the true parameter
- Maximum likelihood principle: Gets the max value of the kullback leibler formula to get the best parameter set
- Maximum likelihood estimator: 
$$
\hat{\theta}_n^{M L E}=\underset{\theta \in \Theta}{\operatorname{argmax}} L\left(X_1, \ldots, X_n, \theta\right),
$$
- Concave and convex:
	- Concave: $h^{\prime \prime}(\theta) \leq 0$
	- Strictly concave : $h^{\prime \prime}(\theta) < 0$
	- Strictly convex: $-h$ (the inverse of the function) is strictly concave

- Fisher information
- Generalized method of moments
- M-estimators
- Test level: The value of $\alpha$ chosen for a given test
- If our data is too small, we cannot use slutsky or CLT, both supporting the Wald test
- T distribution: For a positive integer $k$, Student's $T$ distribution with $k$ degrees of freedom (denoted by $t_k$ ) is the law of the random variable
$$
\frac{Z}{\sqrt{V / k}}
$$
	where $Z \sim \mathcal{N}(0,1)$ and $V \sim \chi_k^2$ are independent r.v.
- Bonferroni method: Instead of rejecting tests with a level of $\alpha$ we do it with a level of $\alpha/N$ that scales with the number of samples.
- Donsker's Theorem: If $F$ is continuous, where $\mathbb{B}$ is a Brownian bridge on $[0,1]$.
$$
\sqrt{n} \sup _{t \in \mathbb{R}}\left|F_n(t)-F(t)\right| \stackrel{(d)}{\underset{n \rightarrow \infty}{\longrightarrow}} \sup _{0 \leq t \leq 1}|\mathbb{B}(t)|,
$$
- Kolmogorov-smirnov
- Quantile quantile plots
- GOF tests: Goodness of fit
- Beta distribution
- Homoscedastic
- Asymptotic and asymptotic levels ($\lambda$)
- Canonical link function


- 




=== end-multi-column

