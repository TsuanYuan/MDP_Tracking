function evaluate_cem

opt = globals();
seq_set = 'train';
seq_name = 'PETS09-S2L1';
results = '/home/yuxiang/Projects/Multitarget_Tracking/MOTbenchmark/devkit/res/data';


% evaluation
benchmark_dir = fullfile(opt.mot, opt.mot2d, seq_set, filesep);
evaluateTracking({seq_name}, results, benchmark_dir);