# PYTHON

##  AWS Lambda 함수로 S3에 파일 업로드 구현

### 코드
```py
class TreeNode:
    def __init__(self):
        self.left = None
        self.data = None
        self.right = None

## 전역변수 선언 부분 ##
import json
import boto3
from datetime import datetime

def lambda_handler(event, context):
    s3 = boto3.client('s3')
    bucket_name = 'sgu-202564-s3'
    prefix = 'uploaded/'

    now = datetime.now().strftime('%Y-%m-%d_%H-%M-%S')
    filename = f'{prefix}hello_{now}.txt'
    content = f'Hello! This file was created at {now}'

    # S3에 파일 업로드
    s3.put_object(
        Bucket=bucket_name,
        Key = filename,
        Body = content.encode('utf-8')
    )

    return {
    "statusCode": 200,
    "statusDescription": "200 Ok",  # 콤마 추가
    "isBase64Encoded": False,
    "headers": {
        "Content-Type": "application/json"
    },
    "body": '{"message": "업로드"}'
}

```