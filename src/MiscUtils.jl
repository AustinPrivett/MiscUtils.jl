"Miscellaneous utilities that are generally useful"
module MiscUtils

export @def

"""
Insert source code macro.

Produces another macro that you may use to do the insertion.

Easy code reuse; I use for type definitions with shared fields (like concrete type
inheritance).

Copied from `@def` in Optim.jl.
<https://discourse.julialang.org/t/some-clarifications-and-best-practices-on-the-oo-model-in-julia/693/8>

**Warning** Can lead to spaghetti code a la FORTRAN GOTO if used poorly.
"""

macro def(name, definition)
  esc(quote
    macro $name()
      esc($(Expr(:quote, definition)))
    end
  end)
end

end # module
