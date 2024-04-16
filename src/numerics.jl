export numderiv
export tangent

"""
    numderiv(f, x₀, ϵ=1e-7)

Calculate the numerical derivative of `f(x)` at `x₀` using a forward difference approximation.

# Arguments
- `f`: function for which the derivative is calculated
- `x₀`: point at which the derivative is evaluated
- `ϵ`: step size (default is `1e-7`)

# Returns
- Numerical derivative of `f` at `x₀`.

# Examples

blablabla

"""
function numderiv(f, x₀, ϵ=1e-7)
    df = f(x₀+ϵ) - f(x₀-ϵ)
    return df / (2ϵ)
end

"""
    function tangent(f, x₀, ϵ = 1e-7)

## Examples
blablabla
"""
function tangent(f, x₀, ϵ = 1e-7)
    slope = numderiv(f, x₀, ϵ)
    r(x) = slope * (x-x₀) + f(x₀)
    return r
end
