%%

myFolder_NDSI = '/Users/rebeccabussard/Documents/2024/MSH_Optical/L8_NDSI_MSH';

% Get a list of all files in the folder with the desired file name pattern.
filePattern_NDSI = fullfile(myFolder_NDSI, '*.tif'); % Change to whatever pattern you need.
theFiles_NDSI = dir(filePattern_NDSI);
NDSI_array = [];
dates_NDSI = [];

for k = 1 : length(theFiles_NDSI)
    baseFileName = theFiles_NDSI(k).name;
    fullFileName = fullfile(theFiles_NDSI(k).folder, baseFileName);
    t = Tiff(fullFileName,'r');
    imageData = read(t);
    imageDataDoub = double(imageData());
    NDSI_crop = imageDataDoub(447:1189,259:2115);
    NDSI_array = cat(3,NDSI_array,NDSI_crop);
    date_name = baseFileName(5:14);
    date_val = datetime(date_name,'InputFormat','yyyy-MM-dd');
    dates_NDSI = [dates_NDSI ; date_val];
end

%%

myFolder_snow = '/Users/rebeccabussard/Documents/2024/MSH_Optical/Analysis_0206';

% Get a list of all files in the folder with the desired file name pattern.
filePattern_snow = fullfile(myFolder_snow, '*.tif'); % Change to whatever pattern you need.
theFiles_snow = dir(filePattern_snow);
snow_array = [];
dates_snow = [];

for k = 1 : length(theFiles_snow)
    baseFileName = theFiles_snow(k).name;
    fullFileName = fullfile(theFiles_snow(k).folder, baseFileName);
    t = Tiff(fullFileName,'r');
    imageData = read(t);
    imageDataDoub = double(imageData());
    snowmask_crop = imageDataDoub(447:1189,259:2115);
    snow_array = cat(3,snow_array,snowmask_crop);
    date_name = baseFileName(8:15);
    date_val = datetime(date_name,'InputFormat','yyyyMMdd');
    dates_snow = [dates_snow ; date_val];
end

%%

figure;
imagesc(snow_array(:,:,16))
colormap pink


%%

NDSI_values_1 = NDSI_array(:,:,1);      NDSI_values_16 = NDSI_array(:,:,16);
NDSI_values_2 = NDSI_array(:,:,2);      NDSI_values_17 = NDSI_array(:,:,17);
NDSI_values_3 = NDSI_array(:,:,3);      NDSI_values_18 = NDSI_array(:,:,18);
NDSI_values_4 = NDSI_array(:,:,4);      NDSI_values_19 = NDSI_array(:,:,19);
NDSI_values_5 = NDSI_array(:,:,5);      NDSI_values_20 = NDSI_array(:,:,20);
NDSI_values_6 = NDSI_array(:,:,6);      NDSI_values_21 = NDSI_array(:,:,21);
NDSI_values_7 = NDSI_array(:,:,7);      NDSI_values_22 = NDSI_array(:,:,22);
NDSI_values_8 = NDSI_array(:,:,8);      NDSI_values_23 = NDSI_array(:,:,23);
NDSI_values_9 = NDSI_array(:,:,9);      NDSI_values_24 = NDSI_array(:,:,24);
NDSI_values_10 = NDSI_array(:,:,10);    NDSI_values_25 = NDSI_array(:,:,25);
NDSI_values_11 = NDSI_array(:,:,11);    NDSI_values_26 = NDSI_array(:,:,26);
NDSI_values_12 = NDSI_array(:,:,12);    NDSI_values_27 = NDSI_array(:,:,27);
NDSI_values_13 = NDSI_array(:,:,13);    NDSI_values_28 = NDSI_array(:,:,28);
NDSI_values_14 = NDSI_array(:,:,14);    NDSI_values_29 = NDSI_array(:,:,29);
NDSI_values_15 = NDSI_array(:,:,15);  

snow_values_1 = snow_array(:,:,1);      snow_values_16 = snow_array(:,:,16);
snow_values_2 = snow_array(:,:,2);      snow_values_17 = snow_array(:,:,17);
snow_values_3 = snow_array(:,:,3);      snow_values_18 = snow_array(:,:,18);
snow_values_4 = snow_array(:,:,4);      snow_values_19 = snow_array(:,:,19);
snow_values_5 = snow_array(:,:,5);      snow_values_20 = snow_array(:,:,20);
snow_values_6 = snow_array(:,:,6);      snow_values_21 = snow_array(:,:,21);
snow_values_7 = snow_array(:,:,7);      snow_values_22 = snow_array(:,:,22);
snow_values_8 = snow_array(:,:,8);      snow_values_23 = snow_array(:,:,23);
snow_values_9 = snow_array(:,:,9);      snow_values_24 = snow_array(:,:,24);
snow_values_10 = snow_array(:,:,10);    snow_values_25 = snow_array(:,:,25);
snow_values_11 = snow_array(:,:,11);    snow_values_26 = snow_array(:,:,26);
snow_values_12 = snow_array(:,:,12);    snow_values_27 = snow_array(:,:,27);
snow_values_13 = snow_array(:,:,13);    snow_values_28 = snow_array(:,:,28);
snow_values_14 = snow_array(:,:,14);    snow_values_29 = snow_array(:,:,29);
snow_values_15 = snow_array(:,:,15);  

