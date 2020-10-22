function  v_ = QuanternionRotation(theta,v,varargin)

N = 3; % Vector size

% Evaluation in order to avoid problems with multiplications
if size(v,1) ~= N
    v = v';
end

% Evalutaion whether we will use a q to rotation or an angle

if ~isempty(varargin)
    q = varargin{1};
    p0 = q(1);
    p = q(2:4);
    %     q0 = q(1);
    %     q1 = q(2);
    %     q2 = q(3);
    %     q3 = q(4);
    %
    %     r11 = 1-2*q2^2-2*q3^2;
    %     r12 = 2*(q1*q2 + q0*q3);
    %     r13 = 2*(q1*q3-q0*q2);  
else
    theta_ = theta/2;
    p0 = cosd(theta_);
    p = sind(theta_)*ones(1,N)';
    
    
end
vp1 = VectorialProduct(p,v);
vp2 = VectorialProduct(p,vp1);
v_ = [  0; v + 2*p0*vp1 + 2*vp2];




end