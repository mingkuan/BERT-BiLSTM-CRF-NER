#!/usr/bin/env bash

export BERT_BASE_DIR=../bert/pretrained/chinese_L-12_H-768_A-12            #uncased_L-12_H-768_A-12
export DATA_DIR=./NERdata/


python bert_lstm_ner.py   \
              --task_name="NER"  \
              --do_train=True   \
              --do_eval=True   \
              --do_predict=True \
              --data_dir=$DATA_DIR   \
              --vocab_file=$BERT_BASE_DIR/vocab.txt  \
              --bert_config_file=$BERT_BASE_DIR/bert_config.json \
              --init_checkpoint=$BERT_BASE_DIR/bert_model.ckpt   \
              --max_seq_length=128   \
              --train_batch_size=32   \
              --learning_rate=2e-5   \
              --num_train_epochs=3.0   \
              --output_dir=./output/result_dir/