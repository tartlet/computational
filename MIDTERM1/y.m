function value = y(t)
if t >= 0
value = 3.*(1-exp(-6.*t).*(cos(8.*t)+(3/4).*sin(8.*t)));
end