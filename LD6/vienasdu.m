function [a, b] = vienasdu(x)

a = sin(x);

if nargout == 2
    b = cos(x);
end

end