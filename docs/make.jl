using Tango
using Documenter

DocMeta.setdocmeta!(Tango, :DocTestSetup, :(using Tango); recursive=true)

makedocs(;
    modules=[Tango],
    authors="XinyuanWang283 <xinyuan.wang1999@outlook.com> and contributors",
    sitename="Tango.jl",
    format=Documenter.HTML(;
        canonical="https://XinyuanWang283.github.io/Tango.jl",
        edit_link="main",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/XinyuanWang283/Tango.jl",
    devbranch="main",
)
