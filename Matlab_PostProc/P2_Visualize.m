%% Read in InSAR Data and Load Snow Mask Data %%

insar_file = '/Users/rebeccabussard/Documents/2023/MSH_Optical/geo_ifgramStack_SENT.h5';

coh_raw = h5read(insar_file, '/coherence',[1 1 1],[1182 440 730]);

%% Visualize Coherence and Snow Masks for 20171205 and 20171202 %%

snow_mask_20171205 = sm_rs(:,:,11);
coh_20171205 = coh_raw(:,:,290:294);

snow_points_20171205_x = [];
snow_points_20171205_y = [];

for i = 1:440
    for j = 1:1182
        if snow_mask_20171205(i,j) == 1
            x = j;
            y = i;
            snow_points_20171205_x = [snow_points_20171205_x x];
            snow_points_20171205_y = [snow_points_20171205_y y];
        end
    end
end

figure;
imagesc(transpose(coh_20171205(:,:,1)))
colorbar
hold on
scatter(snow_points_20171205_x,snow_points_20171205_y,7,'filled','w','MarkerFaceAlpha',0.1)

figure;
imagesc(transpose(coh_20171205(:,:,2)))
colorbar
hold on
scatter(snow_points_20171205_x,snow_points_20171205_y,7,'filled','w','MarkerFaceAlpha',0.1)

figure;
imagesc(transpose(coh_20171205(:,:,3)))
colorbar
hold on
scatter(snow_points_20171205_x,snow_points_20171205_y,7,'filled','w','MarkerFaceAlpha',0.1)

figure;
imagesc(transpose(coh_20171205(:,:,4)))
colorbar
hold on
scatter(snow_points_20171205_x,snow_points_20171205_y,7,'filled','w','MarkerFaceAlpha',0.1)

figure;
imagesc(transpose(coh_20171205(:,:,5)))
colorbar
hold on
scatter(snow_points_20171205_x,snow_points_20171205_y,7,'filled','w','MarkerFaceAlpha',0.1)

%% Visualize Coherence and Snow Masks for 20180311 and 20180308 %%

snow_mask_20180311 = sm_rs(:,:,12);
coh_20180311 = coh_raw(:,:,325:329);

snow_points_20180311_x = [];
snow_points_20180311_y = [];

for i = 1:440
    for j = 1:1182
        if snow_mask_20180311(i,j) == 1
            x = j;
            y = i;
            snow_points_20180311_x = [snow_points_20180311_x x];
            snow_points_20180311_y = [snow_points_20180311_y y];
        end
    end
end

figure;
imagesc(transpose(coh_20180311(:,:,1)))
colorbar
hold on
scatter(snow_points_20180311_x,snow_points_20180311_y,7,'filled','w','MarkerFaceAlpha',0.1)

figure;
imagesc(transpose(coh_20180311(:,:,2)))
colorbar
hold on
scatter(snow_points_20180311_x,snow_points_20180311_y,7,'filled','w','MarkerFaceAlpha',0.1)

figure;
imagesc(transpose(coh_20180311(:,:,3)))
colorbar
hold on
scatter(snow_points_20180311_x,snow_points_20180311_y,7,'filled','w','MarkerFaceAlpha',0.1)

figure;
imagesc(transpose(coh_20180311(:,:,4)))
colorbar
hold on
scatter(snow_points_20180311_x,snow_points_20180311_y,7,'filled','w','MarkerFaceAlpha',0.1)

figure;
imagesc(transpose(coh_20180311(:,:,5)))
colorbar
hold on
scatter(snow_points_20180311_x,snow_points_20180311_y,7,'filled','w','MarkerFaceAlpha',0.1)

%% Visualize Coherence and Snow Masks for 20190501 and 20190502 %%

snow_mask_20190501 = sm_rs(:,:,16);
coh_20190501 = coh_raw(:,:,500:504);

snow_points_20190501_x = [];
snow_points_20190501_y = [];

for i = 1:440
    for j = 1:1182
        if snow_mask_20190501(i,j) == 1
            x = j;
            y = i;
            snow_points_20190501_x = [snow_points_20190501_x x];
            snow_points_20190501_y = [snow_points_20190501_y y];
        end
    end
end

figure;
imagesc(transpose(coh_20190501(:,:,1)))
colorbar
hold on
scatter(snow_points_20190501_x,snow_points_20190501_y,7,'filled','w','MarkerFaceAlpha',0.1)

figure;
imagesc(transpose(coh_20190501(:,:,2)))
colorbar
hold on
scatter(snow_points_20190501_x,snow_points_20190501_y,7,'filled','w','MarkerFaceAlpha',0.1)

figure;
imagesc(transpose(coh_20190501(:,:,3)))
colorbar
hold on
scatter(snow_points_20190501_x,snow_points_20190501_y,7,'filled','w','MarkerFaceAlpha',0.1)

figure;
imagesc(transpose(coh_20190501(:,:,4)))
colorbar
hold on
scatter(snow_points_20190501_x,snow_points_20190501_y,7,'filled','w','MarkerFaceAlpha',0.1)

figure;
imagesc(transpose(coh_20190501(:,:,5)))
colorbar
hold on
scatter(snow_points_20190501_x,snow_points_20190501_y,7,'filled','w','MarkerFaceAlpha',0.1)

%% 1.5 Visualize Coherence and Snow Masks for 20200823 and 20200824 %%

snow_mask_20200823 = sm_rs(:,:,22);
coh_20200823 = coh_raw(:,:,690:694);

snow_points_20200823_x = [];
snow_points_20200823_y = [];

for i = 1:440
    for j = 1:1182
        if snow_mask_20200823(i,j) == 1
            x = j;
            y = i;
            snow_points_20200823_x = [snow_points_20200823_x x];
            snow_points_20200823_y = [snow_points_20200823_y y];
        end
    end
end

figure;
imagesc(transpose(coh_20200823(:,:,1)))
colorbar
hold on
scatter(snow_points_20200823_x,snow_points_20200823_y,7,'filled','w','MarkerFaceAlpha',0.3)

figure;
imagesc(transpose(coh_20200823(:,:,2)))
colorbar
hold on
scatter(snow_points_20200823_x,snow_points_20200823_y,7,'filled','w','MarkerFaceAlpha',0.3)

