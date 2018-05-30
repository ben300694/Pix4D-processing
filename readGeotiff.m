geotiffFile = '/media/data/bruppik/Pix4D/example_cadastre/Downloaded_from_Pix4DMapper/Cadastre_dsm.tif';

%info = geotiffinfo(geotiffFile);
%disp(info);

%[image, R] = geotiffread(geotiffFile);

image = GEOTIFF_READ(geotiffFile);