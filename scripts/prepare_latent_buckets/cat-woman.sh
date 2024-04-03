DATA_PATH="/cognitive_comp/wuxiaojun/IDEA-CCNL/taiyi-diffusion-xl/data/catwomen_data"
LARENTS_POSTFIX="_latents_1024"
META_CLEAN_PATH="/cognitive_comp/wuxiaojun/IDEA-CCNL/taiyi-diffusion-xl/data/catwomen_data/json/meta_clean.json"
META_LAT_PATH="/cognitive_comp/wuxiaojun/IDEA-CCNL/taiyi-diffusion-xl/data/catwomen_data/json/meta_lat.json"
SDXL_PATH="/cognitive_comp/wuxiaojun/pretrained/Taiyi-Stable-Diffusion-XL-3.5B/taiyi_diffusion_xl.safetensors"

CUDA_VISIBLE_DEVICES=0 python ./finetune/prepare_buckets_latents.py \
$DATA_PATH \
$LARENTS_POSTFIX \
$META_CLEAN_PATH \
$META_LAT_PATH \
$SDXL_PATH \
--batch_size 24 \
--max_resolution "1024,1024" \
--max_bucket_reso 1024 \
--bucket_reso_steps 64 