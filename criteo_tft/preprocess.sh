LOCAL_DATA_DIR=/data/joao/cloudml-samples_criteo/data/
head -n 44000000 $LOCAL_DATA_DIR/train.txt > $LOCAL_DATA_DIR/train-44M.txt
tail -n 1000000 $LOCAL_DATA_DIR/train.txt > $LOCAL_DATA_DIR/eval-1M.txt
python preprocess.py --training_data $LOCAL_DATA_DIR/train-44M.txt \
                     --eval_data $LOCAL_DATA_DIR/eval-1M.txt \
                     --output_dir $LOCAL_DATA_DIR/preprocessed