figure;
imagesc(transpose(coh_20200823(:,:,3)))
colorbar
hold on
scatter(snow_points_20200823_x,snow_points_20200823_y,7,'filled','w','MarkerFaceAlpha',0.3)

figure;
imagesc(transpose(coh_20200823(:,:,4)))
colorbar
hold on
scatter(snow_points_20200823_x,snow_points_20200823_y,7,'filled','w','MarkerFaceAlpha',0.3)

figure;
imagesc(transpose(coh_20200823(:,:,5)))
colorbar
hold on
scatter(snow_points_20200823_x,snow_points_20200823_y,7,'filled','w','MarkerFaceAlpha',0.3)

%% Check Coherence for Different Patches 20171205 %%

coh_20171205_20171214 = coh_20171205(:,:,1);
coh_20171205_20171214_p1 = coh_20171205_20171214(800:900,325:375);
coh_20171205_20171214_p2 = coh_20171205_20171214(820:920,160:210);
coh_20171205_20171214_p3 = coh_20171205_20171214(1050:1150,50:100);

coh_20171205_20171226 = coh_20171205(:,:,2);
coh_20171205_20171226_p1 = coh_20171205_20171226(800:900,325:375);
coh_20171205_20171226_p2 = coh_20171205_20171226(820:920,160:210);
coh_20171205_20171226_p3 = coh_20171205_20171226(1050:1150,50:100);

coh_20171205_20180107 = coh_20171205(:,:,3);
coh_20171205_20180107_p1 = coh_20171205_20180107(800:900,325:375);
coh_20171205_20180107_p2 = coh_20171205_20180107(820:920,160:210);
coh_20171205_20180107_p3 = coh_20171205_20180107(1050:1150,50:100);

coh_20171205_20180119 = coh_20171205(:,:,4);
coh_20171205_20180119_p1 = coh_20171205_20180119(800:900,325:375);
coh_20171205_20180119_p2 = coh_20171205_20180119(820:920,160:210);
coh_20171205_20180119_p3 = coh_20171205_20180119(1050:1150,50:100);

coh_20171205_20180131 = coh_20171205(:,:,5);
coh_20171205_20180131_p1 = coh_20171205_20180131(800:900,325:375);
coh_20171205_20180131_p2 = coh_20171205_20180131(820:920,160:210);
coh_20171205_20180131_p3 = coh_20171205_20180131(1050:1150,50:100);

coh_20171205_p1 = [coh_20171205_20171214_p1(:) coh_20171205_20171226_p1(:) coh_20171205_20180107_p1(:) coh_20171205_20180119_p1(:) coh_20171205_20180131_p1(:)];
coh_20171205_p2 = [coh_20171205_20171214_p2(:) coh_20171205_20171226_p2(:) coh_20171205_20180107_p2(:) coh_20171205_20180119_p2(:) coh_20171205_20180131_p2(:)];
coh_20171205_p3 = [coh_20171205_20171214_p3(:) coh_20171205_20171226_p3(:) coh_20171205_20180107_p3(:) coh_20171205_20180119_p3(:) coh_20171205_20180131_p3(:)];

coh_20171205_p1_r = round(coh_20171205_p1,2);
coh_20171205_p2_r = round(coh_20171205_p2,2);
coh_20171205_p3_r = round(coh_20171205_p3,2);

%% Plot Coherence Patches 20171205 %%

p1_posb = mode(coh_20171205_p1_r(:)) + std(coh_20171205_p1_r(:));
p1_negb = mode(coh_20171205_p1_r(:)) - std(coh_20171205_p1_r(:));

figure;
histogram(coh_20171205_p1(:))
xline(p1_posb,'--k','LineWidth',1)
xline(p1_negb,'--k','LineWidth',1)
xline(mode(coh_20171205_p1_r(:)),'--k','LineWidth',1)
xlim([0 1])

p2_posb = mode(coh_20171205_p2_r(:)) + std(coh_20171205_p2_r(:));
p2_negb = mode(coh_20171205_p2_r(:)) - std(coh_20171205_p2_r(:));

figure;
histogram(coh_20171205_p2(:))
xline(p2_posb,'--k','LineWidth',1)
xline(p2_negb,'--k','LineWidth',1)
xline(mode(coh_20171205_p2_r(:)),'--k','LineWidth',1)
xlim([0 1])

p3_posb = mode(coh_20171205_p3_r(:)) + std(coh_20171205_p3_r(:));
p3_negb = mode(coh_20171205_p3_r(:)) - std(coh_20171205_p3_r(:));

figure;
histogram(coh_20171205_p3(:))
xline(p3_posb,'--k','LineWidth',1)
xline(p3_negb,'--k','LineWidth',1)
xline(mode(coh_20171205_p3_r(:)),'--k','LineWidth',1)
xlim([0 1])

%% Check Coherence for Different Patches 20180311 %%

coh_20180311_20180320 = coh_20180311(:,:,1);
coh_20180311_20180320_p1 = coh_20180311_20180320(800:900,325:375);
coh_20180311_20180320_p2 = coh_20180311_20180320(820:920,160:210);
coh_20180311_20180320_p3 = coh_20180311_20180320(1050:1150,50:100);

coh_20180311_20180401 = coh_20180311(:,:,2);
coh_20180311_20180401_p1 = coh_20180311_20180401(800:900,325:375);
coh_20180311_20180401_p2 = coh_20180311_20180401(820:920,160:210);
coh_20180311_20180401_p3 = coh_20180311_20180401(1050:1150,50:100);

coh_20180311_20180413 = coh_20180311(:,:,3);
coh_20180311_20180413_p1 = coh_20180311_20180413(800:900,325:375);
coh_20180311_20180413_p2 = coh_20180311_20180413(820:920,160:210);
coh_20180311_20180413_p3 = coh_20180311_20180413(1050:1150,50:100);

coh_20180311_20180425 = coh_20180311(:,:,4);
coh_20180311_20180425_p1 = coh_20180311_20180425(800:900,325:375);
coh_20180311_20180425_p2 = coh_20180311_20180425(820:920,160:210);
coh_20180311_20180425_p3 = coh_20180311_20180425(1050:1150,50:100);

coh_20180311_20180507 = coh_20180311(:,:,5);
coh_20180311_20180507_p1 = coh_20180311_20180507(800:900,325:375);
coh_20180311_20180507_p2 = coh_20180311_20180507(820:920,160:210);
coh_20180311_20180507_p3 = coh_20180311_20180507(1050:1150,50:100);

