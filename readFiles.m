% infixPath = 'cvg11/';
infixPath = '';

orthoimageFile = ['/media/data/bruppik/', ...
                    infixPath, ...
                    'Pix4D/example_cadastre/Downloaded_from_Pix4DMapper/Cadastre_transparent_mosaic_group1.tif'];
geotiffFile = ['/media/data/bruppik/', ...
                infixPath, ...
                'Pix4D/example_cadastre/Downloaded_from_Pix4DMapper/Cadastre_dsm.tif'];

% orthoimage
% Matrix of dimensions [10161, 13562, 4] and format uint8           
orthoimage = imread(orthoimageFile);
% dsm - Digital Surface Model
% The entry is '-10000' for points not in the depthmap/orthoimage
dsm = imread(geotiffFile);