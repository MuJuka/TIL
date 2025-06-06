# PYTHON

##  AWS Lambda 함수로 사용자의 데이터를 DynamoDB에 저장하는 역할 구현

### 코드
```py
class TreeNode:
    def __init__(self):
        self.left = None
        self.data = None
        self.right = None

## 전역변수 선언 부분 ##
import boto3
import json
from datetime import datetime

def lambda_handler(event, context):
    try:
        # 요청 본문 파싱
        body = json.loads(event['body'])
        user_id = body['user_id']
        product = body['product']
        timestamp = datetime.now().isoformat()

        # 선택적 필드들 (있으면 저장, 없으면 None)
        reason = body.get('reason')
        brand = body.get('brand')
        price = body.get('price')
        color = body.get('color')

        # 저장할 항목 구성
        item = {
            'user_id': user_id,
            'timestamp': timestamp,
            'product': product
        }

        # 선택 필드가 있는 경우만 추가
        if reason: item['reason'] = reason
        if brand: item['brand'] = brand
        if price: item['price'] = price
        if color: item['color'] = color

        # DynamoDB 저장
        table = boto3.resource('dynamodb').Table('sgu-202564-user-likes-time')
        table.put_item(Item=item)

        return {
            'statusCode': 200,
            'body': json.dumps({
                'message': '저장 완료',
                'user_id': user_id,
                'timestamp': timestamp
            }, ensure_ascii=False)
        }

    except Exception as e:
        return {
            'statusCode': 400,
            'body': json.dumps({'error': str(e)}, ensure_ascii=False)
        }
```