function [videoname, classlabel,fv_dir, vocab_dir, descriptor_path, video_dir,actions, tr_index] = getConfig(split, DATASET)
    % TODO : Change the paths
    switch DATASET
        case 'hmdb51'
            fv_dir = ['/mnt/remote/hmdb51Data/descriptor', num2str(split)]; % Path where features will be saved
            vocab_dir = '/mnt/remote/hmdb51Data/Vocab';
            descriptor_path = '/mnt/remote/hmdb51Data/descriptor';
            video_dir = '/mnt/remote/hmdb51';
            splitdir = '/mnt/remote/hmdb51Data/testTrainMulti_7030_splits';
            [videoname, classlabel, tr_index, /mnt, /mnt, actions]= getHmdbSplit(split,splitdir);
        case 'jhmdb'
            fv_dir = ['/home/lear/xpeng/data/JHMDB/features/idt_fvecs_split', num2str(split)]; % Path where features will be saved
            vocab_dir = '/mnttemp';
            descriptor_path = '/home/lear/xpeng/data/JHMDB/features/jhmdb_idt';%'E:\myfile\code\testdata';
            video_dir = '/home/lear/xpeng/data/JHMDB/philippeJHMDB/original/JHMDB_video/ReCompress_Videos';%'H:\data\hmdb51_org_idt';
            splitdir = '/home/lear/xpeng/data/JHMDB/philippeJHMDB/original/splits';%'H:\data\HMDB51_TestTrain_7030_splits';
            [videoname, classlabel, tr_index, /mnt, /mnt, actions]= getJhmdbSplit(split,splitdir);
    end
end
