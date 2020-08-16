function out = fy(t)
    if(t > 0.008856)
        out = t^(1/3);
    else
        out = 7.787*t+16/116;
    end
end