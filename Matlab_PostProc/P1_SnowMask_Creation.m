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
    NDSI_array = cat(3,NDSI_array,imageDataDoub);
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
    snow_array = cat(3,snow_array,imageDataDoub);
    date_name = baseFileName(8:15);
    date_val = datetime(date_name,'InputFormat','yyyyMMdd');
    dates_snow = [dates_snow ; date_val];
end

%%

figure;
imagesc(snow_array(:,:,16))
colormap pink
colorbar

%%

for i = 1:29
    NDSI_values = NDSI_array(:,:,i);
    snow_values = snow_array(:,:,i);
    
    figure;
    scatter(NDSI_values(:),snow_values(:),'filled')
    ylim([0.9 1])
end

%%

snow_masks = [];

for i = 1:29
    snowmask_image = zeros(1413,2672);
    NDSI = NDSI_array(:,:,i);
    snow_pred = snow_array(:,:,i);
    for j = 1:1413
        for k = 1:2672
            if snow_pred(j,k) >= 0.9
                snowmask_image(j,k) = 1;
            end
        end
    end
    snow_masks = cat(3,snow_masks,snowmask_image);
    %R = georasterref('RasterSize',size(snowmask_image),'LatitudeLimits',[46.07,46.5],'LongitudeLimits',[-122.62,-121.9]);
    %date_name = convertCharsToStrings(datestr(dates_snow(i)));
    %tiffile = date_name + '_snowmask.tif';
    %geotiffwrite(tiffile,snowmask_image,R)
end

%%

sm_rs = [];

for i = 1:29
    snowmask_crop = snow_masks(447:1189,259:2115,i);
    snow_mask_rs = imresize(snowmask_crop,[440 1182]);
    for j = 1:440
        for k = 1:1182
            if snow_mask_rs(j,k) > 0 
                snow_mask_rs(j,k) = 1;
            end
        end
    end
    sm_rs = cat(3,sm_rs,snow_mask_rs);
end

for i = 1:29
    figure;
    imagesc(sm_rs(:,:,i))
end