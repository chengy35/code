function HMDB51_IDTFV()
%HMDB51_IDTFV:  Provide the baseline experiment on the HMDB51 dataset with
% Improved dense trajectories and Fisher vector.
% You may need to download video data for HMDB51 dataset.
%
% Note : Please check TODOs : change the paths etc..
% 
% Dependency : 
% 1. opencv-2.4.9
% 2. IDT (modified version which saves IDT in a faster scheme included in 'bin/')
%
% Version      : 0.1.0
% Release date : 2015/09/11
% Author       : Xiaojiang Peng | Email: xiaojiangp@gmail.com
% 
% If you find this useful, please refer to:
% Peng, X., Wang, L., Wang, X., Qiao, Y.: Bag of visual words and fusion methods for
%   action recognition: Comprehensive study and good practice. CoRR abs/1405.4506.(2014)

addpath('util')
addpath(genpath('mex'))
addpath('~/lib/vlfeat/toolbox');
vl_setup();
addpath('~/lib/spams-matlab/build');
setenv('LD_LIBRARY_PATH','/usr/local/lib/'); 
addpath('~/lib/liblinear/matlab');
addpath('~/lib/libsvm/matlab');
addpath(genpath('~/lib/lightspeed'));
addpath('~/lib/natsort');
des_accs = [];
for s = 1:3
        % TODO: change some paths in run_split function
        split_accs = run_hmdb_split('split',s, 'dataset', 'hmdb51');
        des_accs = [des_accs, split_accs];
end

des_accs = [des_accs, mean(des_accs,2)]  
end

