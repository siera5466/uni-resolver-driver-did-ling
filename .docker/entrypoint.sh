#!/bin/sh

# 필요한 디렉토리 생성
mkdir -p /app/src/ling-client/config

# config.json 생성 또는 수정
cat <<EOF > /app/src/ling-client/config/config.json
{
  "addr": ":9800",
  "testnet": "${SERVER_HOST}",
  "requestAPI": "/request",
  "registryAPI": "/registry",
  "revokeAPI": "/revoke"
}
EOF

# 실행 위치 설정
cd /app/src/ling-client

# 애플리케이션 실행
/app/ling-client