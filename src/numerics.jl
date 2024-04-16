export numderiv




function numderiv(f, x₀, ϵ=1e-7)

    df = f(x₀+ϵ) - f(x₀)
    return df/ϵ

end


