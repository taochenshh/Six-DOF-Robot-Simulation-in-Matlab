clear all
clc;
close all;
a3=-180/180*pi;
b3=70/180*pi;
theta1=0;
theta2=0;
theta_3=linspace(a3,b3,50)';
theta4=0;
theta5=0;
theta6=0;
workspace_x=[];
workspace_y=[];
workspace_z=[];
for k=1:length(theta_3)
       theta3=theta_3(k);
x=0.92*cos(theta1)*cos(theta2)-0.1*sin(theta1)-...
    0.308*cos(theta5)*(cos(theta1)*cos(theta2)*sin(theta3)+...
    cos(theta1)*cos(theta3)*sin(theta2))-...
    0.308*sin(theta5)*(sin(theta1)*sin(theta4)-...
    1.0*cos(theta4)*(cos(theta1)*sin(theta2)*sin(theta3)-...
    1.0*cos(theta1)*cos(theta2)*cos(theta3)))-...
    0.117*cos(theta1)*sin(theta2)*sin(theta3)+...
    0.117*cos(theta1)*cos(theta2)*cos(theta3)-...
    0.722*cos(theta1)*cos(theta2)*sin(theta3) -...
    0.722*cos(theta1)*cos(theta3)*sin(theta2); %workspace_x=vpa(T6(1,4),3)
workspace_x=[workspace_x;x];
y=0.1*cos(theta1) + 0.92*cos(theta2)*sin(theta1) +...
    0.308*sin(theta5)*(cos(theta1)*sin(theta4) + ...
    cos(theta4)*(sin(theta1)*sin(theta2)*sin(theta3) - ...
    1.0*cos(theta2)*cos(theta3)*sin(theta1))) - ...
    0.308*cos(theta5)*(cos(theta2)*sin(theta1)*sin(theta3) +...
    cos(theta3)*sin(theta1)*sin(theta2)) -...
    0.722*cos(theta2)*sin(theta1)*sin(theta3) -...
    0.722*cos(theta3)*sin(theta1)*sin(theta2) - ...
    0.117*sin(theta1)*sin(theta2)*sin(theta3) +...
    0.117*cos(theta2)*cos(theta3)*sin(theta1); %workspace_y=vpa(T6(2,4),3)
workspace_y=[workspace_y;y];
z=0.722*sin(theta2)*sin(theta3) - 0.722*cos(theta2)*cos(theta3)-...
    0.117*cos(theta2)*sin(theta3) - 0.117*cos(theta3)*sin(theta2) -...
    0.92*sin(theta2) - 0.308*cos(theta5)*(cos(theta2)*cos(theta3) -...
    1.0*sin(theta2)*sin(theta3)) + ...
    0.308*cos(theta4)*sin(theta5)*(cos(theta2)*sin(theta3) +...
    cos(theta3)*sin(theta2)); %workspace_z=vpa(T6(3,4),3)
workspace_z=[workspace_z;z];
end
plot3(workspace_x,workspace_y,workspace_z);
grid on;
title('第三关节转动,其余关节固定');