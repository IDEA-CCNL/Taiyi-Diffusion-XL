

accelerate launch \
  --config_file "./config/accelerate_config/default_config.yaml" \
  --num_cpu_threads_per_process=8 \
  sdxl_train.py \
  --config_file="./config/train_config/model_TaiyiXL_data_catwoman.toml" \
  --sample_prompts="./config/sample_config/catwoman.toml"
  