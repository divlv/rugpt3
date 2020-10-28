# Simplified ruGPT3

Simplified version of ruGPT3-powered text generator based on https://github.com/sberbank-ai/ru-gpts project.

It's aimed to use just like this:

```
docker run -it rugpt1 python /rugpt/generate_transformers.py --model_type=gpt2 --model_name_or_path=sberbank-ai/rugpt3large_based_on_gpt2 --k=5 --p=0.95 --length=100 --prompt="Открытое ПО творит чудеса"
Открытое ПО творит чудеса, но не для всех.

В чем смысл? В том, что ты можешь сделать, если ты хочешь. Если ты можешь это сделать, ты можешь делать это, если у тебя есть силы...
```
"Simplified" in this context means - removed all the unnecessary diagnostic and logging messages. Just your command and resulting output.
