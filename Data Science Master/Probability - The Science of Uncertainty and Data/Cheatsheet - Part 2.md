=== start-multi-column: First part
```multi-column-settings  
number of columns: 4
Largest Column: standard  
shadow: off
border: off
```


## Fundamentals of Statistics
### Maximum Likelihood Estimator
- Step 1: Multiply PMFs or PDFs
$$\begin{aligned}
& =\prod_{i=1}^n f_\theta(x_i) \qquad continuous \\
& =\prod_{i=1}^n \mathbb{P}_\theta\left[X_i=x_i\right] \qquad discreet \\
\end{aligned}$$
- Step 2: Apply the log and turn the product into a sum to get the log likelihood
$$\ell(\theta) = log\left(\prod_{i=1}^n f_\theta(x_i) \right) = \sum_{i=1}^n log(f_\theta(x_i))$$
- Step 3: Apply the first derivative to log likelihood and equal it to zero to get the maximum. Try to solve for the parameters $\theta$.
$$\frac{d\ell}{d\theta} = 0$$
Note:
For Bernoulli, where the number of probabilities in the PMF is really limited, don't be tempted to list all of the elements in the product. You need to turn the PMF into a single expression:
$$p^x(1-p)^{x-1}$$
### Consistency
$$
\tilde{\theta} \underset{n \rightarrow \infty}{\stackrel{\mathbf{P}}{\longrightarrow}} C
$$
Apply the limit to the estimator. You will end up with an expression in terms of the expected value generally. For example
$$
\tilde{\theta} = \left(\bar{Y}_n\right)^{\frac{1}{\tau}}
$$
$$
lim(\tilde{\theta}) = lim\left(\bar{Y}_n\right)^{\frac{1}{\tau}} = lim(\bar{Y}_n)^{1/\tau} = E[Y]^{1/\tau}
$$

### Asymptotic Variance
$$V = \frac{1}{I(\theta)}$$
- Can also be calculated using the Delta method
- Once solved, if the formula contains an $n$, set $n=1$
- Fisher information: $I(\theta)$
$$
I(\theta)=\operatorname{var}\left[\ell^{\prime}(\theta)\right]=-\mathbb{E}\left[\ell^{\prime \prime}(\theta)\right]
$$
### Q-Q Plots
- Informal way of doing goodness of fit testing
- Steps for building it:
	1. Reorder the samples in increasing order
	2. Build point pairs with the following structure: $\left(F^{-1}\left(\frac{i}{n}\right), X_{(i)}\right)$. $F^{-1}$ consists of the inverse of the CDF.
	3. We plot the $X_i$ (the samples) vs. the inverse of the proposed distribution fed on $\frac{i}{n}$. 
 - Patterns:
![[Pasted image 20231105130940.png]] 


### Hypothesis Testing
$$
\psi=\mathbb{I}\{R\} \qquad \psi \in\{0,1\} \qquad \psi \text{ is a test}
$$
- It can be written as an indicator that has a value of 1 when $R$ occurs. For example:
$$
\begin{aligned}
& H_0: \quad \mu \leq 30 \\
& H_1: \quad \mu>30
\end{aligned} \quad \psi=\mathbb{I}\left\{\bar{X}_n>C\right\}
$$
- Power function: Takes a value of $\psi$ and returns the probability of making a type 1 error ($\psi = 1$). 
	- We make sure the type 1 error is less than $\alpha$ (false positive)
	- Minimize the type 2 error (false negative)
	- $\alpha$ is the "level" of the test
 - Level:
	 - Level of 5% means that at most 5% of tests will make an error of type I

### Wald Test
$$
W:=\frac{\hat{\theta}-\theta_0}{\sqrt{\widehat{\operatorname{var}}(\hat{\theta})}}
$$
But remember that the estimated variance can also be approximated as the true variance of the distribution divided by the number of samples. For example, for Bernoulli
$$
\widehat{\operatorname{var}}(\hat{p})=\frac{var(p)}{n}=\frac{\hat{p}(1-\hat{p})}{n}
$$

### Confidence Intervals
$$
\mathcal{I}_{\text {conserv }}=\left[\bar{R}_n \pm \frac{q_{\alpha/2}}{2 \sqrt{n}}\right]
$$

### P-value
- Specifies the amount of type-1 error (false positive) in your experiment
- The smallest asymptotic level ($\alpha$) at which the test $\psi$ rejects the null hypothesis

### T-distribution
$$\frac{Z}{\sqrt{V / d}} \quad \text { where } \quad Z \sim \mathcal{N}(0,1) \text { indep } V \sim \chi_d^2$$



## Machine Learning with Python




=== end-multi-column

