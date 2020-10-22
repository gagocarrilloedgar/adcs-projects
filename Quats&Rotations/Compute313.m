

function R = Compute313(psi,theta,phi)

R = [cosd(phi)*cosd(psi)-sind(phi)*cosd(theta)*sind(psi) sind(phi)*cosd(psi)+cosd(phi)*cosd(theta)*sind(psi) sind(theta)*sind(psi);
    -cosd(phi)*cosd(psi)-sind(phi)*cosd(theta)*cosd(psi) -sind(phi)*sind(psi)+cosd(phi)*cosd(theta)*cosd(psi) sind(theta)*cos(psi);
    sind(theta)*sind(phi) -cosd(phi)*sind(theta) cosd(theta)];
end

