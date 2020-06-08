# Calculator

A calculator that can do mathematical differentiation of polynomials.

## How do I differentiate polynomials?

All you need are the Power rule and the basic differentiation rules.

Let's differentiate `3x^2 - 2x + 1` for example.

All you do is take the exponent, multiply it by the coefficient (the number in front of the x), and decrease the exponent by 1.

So in this case the derivative is `6x - 2`.

## Usage

You need Elixir. Clone the repo, then run: `iex -S mix`

The only public function is `Calculator.calculate/1`. The argument is a list of coefficients. The return value is a list representing the coefficients of the derivative.

## Example

```
$ iex -S mix
```

    Erlang/OTP 23 [erts-11.0] [source] [64-bit] [smp:8:8] [ds:8:8:10] [async-threads:1] [hipe] [dtrace]

    Compiling 1 file (.ex)
    Generated calculator app
    Interactive Elixir (1.10.3) - press Ctrl+C to exit (type h() ENTER for help)

      iex> Calculator.calculate([3,2,1])
      [6, 2]
      
      iex> Calculator.calculate([4,3,2,1])
      [12, 6, 2]
      
      iex> Calculator.calculate([4,3,0,1])
      [12, 6]
