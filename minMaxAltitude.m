function limitAlts = minMaxAltitude(dsm)

minAlt = realmax('single');
maxAlt = dsm(1,1);
for m = 1:size(dsm,1)
    for n = 1:size(dsm,2)
        if (dsm(m,n) ~= -10000) && dsm(m,n) < minAlt
            minAlt = dsm(m,n);
        end
        if dsm(m,n) > maxAlt
            maxAlt = dsm(m,n);
        end
    end
end

limitAlts = [minAlt, maxAlt]

end