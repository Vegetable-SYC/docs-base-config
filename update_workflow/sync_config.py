import argparse
import re

def sync_config(source_path, target_path):
    # 读取模板内容
    with open(source_path, 'r', encoding='utf-8') as f:
        base_content = f.read()

    # 读取目标文件
    with open(target_path, 'r', encoding='utf-8') as f:
        target_content = f.read()

    # 使用正则表达式替换配置区块
    updated_content = re.sub(
        r'# >>> BEGIN BASE CONFIG.*?# <<< END BASE CONFIG',
        base_content,
        target_content,
        flags=re.DOTALL
    )

    # 写回文件
    with open(target_path, 'w', encoding='utf-8') as f:
        f.write(updated_content)

# 处理 requirements.txt 的替换逻辑
def sync_requirements(source_req, target_req):
    # 读取模板内容
    with open(source_req, 'r', encoding='utf-8') as f:
        req_content = f.read()
    
    # 覆盖写入目标文件（使用覆盖模式而非正则替换）
    with open(target_req, 'w', encoding='utf-8') as f:
        f.write(req_content)

if __name__ == '__main__':
    parser = argparse.ArgumentParser()
    parser.add_argument('--source', required=True)
    parser.add_argument('--target', required=True)
    
    # requirements
    parser.add_argument('--source_req', required=False)
    parser.add_argument('--target_req', required=False)
    args = parser.parse_args()
    
    sync_config(args.source, args.target)
    sync_requirements(args.source_req, args.target_req)