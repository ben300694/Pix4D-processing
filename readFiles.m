% infixPath = 'cvg11/';
infixPath = '';

orthoimageFile_desktop_3channel = ['/media/data/bruppik/', ...
                    infixPath, ...
                    'Pix4D/example_cadastre_desktop/example_cadastre/3_dsm_ortho/2_mosaic/', ...
                    'example_cadastre_mosaic_group1.tif'];
orthoimageFile_desktop_4channel = ['/media/data/bruppik/', ...
                    infixPath, ...
                    'Pix4D/example_cadastre_desktop/example_cadastre/3_dsm_ortho/2_mosaic/', ...
                    'example_cadastre_transparent_mosaic_group1.tif'];                
                
geotiffFile_desktop = ['/media/data/bruppik/', ...
                infixPath, ...
                'Pix4D/example_cadastre_desktop/example_cadastre/3_dsm_ortho/1_dsm/', ...
                'example_cadastre_dsm.tif'];

% orthoimage 3 channels
% Matrix of dimensions [10161, 13562, 3] and format uint8
% size(orthoimage_3channel)
orthoimage_3channel = imread(orthoimageFile_desktop_3channel);            

% orthoimage 4 channels ('transparent')
% Matrix of dimensions [10161, 13562, 4] and format uint8           
orthoimage_4channel = imread(orthoimageFile_desktop_4channel);

% dsm - Digital Surface Model
% The entry is '-10000' for points not in the depthmap/orthoimage
dsm = imread(geotiffFile_desktop);

% Color limits clims = [cmin, cmax], values less than or equal to 
% cmin map to the first color in the colormap
% and values greater than or equal to cmax map to the last color in the colormap
% clims = [800, 900];
clims = minMaxAltitude(dsm);
imagesc(dsm, clims);