coh_20180311_p1 = [coh_20180311_20180320_p1(:) coh_20180311_20180401_p1(:) coh_20180311_20180413_p1(:) coh_20180311_20180425_p1(:) coh_20180311_20180507_p1(:)];
coh_20180311_p2 = [coh_20180311_20180320_p2(:) coh_20180311_20180401_p2(:) coh_20180311_20180413_p2(:) coh_20180311_20180425_p2(:) coh_20180311_20180507_p2(:)];
coh_20180311_p3 = [coh_20180311_20180320_p3(:) coh_20180311_20180401_p3(:) coh_20180311_20180413_p3(:) coh_20180311_20180425_p3(:) coh_20180311_20180507_p3(:)];

coh_20180311_p1_r = round(coh_20180311_p1,2);
coh_20180311_p2_r = round(coh_20180311_p2,2);
coh_20180311_p3_r = round(coh_20180311_p3,2);

%% Plot Coherence Patches 20180311 %%

p1_posb = mode(coh_20180311_p1_r(:)) + std(coh_20180311_p1_r(:));
p1_negb = mode(coh_20180311_p1_r(:)) - std(coh_20180311_p1_r(:));

figure;
histogram(coh_20180311_p1(:),'FaceColor',"#77AC30")
xline(p1_posb,'--k','LineWidth',1)
xline(p1_negb,'--k','LineWidth',1)
xline(mode(coh_20180311_p1_r(:)),'--k','LineWidth',1)
xlim([0 1])

p2_posb = mode(coh_20180311_p2_r(:)) + std(coh_20180311_p2_r(:));
p2_negb = mode(coh_20180311_p2_r(:)) - std(coh_20180311_p2_r(:));

figure;
histogram(coh_20180311_p2(:),'FaceColor',"#77AC30")
xline(p2_posb,'--k','LineWidth',1)
xline(p2_negb,'--k','LineWidth',1)
xline(mode(coh_20180311_p2_r(:)),'--k','LineWidth',1)
xlim([0 1])

p3_posb = mode(coh_20180311_p3_r(:)) + std(coh_20180311_p3_r(:));
p3_negb = mode(coh_20180311_p3_r(:)) - std(coh_20180311_p3_r(:));

figure;
histogram(coh_20180311_p3(:),'FaceColor',"#77AC30")
xline(p3_posb,'--k','LineWidth',1)
xline(p3_negb,'--k','LineWidth',1)
xline(mode(coh_20180311_p3_r(:)),'--k','LineWidth',1)
xlim([0 1])

%% Check Coherence for Different Patches 20190501 %%

coh_20190501_20190514 = coh_20190501(:,:,1);
coh_20190501_20190514_p1 = coh_20190501_20190514(800:900,325:375);
coh_20190501_20190514_p2 = coh_20190501_20190514(820:920,160:210);
coh_20190501_20190514_p3 = coh_20190501_20190514(1050:1150,50:100);

coh_20190501_20190526 = coh_20190501(:,:,2);
coh_20190501_20190526_p1 = coh_20190501_20190526(800:900,325:375);
coh_20190501_20190526_p2 = coh_20190501_20190526(820:920,160:210);
coh_20190501_20190526_p3 = coh_20190501_20190526(1050:1150,50:100);

coh_20190501_20190607 = coh_20190501(:,:,3);
coh_20190501_20190607_p1 = coh_20190501_20190607(800:900,325:375);
coh_20190501_20190607_p2 = coh_20190501_20190607(820:920,160:210);
coh_20190501_20190607_p3 = coh_20190501_20190607(1050:1150,50:100);

coh_20190501_20190619 = coh_20190501(:,:,4);
coh_20190501_20190619_p1 = coh_20190501_20190619(800:900,325:375);
coh_20190501_20190619_p2 = coh_20190501_20190619(820:920,160:210);
coh_20190501_20190619_p3 = coh_20190501_20190619(1050:1150,50:100);

coh_20190501_20190701 = coh_20190501(:,:,5);
coh_20190501_20190701_p1 = coh_20190501_20190701(800:900,325:375);
coh_20190501_20190701_p2 = coh_20190501_20190701(820:920,160:210);
coh_20190501_20190701_p3 = coh_20190501_20190701(1050:1150,50:100);

coh_20190501_p1 = [coh_20190501_20190514_p1(:) coh_20190501_20190526_p1(:) coh_20190501_20190607_p1(:) coh_20190501_20190619_p1(:) coh_20190501_20190701_p1(:)];
coh_20190501_p2 = [coh_20190501_20190514_p2(:) coh_20190501_20190526_p2(:) coh_20190501_20190607_p2(:) coh_20190501_20190619_p2(:) coh_20190501_20190701_p2(:)];
coh_20190501_p3 = [coh_20190501_20190514_p3(:) coh_20190501_20190526_p3(:) coh_20190501_20190607_p3(:) coh_20190501_20190619_p3(:) coh_20190501_20190701_p3(:)];

coh_20190501_p1_r = round(coh_20190501_p1,2);
coh_20190501_p2_r = round(coh_20190501_p2,2);
coh_20190501_p3_r = round(coh_20190501_p3,2);

%% Plot Coherence Patches 20190501 %%

p1_posb = mode(coh_20190501_p1_r(:)) + std(coh_20190501_p1_r(:));
p1_negb = mode(coh_20190501_p1_r(:)) - std(coh_20190501_p1_r(:));

figure;
histogram(coh_20190501_p1(:),'FaceColor',"#EDB120")
xline(p1_posb,'--k','LineWidth',1)
xline(p1_negb,'--k','LineWidth',1)
xline(mode(coh_20190501_p1_r(:)),'--k','LineWidth',1)
xlim([0 1])

p2_posb = mode(coh_20190501_p2_r(:)) + std(coh_20190501_p2_r(:));
p2_negb = mode(coh_20190501_p2_r(:)) - std(coh_20190501_p2_r(:));

figure;
histogram(coh_20190501_p2(:),'FaceColor',"#EDB120")
xline(p2_posb,'--k','LineWidth',1)
xline(p2_negb,'--k','LineWidth',1)
xline(mode(coh_20190501_p2_r(:)),'--k','LineWidth',1)
xlim([0 1])

