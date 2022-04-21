abstract type AbstractCFDateTime{_hasyear0} <: Dates.TimeType
end

const RegTime = Union{Dates.Millisecond,Dates.Second,Dates.Minute,Dates.Hour,Dates.Day}


for (CFDateTime,calendar) in [(:DateTimeStandard,"standard"),
                              (:DateTimeJulian,"julian"),
                              (:DateTimeProlepticGregorian,"prolepticgregorian"),
                              (:DateTimeAllLeap,"allleap"),
                              (:DateTimeNoLeap,"noleap"),
                              (:DateTime360Day,"360day")]
    @eval begin
        struct $CFDateTime{_hasyear0} <: AbstractCFDateTime{_hasyear0}
            instant::UTInstant{Millisecond}
#            $CFDateTime(instant::UTInstant{Millisecond}) = new{_hasyear0}(instant)
        end
    end
end
