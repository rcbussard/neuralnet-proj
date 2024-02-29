%% Set up Grid Space %%

load('snow_masks_rs_0206.mat');

x_coords = [-874*32.14:1*32.14:307*32.14];  
y_coords = [-140*50.57:1*50.57:299*50.57];  
[mogi_x,mogi_y] = meshgrid(x_coords,y_coords);
[th,R_mogi] = cart2pol(mogi_x,mogi_y);

%% Choose Mogi Values %%

depth = 10000;
nu = 0.25;

dv = 30000000;

%% Run Mogi Model %%

mogi_delt = dv./pi;
Rad = sqrt(depth.^2 + R_mogi.^2);	
C = (1-nu).*mogi_delt;		

et = C./Rad.^3;		
ur = R_mogi.*et;         
uz = depth.*et;       
[ux,uy] = pol2cart(th,ur);

%% Visualize General %%

%figure;
%surf(x_coords,y_coords,uz_1,'LineStyle','none')
%colorbar

%figure;
%surf(x_coords,y_coords,uz_2,'LineStyle','none')
%colorbar

%figure;
%surf(x_coords,y_coords,uz_3,'LineStyle','none')
%colorbar

%% Mask Data %%

snow_mask_wint = flip(sm_rs(:,:,24),1);
uz_wint = uz;

for i = 1:440
    for j = 1:1182
        if snow_mask_wint(i,j) == 1
            uz_wint(i,j) = NaN;
        end
    end
end

snow_mask_spri = flip(sm_rs(:,:,12),1);
uz_spri = uz;

for i = 1:440
    for j = 1:1182
        if snow_mask_spri(i,j) == 1
            uz_spri(i,j) = NaN;
        end
    end
end

snow_mask_summ = flip(sm_rs(:,:,16),1);
uz_summ = uz;

for i = 1:440
    for j = 1:1182
        if snow_mask_summ(i,j) == 1
            uz_summ(i,j) = NaN;
        end
    end
end

snow_mask_fall = flip(sm_rs(:,:,22),1);
uz_fall = uz;

for i = 1:440
    for j = 1:1182
        if snow_mask_fall(i,j) == 1
            uz_fall(i,j) = NaN;
        end
    end
end

%%

uz_count = 0;
uz_spri_count = 0;
uz_fall_count = 0;

for i = 1:440
    for j = 1:1182
        if uz(i,j) >= 0.01
            uz_count = uz_count + 1;
        end
        if uz_spri(i,j) >= 0.01
            uz_spri_count = uz_spri_count + 1;
        end
        if uz_fall(i,j) >= 0.01
            uz_fall_count = uz_fall_count + 1;
        end
    end
end

%%

u_spri_perc = uz_spri_count / uz_count;
u_fall_perc = uz_fall_count / uz_count;

%% Visualize Masked Data %%

figure;
subplot(1,2,1)
surf(x_coords,y_coords,uz_spri,'LineStyle','none'), axis equal, axis tight
view(2)
colormap copper
colorbar
grid off
subplot(1,2,2)
surf(x_coords,y_coords,uz_fall,'LineStyle','none'), axis equal, axis tight
view(2)
colormap copper
grid off
colorbar