p3_posb = mode(coh_20190501_p3_r(:)) + std(coh_20190501_p3_r(:));
p3_negb = mode(coh_20190501_p3_r(:)) - std(coh_20190501_p3_r(:));

figure;
histogram(coh_20190501_p3(:),'FaceColor',"#EDB120")
xline(p3_posb,'--k','LineWidth',1)
xline(p3_negb,'--k','LineWidth',1)
xline(mode(coh_20190501_p3_r(:)),'--k','LineWidth',1)
xlim([0 1])

%% Check Coherence for Different Patches 20200823 %%

coh_20200823_20200905 = coh_20200823(:,:,1);
coh_20200823_20200905_p1 = coh_20200823_20200905(800:900,325:375);
coh_20200823_20200905_p2 = coh_20200823_20200905(820:920,160:210);
coh_20200823_20200905_p3 = coh_20200823_20200905(1050:1150,50:100);

coh_20200823_20200917 = coh_20200823(:,:,2);
coh_20200823_20200917_p1 = coh_20200823_20200917(800:900,325:375);
coh_20200823_20200917_p2 = coh_20200823_20200917(820:920,160:210);
coh_20200823_20200917_p3 = coh_20200823_20200917(1050:1150,50:100);

coh_20200823_20200929 = coh_20200823(:,:,3);
coh_20200823_20200929_p1 = coh_20200823_20200929(800:900,325:375);
coh_20200823_20200929_p2 = coh_20200823_20200929(820:920,160:210);
coh_20200823_20200929_p3 = coh_20200823_20200929(1050:1150,50:100);

coh_20200823_20201011 = coh_20200823(:,:,4);
coh_20200823_20201011_p1 = coh_20200823_20201011(800:900,325:375);
coh_20200823_20201011_p2 = coh_20200823_20201011(820:920,160:210);
coh_20200823_20201011_p3 = coh_20200823_20201011(1050:1150,50:100);

coh_20200823_20201023 = coh_20200823(:,:,5);
coh_20200823_20201023_p1 = coh_20200823_20201023(800:900,325:375);
coh_20200823_20201023_p2 = coh_20200823_20201023(820:920,160:210);
coh_20200823_20201023_p3 = coh_20200823_20201023(1050:1150,50:100);

coh_20200823_p1 = [coh_20200823_20200905_p1(:) coh_20200823_20200917_p1(:) coh_20200823_20200929_p1(:) coh_20200823_20201011_p1(:) coh_20200823_20201023_p1(:)];
coh_20200823_p2 = [coh_20200823_20200905_p2(:) coh_20200823_20200917_p2(:) coh_20200823_20200929_p2(:) coh_20200823_20201011_p2(:) coh_20200823_20201023_p2(:)];
coh_20200823_p3 = [coh_20200823_20200905_p3(:) coh_20200823_20200917_p3(:) coh_20200823_20200929_p3(:) coh_20200823_20201011_p3(:) coh_20200823_20201023_p3(:)];

coh_20200823_p1_r = round(coh_20200823_p1,2);
coh_20200823_p2_r = round(coh_20200823_p2,2);
coh_20200823_p3_r = round(coh_20200823_p3,2);

%% Plot Coherence Patches 20200823 %%

p1_posb = mode(coh_20200823_p1_r(:)) + std(coh_20200823_p1_r(:));
p1_negb = mode(coh_20200823_p1_r(:)) - std(coh_20200823_p1_r(:));

figure;
histogram(coh_20200823_p1(:),'FaceColor',"#D95319")
xline(p1_posb,'--k','LineWidth',1)
xline(p1_negb,'--k','LineWidth',1)
xline(mode(coh_20200823_p1_r(:)),'--k','LineWidth',1)
xlim([0 1])

p2_posb = mode(coh_20200823_p2_r(:)) + std(coh_20200823_p2_r(:));
p2_negb = mode(coh_20200823_p2_r(:)) - std(coh_20200823_p2_r(:));

figure;
histogram(coh_20200823_p2(:),'FaceColor',"#D95319")
xline(p2_posb,'--k','LineWidth',1)
xline(p2_negb,'--k','LineWidth',1)
xline(mode(coh_20200823_p2_r(:)),'--k','LineWidth',1)
xlim([0 1])

p3_posb = mode(coh_20200823_p3_r(:)) + std(coh_20200823_p3_r(:));
p3_negb = mode(coh_20200823_p3_r(:)) - std(coh_20200823_p3_r(:));

figure;
histogram(coh_20200823_p3(:),'FaceColor',"#D95319")
xline(p3_posb,'--k','LineWidth',1)
xline(p3_negb,'--k','LineWidth',1)
xline(mode(coh_20200823_p3_r(:)),'--k','LineWidth',1)
xlim([0 1])

%% Calculate Snow Cover % for Each Patch for Each Image %%

%Patch 1%

counts_p1 = [];

for i = 1:29
    count_p1 = 0;
    snow_mask_p1 = sm_rs(325:375,800:900,i);
    snow_mask_p1_vals = snow_mask_p1(:);
    for j = 1:length(snow_mask_p1_vals)
        if snow_mask_p1_vals(j) == 1
            count_p1 = count_p1 + 1;
        end
    end
    counts_p1 = [counts_p1 count_p1];
end

%Patch 2%

counts_p2 = [];

for i = 1:29
    count_p2 = 0;
    snow_mask_p2 = sm_rs(160:210,820:920,i);
    snow_mask_p2_vals = snow_mask_p2(:);
    for j = 1:length(snow_mask_p2_vals)
        if snow_mask_p2_vals(j) == 1
            count_p2 = count_p2 + 1;
        end
    end
    counts_p2 = [counts_p2 count_p2];
end

counts_p3 = [];

for i = 1:29
    count_p3 = 0;
    snow_mask_p3 = sm_rs(50:100,1050:1150,i);
    snow_mask_p3_vals = snow_mask_p3(:);
    for j = 1:length(snow_mask_p3_vals)
        if snow_mask_p3_vals(j) == 1
            count_p3 = count_p3 + 1;
        end
    end
    counts_p3 = [counts_p3 count_p3];
end

counts_p1_perc = counts_p1 / 5151;
counts_p2_perc = counts_p2 / 5151;
counts_p3_perc = counts_p3 / 5151;

