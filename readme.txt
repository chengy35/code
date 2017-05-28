                   MatAction (Action analysis Toolbox)
                            Version 0.1.x

  About
  MatAction is a Matlab toolbox for action analysis in computer vision community, 
  and also provides many useful basic functions. It supports both Linux OS and Windows OS.
  Moreover, MatAction is going to provide basic pipelines for most of action datasets.
  
  Dependencies
    vlfeat-0.9.17
    opencv-2.4.9
    libsvm-3.14
  Note: all the related functions from vlfeat and libsvm are included in 'mex' directory, 
  but you may still need to install or compile them due to different OS and MATLAB version
  and add them to the matlab path.
  
  Installation
  Find the details in 'HMDB51_IDTFV.m' and 'JHMDB_IDTFV.m' files.

  Update
  v0.1.3    Provide the baseline of the JHMDB dataset with IDT and Fisher vectors.
            A few bugs are fixed.
            
  v0.1.2    Add util/encodeFeatures.m, it provides 10 kinds of encoding methods.
            A few bugs are fixed.
            
  v0.1.1    A few bugs are fixed.
  
  v0.1.0    Initial public release. Give a pipeline for the HMDB51 with IDT and Fisher vectors.

