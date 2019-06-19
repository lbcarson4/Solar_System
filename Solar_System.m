% Solar System Start
% variables
% x, y, z position of stars/planets
% x, y, z velocities of stars/planets
% x, y, z acclerations of stars/planets
clear;

%Load in the excel file for use in the program
fileName = 'SSD1.xlsx';
input = input('Choose a Solar System Setup: 1, 2, 3, or 4: ');

% code for choosing solar system setup
% this is also where you will specifiy what data in the excel file is being
% read in.
% The data should be read in as mass, x-z positions, x-z velocities,
% x-z accelerations and the radius of the planet horizontally across for each
% planet.
% You can also specifiy the name of what body you are modeling as well
if input == 1
    planets = xlsread(fileName,1,'A2:L10');
elseif input == 2
    planets = xlsread(fileName,2,'A2:L10');
elseif input == 3
    planets = xlsread(fileName,3,'A2:L10');
elseif input == 4
    planets = xlsread(fileName,4,'A2:L10');
end

% code for the figure to display the solar system
figh = figure(3);
pos = [0 0 1920 1080];
set(figh,'position',pos);
clf;
grid on;
hold on;

% modify the axies as the needs of the program dictact
axis([-1*10^6 1*10^6 -1*10^6 1*10^6 -1*10^6 1*10^6]);

% menu for selecting how many planets you want in the solar system (Max 10)
nop = menu('Choose how many planets you want','1','2','3','4','5','6','7','8','9','10');

% creates the markers for each planet
if (nop == 1)
    h = line('color','r','marker','.','markersize',20);
    %legend('Body 1');
elseif (nop == 2)
    h = line('color','r','marker','.','markersize',20);
    h2= line('color','y','marker','.','markersize',20);
    %legend('Body 1', 'Body 2');
elseif (nop == 3)
    h = line('color','r','marker','.','markersize',20);
    h2= line('color','y','marker','.','markersize',20);
    h3= line('color','b','marker','.','markersize',20);
    %legend('Body 1','Body 2', 'Body 3');
elseif (nop == 4)
    h = line('color','r','marker','.','markersize',20);
    h2= line('color','y','marker','.','markersize',20);
    h3= line('color','b','marker','.','markersize',20);
    h4= line('color','m','marker','.','markersize',20);
    %legend('Body 1','Body 2', 'Body 3', 'Body 4');
elseif (nop == 5)
    h = line('color','r','marker','.','markersize',20);
    h2= line('color','y','marker','.','markersize',20);
    h3= line('color','b','marker','.','markersize',20);
    h4= line('color','m','marker','.','markersize',20);
    h5= line('color','g','marker','.','markersize',20);
    %legend('Body 1','Body 2', 'Body 3', 'Body 4', 'Body 5');
elseif (nop == 6)
    h = line('color','r','marker','.','markersize',20);
    h2= line('color','y','marker','.','markersize',20);
    h3= line('color','b','marker','.','markersize',20);
    h4= line('color','m','marker','.','markersize',20);
    h5= line('color','g','marker','.','markersize',20);
    h6= line('color','c','marker','.','markersize',20);
    %legend('Body 1','Body 2', 'Body 3', 'Body 4', 'Body 5', 'Body 6');
elseif (nop == 7)
    h = line('color','r','marker','.','markersize',20);
    h2= line('color','y','marker','.','markersize',20);
    h3= line('color','b','marker','.','markersize',20);
    h4= line('color','m','marker','.','markersize',20);
    h5= line('color','g','marker','.','markersize',20);
    h6= line('color','c','marker','.','markersize',20);
    h7= line('color','k','marker','.','markersize',20);
    %legend('Body 1','Body 2', 'Body 3', 'Body 4', 'Body 5', 'Body 6', 'Body 7');
elseif (nop == 8)
    h = line('color','r','marker','.','markersize',20);
    h2= line('color','y','marker','.','markersize',20);
    h3= line('color','b','marker','.','markersize',20);
    h4= line('color','m','marker','.','markersize',20);
    h5= line('color','g','marker','.','markersize',20);
    h6= line('color','c','marker','.','markersize',20);
    h7= line('color','k','marker','.','markersize',20);
    h8= line('color',[.25 .25 .25],'marker','.','markersize',20);
    %legend('Body 1','Body 2', 'Body 3', 'Body 4', 'Body 5', 'Body 6', 'Body 7', 'Body 8');
elseif (nop == 9)
    h = line('color','r','marker','.','markersize',20);
    h2= line('color','y','marker','.','markersize',20);
    h3= line('color','b','marker','.','markersize',20);
    h4= line('color','m','marker','.','markersize',20);
    h5= line('color','g','marker','.','markersize',20);
    h6= line('color','c','marker','.','markersize',20);
    h7= line('color','k','marker','.','markersize',20);
    h8= line('color',[.25 .25 .25],'marker','.','markersize',20);
    h9= line('color',[.5 .5 .5],'marker','.','markersize',20);
    %legend('Body 1','Body 2', 'Body 3', 'Body 4', 'Body 5', 'Body 6', 'Body 7', 'Body 8', 'Body 9');
