FROM python:3

WORKDIR /usr/src/app

COPY requirements.txt ./
RUN pip3 config set global.index-url https://mirrors.aliyun.com/pypi/simple/
RUN pip3 install --no-cache-dir -r requirements.txt

COPY token_extractor.py ./

CMD [ "python", "./token_extractor.py" ]
