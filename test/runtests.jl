using Tango
using Test


@testset "Numerical derivative" begin
    f(x) = 2x + 1
    g(x) = x^3 - x

    @test numderiv(f, 3, 1) == 2  # Using an increment of 1
    @test numderiv(g, 2) ≈ 11 atol=0.01  # Using ≈ for approximate equality and specifying the tolerance
end


@testset "Tangents" begin
    f(x) = 2x +1
    g(x) = x^2

    @test tangent(f, 1)(2) ≈ f(2)
    @test tangent(g, 0)(3) ≈ 0 atol=0.01

end