%%

myFolder_snow = '/Users/rebeccabussard/Documents/2024/MSH_Optical/L8_Snow_Predictions_0202';

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
    date_name = baseFileName(26:33);
    date_val = datetime(date_name,'InputFormat','yyyyMMdd');
    dates_snow = [dates_snow ; date_val];
end

%%

figure;
imagesc(sm_rs(:,:,18))
hold on
rectangle('Position',[800 325 100 50])
hold on
rectangle('Position',[820 160 100 50])
hold on
rectangle('Position',[1050 50 100 50])

figure;
subplot(3,1,1)
scatter(dates_snow,counts_p1_perc*100,50,'filled','MarkerFaceColor','#0C2FAF')
(set(gca, 'YGrid', 'on', 'XGrid', 'off'))
ax.LineWidth = 6
subplot(3,1,2)
scatter(dates_snow,counts_p2_perc*100,50,'filled','MarkerFaceColor','#0C2FAF')
(set(gca, 'YGrid', 'on', 'XGrid', 'off'))
ax.LineWidth = 6
subplot(3,1,3)
scatter(dates_snow,counts_p3_perc*100,50,'filled','MarkerFaceColor','#0C2FAF')
(set(gca, 'YGrid', 'on', 'XGrid', 'off'))
ax.LineWidth = 15

figure;
scatter(dates_snow,counts_p1_perc*100,50,'filled','MarkerFaceColor','#0C2FAF')
hold on
scatter(dates_snow,counts_p2_perc*100,50,'filled','MarkerFaceColor','#7E5E04')
hold on
scatter(dates_snow,counts_p3_perc*100,50,'filled','MarkerFaceColor','#117E04')
(set(gca, 'YGrid', 'on', 'XGrid', 'off'))
ax.LineWidth = 6

%% Giant Coherence Plot w/ Standard Dev %%

p1_posb_20171205 = mode(coh_20171205_p1_r(:)) + std(coh_20171205_p1_r(:));
p1_negb_20171205 = mode(coh_20171205_p1_r(:)) - std(coh_20171205_p1_r(:));

p1_posb_20180311 = mode(coh_20180311_p1_r(:)) + std(coh_20180311_p1_r(:));
p1_negb_20180311 = mode(coh_20180311_p1_r(:)) - std(coh_20180311_p1_r(:));

p1_posb_20190501 = mode(coh_20190501_p1_r(:)) + std(coh_20190501_p1_r(:));
p1_negb_20190501 = mode(coh_20190501_p1_r(:)) - std(coh_20190501_p1_r(:));

p1_posb_20200823 = mode(coh_20200823_p1_r(:)) + std(coh_20200823_p1_r(:));
p1_negb_20200823 = mode(coh_20200823_p1_r(:)) - std(coh_20200823_p1_r(:));

p2_posb_20171205 = mode(coh_20171205_p2_r(:)) + std(coh_20171205_p2_r(:));
p2_negb_20171205 = mode(coh_20171205_p2_r(:)) - std(coh_20171205_p2_r(:));

p2_posb_20180311 = mode(coh_20180311_p2_r(:)) + std(coh_20180311_p2_r(:));
p2_negb_20180311 = mode(coh_20180311_p2_r(:)) - std(coh_20180311_p2_r(:));

p2_posb_20190501 = mode(coh_20190501_p2_r(:)) + std(coh_20190501_p2_r(:));
p2_negb_20190501 = mode(coh_20190501_p2_r(:)) - std(coh_20190501_p2_r(:));

p2_posb_20200823 = mode(coh_20200823_p2_r(:)) + std(coh_20200823_p2_r(:));
p2_negb_20200823 = mode(coh_20200823_p2_r(:)) - std(coh_20200823_p2_r(:));

p3_posb_20171205 = mode(coh_20171205_p3_r(:)) + std(coh_20171205_p3_r(:));
p3_negb_20171205 = mode(coh_20171205_p3_r(:)) - std(coh_20171205_p3_r(:));

p3_posb_20180311 = mode(coh_20180311_p3_r(:)) + std(coh_20180311_p3_r(:));
p3_negb_20180311 = mode(coh_20180311_p3_r(:)) - std(coh_20180311_p3_r(:));

p3_posb_20190501 = mode(coh_20190501_p3_r(:)) + std(coh_20190501_p3_r(:));
p3_negb_20190501 = mode(coh_20190501_p3_r(:)) - std(coh_20190501_p3_r(:));

p3_posb_20200823 = mode(coh_20200823_p3_r(:)) + std(coh_20200823_p3_r(:));
p3_negb_20200823 = mode(coh_20200823_p3_r(:)) - std(coh_20200823_p3_r(:));


figure;
subplot(3,4,1)
histogram(coh_20171205_p1(:))
xline(p1_posb_20171205,'--k','LineWidth',1)
xline(p1_negb_20171205,'--k','LineWidth',1)
xline(mode(coh_20171205_p1_r(:)),'--k','LineWidth',1)
xlim([0 1])

subplot(3,4,2)
histogram(coh_20180311_p1(:),'FaceColor',"#77AC30")
xline(p1_posb_20180311,'--k','LineWidth',1)
xline(p1_negb_20180311,'--k','LineWidth',1)
xline(mode(coh_20180311_p1_r(:)),'--k','LineWidth',1)
xlim([0 1])

subplot(3,4,3)
histogram(coh_20190501_p1(:),'FaceColor',"#EDB120")
xline(p1_posb_20190501,'--k','LineWidth',1)
xline(p1_negb_20190501,'--k','LineWidth',1)
xline(mode(coh_20190501_p1_r(:)),'--k','LineWidth',1)
xlim([0 1])

subplot(3,4,4)
histogram(coh_20200823_p1(:),'FaceColor',"#D95319")
xline(p1_posb,'--k','LineWidth',1)
xline(p1_negb,'--k','LineWidth',1)
xline(mode(coh_20200823_p1_r(:)),'--k','LineWidth',1)
xlim([0 1])

subplot(3,4,5)
histogram(coh_20171205_p2(:))
xline(p2_posb_20171205,'--k','LineWidth',1)
xline(p2_negb_20171205,'--k','LineWidth',1)
xline(mode(coh_20171205_p2_r(:)),'--k','LineWidth',1)
xlim([0 1])

