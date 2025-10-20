#import "@local/simeioseis:1.0.0": simeioseis

#show: simeioseis.with(
  title: "Calculus I — Lecture Notes",
  author: "Thrasos Charalambous",
)

= Limits
The *limit* of a function $f(x)$ as $x$ approaches $a$ is written as
$lim_(x -> a) f(x)$ and describes the value that $f(x)$ tends to.

== Example
Consider $f(x) = (x^2 - 1)/(x - 1)$.
We can simplify:
$$ f(x) = \frac{(x-1)(x+1)}{x-1} = x + 1. $$
Hence, $lim_(x -> 1) f(x) = 2$.

= Derivatives
The derivative of $f$ at $x$ is
$$ f'(x) = lim_(h -> 0) \frac{f(x + h) - f(x)}{h}. $$

== Power Rule
If $f(x) = x^n$, then $f'(x) = n x^{n-1}$.

= Integrals
The *indefinite integral* is the inverse of differentiation:
$$ \int f'(x)\,dx = f(x) + C. $$

== Example
$$ \int 2x\,dx = x^2 + C. $$

= Summary
- Limits describe behavior near a point.  
- Derivatives measure instantaneous change.  
- Integrals compute accumulated change.

#pagebreak()

#text(0.9em, weight: 600)[End of Notes]