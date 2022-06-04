flag=$(pkg-config --cflags --libs eigen3)

cd code/mex
mex $flag SampleHMMStateSeqWithQsC.cpp
mex $flag SampleHMMStateSeqC.cpp
mex $flag MySmoothBackC.cpp
mex $flag FilterFwdC.cpp
find ~+ -name "*.m"|xargs -I{} ln -sf {} "$(pwd)/allcode"
find ~+ -name "*.mexa64"|xargs -I{} ln -sf {} "$(pwd)/allcode"
