export numderiv
export tangent




function numderiv(f, x₀, ϵ=1e-7)

    df = f(x₀+ϵ) - f(x₀)
    return df/ϵ

end

function tangent(f, x₀, ϵ=1e-7)
    slope = numderiv(f, x₀, ϵ)
    r(x) = slope*(x - x₀) + f(x₀)
    return r
end
