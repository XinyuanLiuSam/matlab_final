function valid = isValidElementNumber(x)
    valid = isnumeric(x) && isscalar(x) && x == fix(x) && x >= 1 && x <= 118;
end
