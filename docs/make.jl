using MyExample
using Documenter

DocMeta.setdocmeta!(MyExample, :DocTestSetup, :(using MyExample); recursive=true)

makedocs(;
    modules=[MyExample],
    authors="Martin Andersson",
    repo="https://github.com/MartinDAndersson/MyExample.jl/blob/{commit}{path}#{line}",
    sitename="MyExample.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://MartinDAndersson.github.io/MyExample.jl",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/MartinDAndersson/MyExample.jl",
)
