cd $SRC/libsrtp
git checkout fuzzing
git fetch origin fuzzing
autoreconf -ivf
./configure
LIBFUZZER="-lFuzzingEngine" make srtp-fuzzer
zip -r srtp-fuzzer_seed_corpus.zip fuzzer/corpus
cp $SRC/libsrtp/fuzzer/srtp-fuzzer $OUT
cp srtp-fuzzer_seed_corpus.zip $OUT