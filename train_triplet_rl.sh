#/bin/bash
CUDA_VISIBLE_DEVICES=7 python train.py --id transformer_triplet_rl --caption_model transformer_triplet --checkpoint_path log_transformer_triplet_rl --label_smoothing 0.0 --batch_size 10 --learning_rate 4e-5 --num_layers 4 --input_encoding_size 512 --rnn_size 2048 --learning_rate_decay_start 17  --learning_rate_decay_rate 0.8  --scheduled_sampling_start 0 --save_checkpoint_every 3000 --language_eval 1 --val_images_use 5000 --self_critical_after 17 --max_epochs 58 --loader_num_workers 4 --start_from log_transformer_triplet_rl  --sg_label_embed_size 512 --seq_per_img 5 --use_box 1