subplot(3,4,6)
histogram(coh_20180311_p2(:),'FaceColor',"#77AC30")
xline(p2_posb_20180311,'--k','LineWidth',1)
xline(p2_negb_20180311,'--k','LineWidth',1)
xline(mode(coh_20180311_p2_r(:)),'--k','LineWidth',1)
xlim([0 1])

subplot(3,4,7)
histogram(coh_20190501_p2(:),'FaceColor',"#EDB120")
xline(p2_posb_20190501,'--k','LineWidth',1)
xline(p2_negb_20190501,'--k','LineWidth',1)
xline(mode(coh_20190501_p2_r(:)),'--k','LineWidth',1)
xlim([0 1])

subplot(3,4,8)
histogram(coh_20200823_p2(:),'FaceColor',"#D95319")
xline(p2_posb,'--k','LineWidth',1)
xline(p2_negb,'--k','LineWidth',1)
xline(mode(coh_20200823_p2_r(:)),'--k','LineWidth',1)
xlim([0 1])

subplot(3,4,9)
histogram(coh_20171205_p3(:))
xline(p3_posb_20171205,'--k','LineWidth',1)
xline(p3_negb_20171205,'--k','LineWidth',1)
xline(mode(coh_20171205_p3_r(:)),'--k','LineWidth',1)
xlim([0 1])

subplot(3,4,10)
histogram(coh_20180311_p3(:),'FaceColor',"#77AC30")
xline(p3_posb_20180311,'--k','LineWidth',1)
xline(p3_negb_20180311,'--k','LineWidth',1)
xline(mode(coh_20180311_p3_r(:)),'--k','LineWidth',1)
xlim([0 1])

subplot(3,4,11)
histogram(coh_20190501_p3(:),'FaceColor',"#EDB120")
xline(p3_posb_20190501,'--k','LineWidth',1)
xline(p3_negb_20190501,'--k','LineWidth',1)
xline(mode(coh_20190501_p3_r(:)),'--k','LineWidth',1)
xlim([0 1])

subplot(3,4,12)
histogram(coh_20200823_p3(:),'FaceColor',"#D95319")
xline(p3_posb,'--k','LineWidth',1)
xline(p3_negb,'--k','LineWidth',1)
xline(mode(coh_20200823_p3_r(:)),'--k','LineWidth',1)
xlim([0 1])

%% Giant Coherence Plot w/ Confidence Interval %%

p1_20171205_SEM = std(coh_20171205_p1_r(:))/sqrt(length(coh_20171205_p1_r(:)));              
p1_20171205_ts = tinv([0.025  0.975],length(coh_20171205_p1_r(:))-1);      
p1_20171205_CI = mode(coh_20171205_p1_r(:)) + p1_20171205_ts*p1_20171205_SEM; 

p2_20171205_SEM = std(coh_20171205_p2_r(:))/sqrt(length(coh_20171205_p2_r(:)));              
p2_20171205_ts = tinv([0.025  0.975],length(coh_20171205_p2_r(:))-1);      
p2_20171205_CI = mean(coh_20171205_p2_r(:)) + p2_20171205_ts*p2_20171205_SEM;

p3_20171205_SEM = std(coh_20171205_p3_r(:))/sqrt(length(coh_20171205_p3_r(:)));              
p3_20171205_ts = tinv([0.025  0.975],length(coh_20171205_p3_r(:))-1);      
p3_20171205_CI = mean(coh_20171205_p3_r(:)) + p3_20171205_ts*p3_20171205_SEM;

p1_20180311_SEM = std(coh_20180311_p1_r(:))/sqrt(length(coh_20180311_p1_r(:)));              
p1_20180311_ts = tinv([0.025  0.975],length(coh_20180311_p1_r(:))-1);      
p1_20180311_CI = mean(coh_20180311_p1_r(:)) + p1_20180311_ts*p1_20180311_SEM;  

p2_20180311_SEM = std(coh_20180311_p2_r(:))/sqrt(length(coh_20180311_p2_r(:)));              
p2_20180311_ts = tinv([0.025  0.975],length(coh_20180311_p2_r(:))-1);      
p2_20180311_CI = mean(coh_20180311_p2_r(:)) + p2_20180311_ts*p2_20180311_SEM;

p3_20180311_SEM = std(coh_20180311_p3_r(:))/sqrt(length(coh_20180311_p3_r(:)));              
p3_20180311_ts = tinv([0.025  0.975],length(coh_20180311_p3_r(:))-1);      
p3_20180311_CI = mean(coh_20180311_p3_r(:)) + p3_20180311_ts*p3_20180311_SEM;

p1_20190501_SEM = std(coh_20190501_p1_r(:))/sqrt(length(coh_20190501_p1_r(:)));              
p1_20190501_ts = tinv([0.025  0.975],length(coh_20190501_p1_r(:))-1);      
p1_20190501_CI = mean(coh_20190501_p1_r(:)) + p1_20190501_ts*p1_20190501_SEM;  

p2_20190501_SEM = std(coh_20190501_p2_r(:))/sqrt(length(coh_20190501_p2_r(:)));              
p2_20190501_ts = tinv([0.025  0.975],length(coh_20190501_p2_r(:))-1);      
p2_20190501_CI = mean(coh_20190501_p2_r(:)) + p2_20190501_ts*p2_20190501_SEM;

p3_20190501_SEM = std(coh_20190501_p3_r(:))/sqrt(length(coh_20190501_p3_r(:)));              
p3_20190501_ts = tinv([0.025  0.975],length(coh_20190501_p3_r(:))-1);      
p3_20190501_CI = mean(coh_20190501_p3_r(:)) + p3_20190501_ts*p3_20190501_SEM;

p1_20200823_SEM = std(coh_20200823_p1_r(:))/sqrt(length(coh_20200823_p1_r(:)));              
p1_20200823_ts = tinv([0.025  0.975],length(coh_20200823_p1_r(:))-1);      
p1_20200823_CI = mean(coh_20200823_p1_r(:)) + p1_20200823_ts*p1_20200823_SEM;  

p2_20200823_SEM = std(coh_20200823_p2_r(:))/sqrt(length(coh_20200823_p2_r(:)));              
p2_20200823_ts = tinv([0.025  0.975],length(coh_20200823_p2_r(:))-1);      
p2_20200823_CI = mean(coh_20200823_p2_r(:)) + p2_20200823_ts*p2_20200823_SEM;

