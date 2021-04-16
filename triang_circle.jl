### A Pluto.jl notebook ###
# v0.14.2

using Markdown
using InteractiveUtils

# This Pluto notebook uses @bind for interactivity. When running this notebook outside of Pluto, the following 'mock version' of @bind gives bound variables a default value (instead of an error).
macro bind(def, element)
    quote
        local el = $(esc(element))
        global $(esc(def)) = Core.applicable(Base.get, el) ? Base.get(el) : missing
        el
    end
end

# ╔═╡ 12a6dc11-0856-43b7-8460-09fb2c28e27b
begin
    import Pkg
    Pkg.activate(mktempdir())
	Pkg.add("PlutoUI")
    using Plots, PlutoUI
end

# ╔═╡ 09a781eb-a30f-468d-a067-dfa48c4c0068
md"# Trigonometric dance"

# ╔═╡ 9c31c3fd-354d-4a98-802a-61962e16ae9d
md"""
Triangles and circles might not to appear to get along. Triangles are full of straight lines and sharp angles. Circles bendy and are smooth. But Trigonometry is the music that allows them to dance together, despite their apparent differences.
"""

# ╔═╡ 0865f3d4-9e25-11eb-1fd0-0104f43e7534
side_opposite(angle_in_rad) = sin(angle_in_rad)

# ╔═╡ bde04203-706d-4ed9-9915-2584783246be
md"""
parametric version of cos of radian
"""

# ╔═╡ 0d8618b9-be99-40a8-8151-95bbe8abca21
side_adjacent(angle_in_rad) = cos(angle_in_rad)

# ╔═╡ 3edef3a8-a1fb-42bf-9459-1db16b303930
@bind n Slider(0.000 : 0.001: 2π)

# ╔═╡ c868ec19-5172-4223-b876-2645e1eac057
n

# ╔═╡ fb57b26f-5f5e-481c-8cab-627e7de2b468
plot(side_adjacent, side_opposite, 0, n, aspect_ratio=1,xlims=(-1.50, 1.50), ylims=(-1.50,1.50))

# ╔═╡ 7905c9b2-299c-49df-986d-399c8e5993e5
cos(n)

# ╔═╡ a9f208f0-15e2-4ab4-adda-d9cc49300cb5
sin(n)

# ╔═╡ 3a0d9ec7-6a8c-47d5-940c-fbd2c5003a3c
plot!([0,cos(n)],[0,0])

# ╔═╡ 9fcf0f7a-5f11-4497-93f5-11bdd694f4c1
plot!([cos(n),cos(n)],[0,sin(n)])

# ╔═╡ 8c330e74-f42c-4857-8e29-483b05f9d861
plot!([0,cos(n)],[0,sin(n)])

# ╔═╡ Cell order:
# ╟─09a781eb-a30f-468d-a067-dfa48c4c0068
# ╠═9c31c3fd-354d-4a98-802a-61962e16ae9d
# ╠═12a6dc11-0856-43b7-8460-09fb2c28e27b
# ╠═c868ec19-5172-4223-b876-2645e1eac057
# ╠═0865f3d4-9e25-11eb-1fd0-0104f43e7534
# ╟─bde04203-706d-4ed9-9915-2584783246be
# ╠═0d8618b9-be99-40a8-8151-95bbe8abca21
# ╠═fb57b26f-5f5e-481c-8cab-627e7de2b468
# ╠═7905c9b2-299c-49df-986d-399c8e5993e5
# ╠═a9f208f0-15e2-4ab4-adda-d9cc49300cb5
# ╠═3a0d9ec7-6a8c-47d5-940c-fbd2c5003a3c
# ╠═9fcf0f7a-5f11-4497-93f5-11bdd694f4c1
# ╠═3edef3a8-a1fb-42bf-9459-1db16b303930
# ╠═8c330e74-f42c-4857-8e29-483b05f9d861
