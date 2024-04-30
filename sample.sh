export PYTORCH_CUDA_ALLOC_CONF=expandable_segments:True

python -m quantkit.cli gptq Sdff-Ltba/LightChatAssistant-2x7B -out LightChatAssistant-2x7B-GPTQ
# python -m quantkit.cli gptq Phind/Phind-CodeLlama-34B-v2 -out Phind-CodeLlama-34B-v2-GPTQ
# python -m quantkit.cli awq Phind/Phind-CodeLlama-34B-v2 -out Phind-CodeLlama-34B-v2-AWQ
# python -m quantkit.cli gptq CohereForAI/c4ai-command-r-v01 -out c4ai-command-r-v01-GPTQ
# python -m quantkit.cli awq CohereForAI/c4ai-command-r-v01 -out c4ai-command-r-v01-AWQ
# python -m quantkit.cli gptq elyza/ELYZA-japanese-Llama-2-13b-instruct -out ELYZA-japanese-Llama-2-13b-instruct-GPTQ
# python -m quantkit.cli awq elyza/ELYZA-japanese-Llama-2-13b-fast-instruct -out ELYZA-japanese-Llama-2-13b-fast-instruct-AWQ
# python -m quantkit.cli awq Rakuten/RakutenAI-7B-chat -out RakutenAI-7B-chat-AWQ