%%

figure;
subplot(6,5,1)
imagesc(snow_values_1)
colormap pink
colorbar
caxis([0 1])
h = gca; h.XAxis.Visible = 'off'; h.YAxis.Visible = 'off';
title('2014-07-06')
subplot(6,5,2)
imagesc(snow_values_2)
colormap pink
colorbar
caxis([0 1])
h = gca; h.XAxis.Visible = 'off'; h.YAxis.Visible = 'off';
title('2014-08-07')
subplot(6,5,3)
imagesc(snow_values_3)
colormap pink
colorbar
caxis([0 1])
h = gca; h.XAxis.Visible = 'off'; h.YAxis.Visible = 'off';
title('2015-04-20')
subplot(6,5,4)
imagesc(snow_values_4)
colormap pink
colorbar
caxis([0 1])
h = gca; h.XAxis.Visible = 'off'; h.YAxis.Visible = 'off';
title('2015-06-07')
subplot(6,5,5)
imagesc(snow_values_5)
colormap pink
colorbar
caxis([0 1])
h = gca; h.XAxis.Visible = 'off'; h.YAxis.Visible = 'off';
title('2015-08-26')
subplot(6,5,6)
imagesc(snow_values_6)
colormap pink
colorbar
caxis([0 1])
h = gca; h.XAxis.Visible = 'off'; h.YAxis.Visible = 'off';
title('2015-09-27')
subplot(6,5,7)
imagesc(snow_values_7)
colormap pink
colorbar
caxis([0 1])
h = gca; h.XAxis.Visible = 'off'; h.YAxis.Visible = 'off';
title('2016-08-12')
subplot(6,5,8)
imagesc(snow_values_8)
colormap pink
colorbar
caxis([0 1])
h = gca; h.XAxis.Visible = 'off'; h.YAxis.Visible = 'off';
title('2017-05-27')
subplot(6,5,9)
imagesc(snow_values_9)
colormap pink
colorbar
caxis([0 1])
h = gca; h.XAxis.Visible = 'off'; h.YAxis.Visible = 'off';
title('2017-07-14')
subplot(6,5,10)
imagesc(snow_values_10)
colormap pink
colorbar
caxis([0 1])
h = gca; h.XAxis.Visible = 'off'; h.YAxis.Visible = 'off';
title('2017-07-30')
subplot(6,5,11)
imagesc(snow_values_11)
colormap pink
colorbar
caxis([0 1])
h = gca; h.XAxis.Visible = 'off'; h.YAxis.Visible = 'off';
title('2017-12-05')
subplot(6,5,12)
imagesc(snow_values_12)
colormap pink
colorbar
caxis([0 1])
h = gca; h.XAxis.Visible = 'off'; h.YAxis.Visible = 'off';
title('2018-03-11')
subplot(6,5,13)
imagesc(snow_values_13)
colormap pink
colorbar
caxis([0 1])
h = gca; h.XAxis.Visible = 'off'; h.YAxis.Visible = 'off';
title('2018-05-14')
subplot(6,5,14)
imagesc(snow_values_14)
colormap pink
colorbar
caxis([0 1])
h = gca; h.XAxis.Visible = 'off'; h.YAxis.Visible = 'off';
title('2018-07-17')
subplot(6,5,15)
imagesc(snow_values_15)
colormap pink
colorbar
caxis([0 1])
h = gca; h.XAxis.Visible = 'off'; h.YAxis.Visible = 'off';
title('2018-08-18')
subplot(6,5,16)
imagesc(snow_values_16)
colormap pink
colorbar
caxis([0 1])
h = gca; h.XAxis.Visible = 'off'; h.YAxis.Visible = 'off';
title('2019-05-01')
subplot(6,5,17)
imagesc(snow_values_17)
colormap pink
colorbar
caxis([0 1])
h = gca; h.XAxis.Visible = 'off'; h.YAxis.Visible = 'off';
title('2019-07-20')
subplot(6,5,18)
imagesc(snow_values_18)
colormap pink
colorbar
caxis([0 1])
h = gca; h.XAxis.Visible = 'off'; h.YAxis.Visible = 'off';
title('2019-08-05')
subplot(6,5,19)
imagesc(snow_values_19)
colormap pink
colorbar
caxis([0 1])
h = gca; h.XAxis.Visible = 'off'; h.YAxis.Visible = 'off';
title('2019-10-24')
subplot(6,5,20)
imagesc(snow_values_20)
colormap pink
colorbar
caxis([0 1])
h = gca; h.XAxis.Visible = 'off'; h.YAxis.Visible = 'off';
title('2020-03-16')
subplot(6,5,21)
imagesc(snow_values_21)
colormap pink
colorbar
caxis([0 1])
h = gca; h.XAxis.Visible = 'off'; h.YAxis.Visible = 'off';
title('2020-04-17')
subplot(6,5,22)
imagesc(snow_values_22)
colormap pink
colorbar
caxis([0 1])
h = gca; h.XAxis.Visible = 'off'; h.YAxis.Visible = 'off';
title('2020-08-23')
subplot(6,5,23)
imagesc(snow_values_23)
colormap pink
colorbar
caxis([0 1])
h = gca; h.XAxis.Visible = 'off'; h.YAxis.Visible = 'off';
title('2020-09-08')
subplot(6,5,24)
imagesc(snow_values_24)
colormap pink
colorbar
caxis([0 1])
h = gca; h.XAxis.Visible = 'off'; h.YAxis.Visible = 'off';
title('2021-01-14')
subplot(6,5,25)
imagesc(snow_values_25)
colormap pink
colorbar
caxis([0 1])
h = gca; h.XAxis.Visible = 'off'; h.YAxis.Visible = 'off';
title('2021-03-03')
subplot(6,5,26)
imagesc(snow_values_26)
colormap pink
colorbar
caxis([0 1])
h = gca; h.XAxis.Visible = 'off'; h.YAxis.Visible = 'off';
title('2021-04-20')
subplot(6,5,27)
imagesc(snow_values_27)
colormap pink
colorbar
caxis([0 1])
h = gca; h.XAxis.Visible = 'off'; h.YAxis.Visible = 'off';
title('2021-07-09')
subplot(6,5,28)
imagesc(snow_values_28)
colormap pink
colorbar
caxis([0 1])
h = gca; h.XAxis.Visible = 'off'; h.YAxis.Visible = 'off';
title('2021-07-25')
subplot(6,5,29)
imagesc(snow_values_29)
colormap pink
colorbar
caxis([0 1])
h = gca; h.XAxis.Visible = 'off'; h.YAxis.Visible = 'off';
title('2021-08-10')

