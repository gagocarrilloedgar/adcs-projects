
%% This calculates
% | i   j   k  |
% | a1  b1  c1 |
% | a2  b2  c2 |

function v = VectorialProduct(x,y)

% Allocation for clearer code
a1 = x(1);
b1 = x(2);
c1 = x(3);

a2 = y(1);
b2 = y(2);
c2 = y(3);

%% Result of the vectorial product
v = [ b1*c2 - b2*c1;
      c1*a2 - a1*c2;
      a1*b2 - b1*a2];
end