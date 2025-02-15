# This file is a part of BAT.jl, licensed under the MIT License (MIT).


bat_default(::typeof(bat_transform), ::Val{:algorithm}, ::NoDensityTransform, ::AnyDensityLike) = DensityIdentityTransform()
bat_default(::typeof(bat_transform), ::Val{:algorithm}, ::NoDensityTransform, ::AbstractPosteriorDensity) = DensityIdentityTransform()
bat_default(::typeof(bat_transform), ::Val{:algorithm}, ::NoDensityTransform, ::DensityWithDiff{<:Any,<:AbstractPosteriorDensity}) = DensityIdentityTransform()

bat_default(::typeof(bat_transform), ::Val{:algorithm}, ::PriorToUniform, ::AbstractPosteriorDensity) = PriorSubstitution()
bat_default(::typeof(bat_transform), ::Val{:algorithm}, ::PriorToUniform, ::DensityWithDiff{<:Any,<:AbstractPosteriorDensity}) = PriorSubstitution()
bat_default(::typeof(bat_transform), ::Val{:algorithm}, ::PriorToUniform, ::DistributionDensity) = PriorSubstitution()
bat_default(::typeof(bat_transform), ::Val{:algorithm}, ::PriorToUniform, ::RenormalizedDensity{<:DistributionDensity}) = PriorSubstitution()
bat_default(::typeof(bat_transform), ::Val{:algorithm}, ::PriorToUniform, ::SampledDensity{<:DistributionDensity}) = PriorSubstitution()
bat_default(::typeof(bat_transform), ::Val{:algorithm}, ::PriorToUniform, ::DistributionDensity{<:StandardUniformDist}) = DensityIdentityTransform()

bat_default(::typeof(bat_transform), ::Val{:algorithm}, ::PriorToGaussian, ::AbstractPosteriorDensity) = PriorSubstitution()
bat_default(::typeof(bat_transform), ::Val{:algorithm}, ::PriorToGaussian, ::DensityWithDiff{<:Any,<:AbstractPosteriorDensity}) = PriorSubstitution()
bat_default(::typeof(bat_transform), ::Val{:algorithm}, ::PriorToGaussian, ::DistributionDensity) = PriorSubstitution()
bat_default(::typeof(bat_transform), ::Val{:algorithm}, ::PriorToGaussian, ::RenormalizedDensity{<:DistributionDensity}) = PriorSubstitution()
bat_default(::typeof(bat_transform), ::Val{:algorithm}, ::PriorToGaussian, ::SampledDensity) = PriorSubstitution()
bat_default(::typeof(bat_transform), ::Val{:algorithm}, ::PriorToGaussian, ::DistributionDensity{<:StandardNormalDist}) = DensityIdentityTransform()


# ToDo: Add ToUnitBounded and ToUnbounded
