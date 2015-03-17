function opt = globals()

opt.root = pwd;
opt.mot = '/home/yuxiang/Projects/Multitarget_Tracking/MOTbenchmark';
opt.mot2d = '2DMOT2015';
opt.results = 'results';

opt.mot2d_train_seqs = {'TUD-Stadtmitte', 'TUD-Campus', 'PETS09-S2L1', ...
    'ETH-Bahnhof', 'ETH-Sunnyday', 'ETH-Pedcross2', 'ADL-Rundle-6', ...
    'ADL-Rundle-8', 'KITTI-13', 'KITTI-17', 'Venice-2'};
opt.mot2d_train_nums = [179, 71, 795, 1000, 354, 840, 525, 654, 340, 145, 600];
opt.mot2d_train_scene = [0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0];

opt.mot2d_test_seqs = {'TUD-Crossing', 'PETS09-S2L2', 'ETH-Jelmoli', ...
    'ETH-Linthescher', 'ETH-Crossing', 'AVG-TownCentre', 'ADL-Rundle-1', ...
    'ADL-Rundle-3', 'KITTI-16', 'KITTI-19', 'Venice-1'};
opt.mot2d_test_nums = [201, 436, 440, 1194, 219, 450, 500, 625, 209, 1059, 450];

addpath(fullfile(opt.mot, 'devkit', 'utils'));
addpath([opt.root '/3rd_party/libsvm-3.20/matlab']);

% parameters
opt.overlap_occ = 0.7;
opt.overlap_neg = 0.5;
opt.max_occlusion = 50;
opt.tracked = 4;
opt.exit_threshold = 0.2;
opt.weight_tracking = 5;
opt.weight_association = 1;