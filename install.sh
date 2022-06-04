flag=$(pkg-config --cflags --libs eigen3)

cd code/mex
mex $flag SampleHMMStateSeqWithQsC.cpp
mex $flag SampleHMMStateSeqC.cpp
mex $flag MySmoothBackC.cpp
mex $flag FilterFwdC.cpp
