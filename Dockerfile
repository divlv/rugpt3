#
# Base image for Sber's ruGPT-3 simple console variant
#
FROM python:3.6

RUN mkdir -p /rugpt

# Python requirements
COPY ./requirements.txt /rugpt/requirements.txt


RUN apt-get -y update
#RUN apt-get -y install llvm-9-dev

WORKDIR /rugpt

RUN pip3 install -r requirements.txt

COPY ./generate_transformers.py /rugpt/generate_transformers.py

RUN python generate_transformers.py --model_type=gpt2 --model_name_or_path=sberbank-ai/rugpt3large_based_on_gpt2 --k=5 --p=0.95 --length=100 --prompt="Docker image собрался"
