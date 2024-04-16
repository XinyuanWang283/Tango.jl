using Tango
using Test


@testset "Numerical derivative" begin
    f(x) = 2x + 1
    g(x) = x^3 - x

    @test numderiv(f, 3, 1) == 2  # Using an increment of 1
    @test numderiv(g, 2) ≈ 11 atol=0.01  # Using ≈ for approximate equality and specifying the tolerance
end

