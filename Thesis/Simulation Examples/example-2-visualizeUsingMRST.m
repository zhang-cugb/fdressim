[nx,ny,nz] = deal( 20, 10, 1);
[Lx,Ly,Lz] = deal( 5000, 1000, 75);
G = cartGrid([nx, ny, nz], [Lx, Ly, Lz ]);
G = computeGeometry(G);


% p_init = [1000, 1000, 1000, 1000, 1000, 1000, 1000, 1000, 1000, 1000, 2000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000, 3000];

% p_init = [5978.0699, 5945.3502, 5848.545, 5626.0741, 5801.8115, 5978.0699, 5945.3502, 5848.5357, 5622.7656, 5801.8023];

% p_init = [5989.2946, 5970.8652, 5909.842, 5740.1052, 5884.3253, 5993.0372, 5983.4013, 5957.9358, 5917.2219, 5943.9102, 5995.737, 5991.0811, 5980.7655, 5968.7725, 5973.5839, 5989.2946, 5970.8652, 5909.8328, 5736.8059, 5884.316, 5993.0372, 5983.4013, 5957.9358, 5917.2127, 5943.9102, 5995.737, 5991.0811, 5980.7655, 5968.7725, 5973.5839];

p_init = [5356.6452, 5344.074, 5318.8749, 5280.9347, 5230.0844, 5166.0986, 5088.6908, 4997.5025, 4892.0871, 4771.9271, 4636.7106, 4487.9222, 4335.903, 4223.6236, 4255.7778, 4327.1616, 4394.2422, 4446.1277, 4480.8143, 4498.1284, 5356.6456, 5344.0747, 5318.8761, 5280.9372, 5230.0897, 5166.1098, 5088.7136, 4997.5464, 4892.16, 4771.9939, 4636.4833, 4485.9852, 4327.0418, 4197.9682, 4246.9145, 4325.2247, 4394.0172, 4446.1999, 4480.8985, 4498.1953, 5356.6463, 5344.0758, 5318.8784, 5280.9421, 5230.1, 5166.1313, 5088.7578, 4997.633, 4892.3113, 4772.1735, 4636.2549, 4482.9449, 4310.8962, 4141.2765, 4230.7653, 4322.1848, 4393.7934, 4446.39, 4481.0716, 4498.3262, 5356.6473, 5344.0774, 5318.8816, 5280.9487, 5230.1142, 5166.1612, 5088.8201, 4997.7586, 4892.547, 4772.5358, 4636.4099, 4480.4466, 4291.8518, 4040.5527, 4211.7168, 4319.6881, 4393.9551, 4446.7669, 4481.3376, 4498.5144, 5356.6485, 5344.0793, 5318.8854, 5280.9566, 5230.131, 5166.1969, 5088.8956, 4997.9158, 4892.8644, 4773.1342, 4637.3393, 4480.7113, 4280.3189, 3869.5989, 4200.1821, 4319.9565, 4394.8931, 4447.3827, 4481.6913, 4498.7475, 5356.6497, 5344.0813, 5318.8893, 5280.965, 5230.1488, 5166.2351, 5088.9776, 4998.092, 4893.2442, 4773.9607, 4639.2024, 4485.5191, 4299.8864, 4050.4938, 4219.7564, 4324.7706, 4396.766, 4448.228, 4482.1099, 4499.0062, 5356.6509, 5344.0832, 5318.8931, 5280.9729, 5230.1659, 5166.2721, 5089.058, 4998.2698, 4893.6475, 4774.921, 4641.6943, 4492.9811, 4327.1337, 4161.7585, 4247.0126, 4332.2403, 4399.2678, 4449.2064, 4482.5507, 4499.2649, 5356.6519, 5344.0848, 5318.8963, 5280.9797, 5230.1805, 5166.3039, 5089.1284, 4998.4287, 4894.0214, 4775.8593, 4644.2653, 4500.7292, 4351.795, 4230.3419, 4271.6819, 4339.9958, 4401.8477, 4450.1605, 4482.9571, 4499.4945, 5356.6526, 5344.086, 5318.8986, 5280.9847, 5230.1912, 5166.3274, 5089.1805, 4998.5484, 4894.31, 4776.605, 4646.3488, 4506.8878, 4369.5546, 4270.3217, 4289.4472, 4346.1599, 4403.9378, 4450.9176, 4483.2696, 4499.6666, 5356.653, 5344.0866, 5318.8998, 5280.9873, 5230.1969, 5166.3398, 5089.2083, 4998.6127, 4894.4673, 4777.0171, 4647.5073, 4510.2538, 4378.7166, 4288.8168, 4298.6122, 4349.5289, 4405.0999, 4451.3358, 4483.4394, 4499.7589]; 


p_init = reshape(p_init, [], 1);


show = true(G.cells.num,1);
% % cellInx = sub2ind(G.cartDims, ...
% % [I-1; I-1; I; I; I(1:2)-1], ...
% % [J ; J; J; J; nperf +[2;2]], ...
% % [K-1; K; K; K-1; K(1:2)-[0;1]]);
% show(cellInx) = false;
plotCellData(G, p_init, show, ...
'EdgeColor','k' );
% plotWell(G,W, 'height' ,10);
view(3), camproj perspective, colorbar
