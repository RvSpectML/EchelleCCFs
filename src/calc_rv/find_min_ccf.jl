
"""  Functor to estimate RV based on velocity at minimum of CCF.
Warning:  Since a discrete grid of velocities are evaluated, this should only be used in limited situations (e.g., an initial guess). """
struct MeasureRvFromMinCCF <: AbstractMeasureRvFromCCF
end

function (mrv::MeasureRvFromMinCCF)(vels::A1, ccf::A2 ) where {T1<:Real, A1<:AbstractArray{T1,1}, T2<:Real, A2<:AbstractArray{T2,1} }
    idx_min_ccf = findmin(ccf)[2]
    vels_min_ccf = vels[idx_min_ccf]
    return vels_min_ccf
end