elseif (nop == 10)
    h = line('color','r','marker','.','markersize',20);
    h2= line('color','y','marker','.','markersize',20);
    h3= line('color','b','marker','.','markersize',20);
    h4= line('color','m','marker','.','markersize',20);
    h5= line('color','g','marker','.','markersize',20);
    h6= line('color','c','marker','.','markersize',20);
    h7= line('color','k','marker','.','markersize',20);
    h8= line('color',[.25 .25 .25],'marker','.','markersize',20);
    h9= line('color',[.5 .5 .5],'marker','.','markersize',20);
    h10=line('color',[.75 .75 .75],'marker','.','markersize',20);
    %legend('Body 1','Body 2', 'Body 3', 'Body 4', 'Body 5', 'Body 6', 'Body 7', 'Body 8', 'Body 9', 'Body 10');
end

% title and axes for the Solar System 
title('Simple Solar System');
xlabel('x position(m)');
ylabel('y position(m)');
zlabel('z position(m)');


% Gravitational Constant
G = 6.67408*10^-11;
% Time Step
dt=1;
for t=1:100000000

    % First for loop to collect data from the first planet
    for a=1:nop
    
        %Pulls pos, vel, mass, and acc data from planets matrix
        posa = [planets(a,2),planets(a,3),planets(a,4)];
        vela = [planets(a,5),planets(a,6),planets(a,7)];
        acca = [planets(a,8),planets(a,9),planets(a,10)];
        massa = planets(a,1);
        radiusa = planets(a,11);
    
        % second loop to calculate acceleration from each different body
        % onto body a
        for b=(a+1):nop
        
            
            posb = [planets(b,2),planets(b,3),planets(b,4)];
            massb = planets(b,1);
            radiusb = planets(b,11);
        
            % calulates the position magnitude and direction
            a_pos_b = posb - posa;
            a_dis_b = sqrt(a_pos_b(1)^2 + a_pos_b(2)^2 + a_pos_b(3)^2);
            if a_dis_b < (radiusa + radiusb)
                break;
            end
        
            % finds the acceleration of body a from body b
            acc = ((massb * -G * a_pos_b) / (a_dis_b)^(3));
        
            % places acceleration on body a from body b into a structure
            acc_array.x(a,b) = -acc(1);
            acc_array.y(a,b) = -acc(2);
            acc_array.z(a,b) = -acc(3);
        
            % places acceleration on body b from body a into the same
            % structure
            acc_array.x(b,a) = acc(1)/massb*massa;
            acc_array.y(b,a) = acc(2)/massb*massa;
            acc_array.z(b,a) = acc(3)/massb*massa;

        end
        
        % calculates the new accelerations
        acca(1) = sum(acc_array.x(a,:));
        acca(2) = sum(acc_array.y(a,:));
        acca(3) = sum(acc_array.z(a,:));
    
        % calculates the new postions and velocities
        new_vel = vela + (acca * dt);
        new_pos = posa + (new_vel * dt);
    
        
        %updates the new positions, velocities, and accelerations for the
        % bodies
        planets(a,2:4) = new_pos;
        planets(a,5:7) = new_vel;
        planets(a,8:10) = acca;
        
        % sets the planet data
        x=2;y=3;z=4;
        if (nop >= 1)
            set(h,'Xdata',planets(1,x),'Ydata',planets(1,y),'Zdata',planets(a,z));
        end
        if (nop >= 2)
            set(h2,'Xdata',planets(2,x),'Ydata',planets(2,y),'Zdata',planets(a,z));
        end
        if (nop >= 3)
            set(h3,'Xdata',planets(3,x),'Ydata',planets(3,y),'Zdata',planets(a,z));
        end
        if (nop >= 4)
            set(h4,'Xdata',planets(4,x),'Ydata',planets(4,y),'Zdata',planets(a,z));
        end
        if (nop >= 5)
            set(h5,'Xdata',planets(5,x),'Ydata',planets(5,y),'Zdata',planets(a,z));
        end
        if (nop >= 6)
            set(h6,'Xdata',planets(6,x),'Ydata',planets(6,y),'Zdata',planets(a,z));
        end
        if (nop >= 7)
            set(h7,'Xdata',planets(7,x),'Ydata',planets(7,y),'Zdata',planets(a,z));
        end
        if (nop >= 8)
            set(h8,'Xdata',planets(8,x),'Ydata',planets(8,y),'Zdata',planets(a,z));
        end
        if (nop >= 9)
            set(h9,'Xdata',planets(9,x),'Ydata',planets(9,y),'Zdata',planets(a,z));
        end
        if (nop >= 10)
            set(h10,'Xdata',planets(10,x),'Ydata',planets(10,y),'Zdata',planets(a,z));
        end
        pause(dt/100000);
        if a_dis_b < (radiusa + radiusb)
            break;
        end
    
    end
    if a_dis_b < (radiusa + radiusb)
        disp('Your solar system has failed!!!');
        clf;
        break;
    end
        
end