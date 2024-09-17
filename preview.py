from datasets import load_dataset
from transformers import AutoTokenizer

dataset = load_dataset("mmnga/wikipedia-ja-20230720-1k", split="train")

model_dir = "./Mistral-7B-v0.1/"
tokenizer = AutoTokenizer.from_pretrained(model_dir, trust_remote_code=False)
tokenizer.pad_token = tokenizer.eos_token
# https://huggingface.co/docs/transformers/llm_tutorial#wrong-padding-side
tokenizer.padding_side = 'left'

print(len(dataset['text']))
traindataset = tokenizer(dataset['text'], return_tensors='pt', max_length=4096, truncation=True, padding="max_length")

print(traindataset[0])
# print(traindataset[0].ids)
# print(traindataset[0].attention_mask)
print(traindataset['input_ids'][0])
print(traindataset['attention_mask'][0])
# decoded_text = tokenizer.decode(traindataset[0].ids, skip_special_tokens=False)
decoded_text = tokenizer.decode(traindataset['input_ids'][0], skip_special_tokens=False)
print(decoded_text)
