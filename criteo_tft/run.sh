export LOCAL_OUTPUT_DIR=/data/joao/cloudml-samples_criteo/data/preprocessed
export TRAINING_OUTPUT_PATH=/data/joao/cloudml-samples_criteo/train_sgd_andrew_lr_0.5

python -m trainer.task \
          --learning_rate 0.5\
          --dataset kaggle \
          --l2_regularization 60 \
          --train_data_paths $LOCAL_OUTPUT_DIR/features_train* \
          --eval_data_paths $LOCAL_OUTPUT_DIR/features_eval* \
          --raw_metadata_path $LOCAL_OUTPUT_DIR/raw_metadata \
          --transformed_metadata_path $LOCAL_OUTPUT_DIR/transformed_metadata \
          --transform_savedmodel $LOCAL_OUTPUT_DIR/transform_fn \
          --output_path $TRAINING_OUTPUT_PATH --ignore_crosses