p3_20200823_SEM = std(coh_20200823_p3_r(:))/sqrt(length(coh_20200823_p3_r(:)));              
p3_20200823_ts = tinv([0.025  0.975],length(coh_20200823_p3_r(:))-1);      
p3_20200823_CI = mean(coh_20200823_p3_r(:)) + p3_20200823_ts*p3_20200823_SEM;

figure;
subplot(3,4,1)
histogram(coh_20171205_p1(:))
xline(mode(coh_20171205_p1_r(:)),'--k','LineWidth',1)
xlim([0 1])

subplot(3,4,2)
histogram(coh_20180311_p1(:),'FaceColor',"#77AC30")
xline(mode(coh_20180311_p1_r(:)),'--k','LineWidth',1)
xlim([0 1])

subplot(3,4,3)
histogram(coh_20190501_p1(:),'FaceColor',"#EDB120")
xline(mode(coh_20190501_p1_r(:)),'--k','LineWidth',1)
xlim([0 1])

subplot(3,4,4)
histogram(coh_20200823_p1(:),'FaceColor',"#D95319")
xline(mode(coh_20200823_p1_r(:)),'--k','LineWidth',1)
xlim([0 1])

subplot(3,4,5)
histogram(coh_20171205_p2(:))
xline(mode(coh_20171205_p2_r(:)),'--k','LineWidth',1)
xlim([0 1])

subplot(3,4,6)
histogram(coh_20180311_p2(:),'FaceColor',"#77AC30")
xline(mode(coh_20180311_p2_r(:)),'--k','LineWidth',1)
xlim([0 1])

subplot(3,4,7)
histogram(coh_20190501_p2(:),'FaceColor',"#EDB120")
xline(mode(coh_20190501_p2_r(:)),'--k','LineWidth',1)
xlim([0 1])

subplot(3,4,8)
histogram(coh_20200823_p2(:),'FaceColor',"#D95319")
xline(mode(coh_20200823_p2_r(:)),'--k','LineWidth',1)
xlim([0 1])

subplot(3,4,9)
histogram(coh_20171205_p3(:))
xline(mode(coh_20171205_p3_r(:)),'--k','LineWidth',1)
xlim([0 1])

subplot(3,4,10)
histogram(coh_20180311_p3(:),'FaceColor',"#77AC30")
xline(mode(coh_20180311_p3_r(:)),'--k','LineWidth',1)
xlim([0 1])

subplot(3,4,11)
histogram(coh_20190501_p3(:),'FaceColor',"#EDB120")
xline(mode(coh_20190501_p3_r(:)),'--k','LineWidth',1)
xlim([0 1])

subplot(3,4,12)
histogram(coh_20200823_p3(:),'FaceColor',"#D95319")
xline(mode(coh_20200823_p3_r(:)),'--k','LineWidth',1)
xlim([0 1])

%% Count Number over Coherence Threshold %%

count_p1_20171205_03 = 0;
count_p1_20171205_05 = 0;
count_p1_20171205_07 = 0;

for i = 1:5151
    for j = 1:5
        if coh_20171205_p1(i,j) > 0.3
            count_p1_20171205_03 = count_p1_20171205_03 + 1;
        end
        if coh_20171205_p1(i,j) > 0.5
            count_p1_20171205_05 = count_p1_20171205_05 + 1;
        end
        if coh_20171205_p1(i,j) > 0.7
            count_p1_20171205_07 = count_p1_20171205_07 + 1;
        end
    end
end

count_p2_20171205_03 = 0;
count_p2_20171205_05 = 0;
count_p2_20171205_07 = 0;

for i = 1:5151
    for j = 1:5
        if coh_20171205_p2(i,j) > 0.3
            count_p2_20171205_03 = count_p2_20171205_03 + 1;
        end
        if coh_20171205_p2(i,j) > 0.5
            count_p2_20171205_05 = count_p2_20171205_05 + 1;
        end
        if coh_20171205_p2(i,j) > 0.7
            count_p2_20171205_07 = count_p2_20171205_07 + 1;
        end
    end
end

count_p3_20171205_03 = 0;
count_p3_20171205_05 = 0;
count_p3_20171205_07 = 0;

for i = 1:5151
    for j = 1:5
        if coh_20171205_p3(i,j) > 0.3
            count_p3_20171205_03 = count_p3_20171205_03 + 1;
        end
        if coh_20171205_p3(i,j) > 0.5
            count_p3_20171205_05 = count_p3_20171205_05 + 1;
        end
        if coh_20171205_p3(i,j) > 0.7
            count_p3_20171205_07 = count_p3_20171205_07 + 1;
        end
    end
end

count_p1_20180311_03 = 0;
count_p1_20180311_05 = 0;
count_p1_20180311_07 = 0;

for i = 1:5151
    for j = 1:5
        if coh_20180311_p1(i,j) > 0.3
            count_p1_20180311_03 = count_p1_20180311_03 + 1;
        end
        if coh_20180311_p1(i,j) > 0.5
            count_p1_20180311_05 = count_p1_20180311_05 + 1;
        end
        if coh_20180311_p1(i,j) > 0.7
            count_p1_20180311_07 = count_p1_20180311_07 + 1;
        end
    end
end

count_p2_20180311_03 = 0;
count_p2_20180311_05 = 0;
count_p2_20180311_07 = 0;

for i = 1:5151
    for j = 1:5
        if coh_20180311_p2(i,j) > 0.3
            count_p2_20180311_03 = count_p2_20180311_03 + 1;
        end
        if coh_20180311_p2(i,j) > 0.5
            count_p2_20180311_05 = count_p2_20180311_05 + 1;
        end
        if coh_20180311_p2(i,j) > 0.7
            count_p2_20180311_07 = count_p2_20180311_07 + 1;
        end
    end
end

count_p3_20180311_03 = 0;
count_p3_20180311_05 = 0;
count_p3_20180311_07 = 0;

for i = 1:5151
    for j = 1:5
        if coh_20180311_p3(i,j) > 0.3
            count_p3_20180311_03 = count_p3_20180311_03 + 1;
        end
        if coh_20180311_p3(i,j) > 0.5
            count_p3_20180311_05 = count_p3_20180311_05 + 1;
        end
        if coh_20180311_p3(i,j) > 0.7
            count_p3_20180311_07 = count_p3_20180311_07 + 1;
        end
    end
