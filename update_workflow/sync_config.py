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

if __name__ == '__main__':
    parser = argparse.ArgumentParser()
    parser.add_argument('--source', required=True)
    parser.add_argument('--target', required=True)
    args = parser.parse_args()
    
    sync_config(args.source, args.target)