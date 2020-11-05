function  v_ = QuanternionRotation(v,q)

N = 3; % Vector size

% Evaluation in order to avoid problems with multiplications
if size(v,1) ~= N
    v = v';
end

% Evalutaion whether we will use a q to rotation or an angle

p0 = q(1);
p = q(2:4);

vp1 = VectorialProduct(p,v);
vp2 = VectorialProduct(p,vp1);
v_ = [  0; v + 2*p0*vp1 + 2*vp2];

end