%%

figure;
subplot(6,5,1)
scatter(NDSI_values_1(:),snow_values_1(:),'filled',"MarkerFaceColor","#0072BD")
xline(0,'LineWidth',3)
title('2014-07-06')
subplot(6,5,2)
scatter(NDSI_values_2(:),snow_values_2(:),'filled',"MarkerFaceColor","#0072BD")
xline(0,'LineWidth',3)
title('2014-08-07')
subplot(6,5,3)
scatter(NDSI_values_3(:),snow_values_3(:),'filled',"MarkerFaceColor","#0072BD")
xline(0,'LineWidth',3)
title('2015-04-20')
subplot(6,5,4)
scatter(NDSI_values_4(:),snow_values_4(:),'filled',"MarkerFaceColor","#0072BD")
xline(0,'LineWidth',3)
title('2015-06-07')
subplot(6,5,5)
scatter(NDSI_values_5(:),snow_values_5(:),'filled',"MarkerFaceColor","#0072BD")
xline(0,'LineWidth',3)
title('2015-08-26')
subplot(6,5,6)
scatter(NDSI_values_6(:),snow_values_6(:),'filled',"MarkerFaceColor","#0072BD")
xline(0,'LineWidth',3)
title('2015-09-27')
subplot(6,5,7)
scatter(NDSI_values_7(:),snow_values_7(:),'filled',"MarkerFaceColor","#0072BD")
xline(0,'LineWidth',3)
title('2016-08-12')
subplot(6,5,8)
scatter(NDSI_values_8(:),snow_values_8(:),'filled',"MarkerFaceColor","#0072BD")
xline(0,'LineWidth',3)
title('2017-05-27')
subplot(6,5,9)
scatter(NDSI_values_9(:),snow_values_9(:),'filled',"MarkerFaceColor","#0072BD")
xline(0,'LineWidth',3)
title('2017-07-14')
subplot(6,5,10)
scatter(NDSI_values_10(:),snow_values_10(:),'filled',"MarkerFaceColor","#0072BD")
xline(0,'LineWidth',3)
title('2017-07-30')
subplot(6,5,11)
scatter(NDSI_values_11(:),snow_values_11(:),'filled',"MarkerFaceColor","#0072BD")
xline(0,'LineWidth',3)
title('2017-12-05')
subplot(6,5,12)
scatter(NDSI_values_12(:),snow_values_12(:),'filled',"MarkerFaceColor","#0072BD")
xline(0,'LineWidth',3)
title('2018-03-11')
subplot(6,5,13)
scatter(NDSI_values_13(:),snow_values_13(:),'filled',"MarkerFaceColor","#0072BD")
xline(0,'LineWidth',3)
title('2018-05-14')
subplot(6,5,14)
scatter(NDSI_values_14(:),snow_values_14(:),'filled',"MarkerFaceColor","#0072BD")
xline(0,'LineWidth',3)
title('2018-07-17')
subplot(6,5,15)
scatter(NDSI_values_15(:),snow_values_15(:),'filled',"MarkerFaceColor","#0072BD")
xline(0,'LineWidth',3)
title('2018-08-18')
subplot(6,5,16)
scatter(NDSI_values_16(:),snow_values_16(:),'filled',"MarkerFaceColor","#0072BD")
xline(0,'LineWidth',3)
title('2019-05-01')
subplot(6,5,17)
scatter(NDSI_values_17(:),snow_values_17(:),'filled',"MarkerFaceColor","#0072BD")
xline(0,'LineWidth',3)
title('2019-07-20')
subplot(6,5,18)
scatter(NDSI_values_18(:),snow_values_18(:),'filled',"MarkerFaceColor","#0072BD")
xline(0,'LineWidth',3)
title('2019-08-05')
subplot(6,5,19)
scatter(NDSI_values_19(:),snow_values_19(:),'filled',"MarkerFaceColor","#0072BD")
xline(0,'LineWidth',3)
title('2019-10-24')
subplot(6,5,20)
scatter(NDSI_values_20(:),snow_values_20(:),'filled',"MarkerFaceColor","#0072BD")
xline(0,'LineWidth',3)
title('2020-03-16')
subplot(6,5,21)
scatter(NDSI_values_21(:),snow_values_21(:),'filled',"MarkerFaceColor","#0072BD")
xline(0,'LineWidth',3)
title('2020-04-17')
subplot(6,5,22)
scatter(NDSI_values_22(:),snow_values_22(:),'filled',"MarkerFaceColor","#0072BD")
xline(0,'LineWidth',3)
title('2020-08-23')
subplot(6,5,23)
scatter(NDSI_values_23(:),snow_values_23(:),'filled',"MarkerFaceColor","#0072BD")
xline(0,'LineWidth',3)
title('2020-09-08')
subplot(6,5,24)
scatter(NDSI_values_24(:),snow_values_24(:),'filled',"MarkerFaceColor","#0072BD")
xline(0,'LineWidth',3)
title('2021-01-14')
subplot(6,5,25)
scatter(NDSI_values_25(:),snow_values_25(:),'filled',"MarkerFaceColor","#0072BD")
xline(0,'LineWidth',3)
title('2021-03-03')
subplot(6,5,26)
scatter(NDSI_values_26(:),snow_values_26(:),'filled',"MarkerFaceColor","#0072BD")
xline(0,'LineWidth',3)
title('2021-04-20')
subplot(6,5,27)
scatter(NDSI_values_27(:),snow_values_27(:),'filled',"MarkerFaceColor","#0072BD")
xline(0,'LineWidth',3)
title('2021-07-09')
subplot(6,5,28)
scatter(NDSI_values_28(:),snow_values_28(:),'filled',"MarkerFaceColor","#0072BD")
xline(0,'LineWidth',3)
title('2021-07-25')
subplot(6,5,29)
scatter(NDSI_values_29(:),snow_values_29(:),'filled',"MarkerFaceColor","#0072BD")
xline(0,'LineWidth',3)
title('2021-08-10')


%% 

figure;
scatter(NDSI_values_19(:),snow_values_19(:),'filled',"MarkerFaceColor","#7E2F8E")
ylim([0.9 1])
xlim([0 1])
hold on
scatter(NDSI_values_16(:),snow_values_16(:),'filled',"MarkerFaceColor","#0072BD")
ylim([0.9 1])
xlim([0 1])
hold on
scatter(NDSI_values_17(:),snow_values_17(:),'filled',"MarkerFaceColor","#D95319")
ylim([0.9 1])
xlim([0 1])
hold on
scatter(NDSI_values_18(:),snow_values_18(:),'filled',"MarkerFaceColor","#EDB120")
ylim([0.9 1])
xlim([0 1])
%title('2019 Image Snow Prediction % vs. NDSI Value','FontSize',20)
xlabel('NDSI Value','FontSize',14)
ylabel('Snow Prediction Value','FontSize',14)
%legend('2019-10-24','2019-05-01','2019-07-20','2019-08-05')