end

count_p1_20190501_03 = 0;
count_p1_20190501_05 = 0;
count_p1_20190501_07 = 0;

for i = 1:5151
    for j = 1:5
        if coh_20190501_p1(i,j) > 0.3
            count_p1_20190501_03 = count_p1_20190501_03 + 1;
        end
        if coh_20190501_p1(i,j) > 0.5
            count_p1_20190501_05 = count_p1_20190501_05 + 1;
        end
        if coh_20190501_p1(i,j) > 0.7
            count_p1_20190501_07 = count_p1_20190501_07 + 1;
        end
    end
end

count_p2_20190501_03 = 0;
count_p2_20190501_05 = 0;
count_p2_20190501_07 = 0;

for i = 1:5151
    for j = 1:5
        if coh_20190501_p2(i,j) > 0.3
            count_p2_20190501_03 = count_p2_20190501_03 + 1;
        end
        if coh_20190501_p2(i,j) > 0.5
            count_p2_20190501_05 = count_p2_20190501_05 + 1;
        end
        if coh_20190501_p2(i,j) > 0.7
            count_p2_20190501_07 = count_p2_20190501_07 + 1;
        end
    end
end

count_p3_20190501_03 = 0;
count_p3_20190501_05 = 0;
count_p3_20190501_07 = 0;

for i = 1:5151
    for j = 1:5
        if coh_20190501_p3(i,j) > 0.3
            count_p3_20190501_03 = count_p3_20190501_03 + 1;
        end
        if coh_20190501_p3(i,j) > 0.5
            count_p3_20190501_05 = count_p3_20190501_05 + 1;
        end
        if coh_20190501_p3(i,j) > 0.7
            count_p3_20190501_07 = count_p3_20190501_07 + 1;
        end
    end
end

count_p1_20200823_03 = 0;
count_p1_20200823_05 = 0;
count_p1_20200823_07 = 0;

for i = 1:5151
    for j = 1:5
        if coh_20200823_p1(i,j) > 0.3
            count_p1_20200823_03 = count_p1_20200823_03 + 1;
        end
        if coh_20200823_p1(i,j) > 0.5
            count_p1_20200823_05 = count_p1_20200823_05 + 1;
        end
        if coh_20200823_p1(i,j) > 0.7
            count_p1_20200823_07 = count_p1_20200823_07 + 1;
        end
    end
end

count_p2_20200823_03 = 0;
count_p2_20200823_05 = 0;
count_p2_20200823_07 = 0;

for i = 1:5151
    for j = 1:5
        if coh_20200823_p2(i,j) > 0.3
            count_p2_20200823_03 = count_p2_20200823_03 + 1;
        end
        if coh_20200823_p2(i,j) > 0.5
            count_p2_20200823_05 = count_p2_20200823_05 + 1;
        end
        if coh_20200823_p2(i,j) > 0.7
            count_p2_20200823_07 = count_p2_20200823_07 + 1;
        end
    end
end

count_p3_20200823_03 = 0;
count_p3_20200823_05 = 0;
count_p3_20200823_07 = 0;

for i = 1:5151
    for j = 1:5
        if coh_20200823_p3(i,j) > 0.3
            count_p3_20200823_03 = count_p3_20200823_03 + 1;
        end
        if coh_20200823_p3(i,j) > 0.5
            count_p3_20200823_05 = count_p3_20200823_05 + 1;
        end
        if coh_20200823_p3(i,j) > 0.7
            count_p3_20200823_07 = count_p3_20200823_07 + 1;
        end
    end
end

perc_p1_20171205_03 = count_p1_20171205_03 / 25755;
perc_p1_20171205_05 = count_p1_20171205_05 / 25755;
perc_p1_20171205_07 = count_p1_20171205_07 / 25755;

perc_p2_20171205_03 = count_p2_20171205_03 / 25755;
perc_p2_20171205_05 = count_p2_20171205_05 / 25755;
perc_p2_20171205_07 = count_p2_20171205_07 / 25755;

perc_p3_20171205_03 = count_p3_20171205_03 / 25755;
perc_p3_20171205_05 = count_p3_20171205_05 / 25755;
perc_p3_20171205_07 = count_p3_20171205_07 / 25755;

perc_p1_20180311_03 = count_p1_20180311_03 / 25755;
perc_p1_20180311_05 = count_p1_20180311_05 / 25755;
perc_p1_20180311_07 = count_p1_20180311_07 / 25755;

perc_p2_20180311_03 = count_p2_20180311_03 / 25755;
perc_p2_20180311_05 = count_p2_20180311_05 / 25755;
perc_p2_20180311_07 = count_p2_20180311_07 / 25755;

perc_p3_20180311_03 = count_p3_20180311_03 / 25755;
perc_p3_20180311_05 = count_p3_20180311_05 / 25755;
perc_p3_20180311_07 = count_p3_20180311_07 / 25755;

perc_p1_20190501_03 = count_p1_20190501_03 / 25755;
perc_p1_20190501_05 = count_p1_20190501_05 / 25755;
perc_p1_20190501_07 = count_p1_20190501_07 / 25755;

perc_p2_20190501_03 = count_p2_20190501_03 / 25755;
perc_p2_20190501_05 = count_p2_20190501_05 / 25755;
perc_p2_20190501_07 = count_p2_20190501_07 / 25755;

perc_p3_20190501_03 = count_p3_20190501_03 / 25755;
perc_p3_20190501_05 = count_p3_20190501_05 / 25755;
perc_p3_20190501_07 = count_p3_20190501_07 / 25755;

perc_p1_20200823_03 = count_p1_20200823_03 / 25755;
perc_p1_20200823_05 = count_p1_20200823_05 / 25755;
perc_p1_20200823_07 = count_p1_20200823_07 / 25755;

perc_p2_20200823_03 = count_p2_20200823_03 / 25755;
perc_p2_20200823_05 = count_p2_20200823_05 / 25755;
perc_p2_20200823_07 = count_p2_20200823_07 / 25755;

perc_p3_20200823_03 = count_p3_20200823_03 / 25755;
perc_p3_20200823_05 = count_p3_20200823_05 / 25755;
perc_p3_20200823_07 = count_p3_20200823_07 / 25755;