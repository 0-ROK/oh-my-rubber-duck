# oh-my-rubber-duck

Harvard CS50의 러버덕 디버거에서 영감을 받은 Claude Code 스킬입니다.

코드의 버그를 직접 알려주는 대신, 소크라테스식 질문을 통해 사용자가 스스로 문제를 발견하도록 유도합니다.

## 설치

```bash
# 저장소 클론
git clone https://github.com/0-ROK/oh-my-rubber-duck.git

# 스킬 파일과 아트 스크립트를 Claude Code 커맨드 디렉토리에 복사
mkdir -p ~/.claude/commands
cp oh-my-rubber-duck/rubber-duck.md ~/.claude/commands/
cp oh-my-rubber-duck/duck-art.sh ~/.claude/commands/
```

또는 파일을 직접 다운로드:

```bash
mkdir -p ~/.claude/commands
curl -o ~/.claude/commands/rubber-duck.md \
  https://raw.githubusercontent.com/0-ROK/oh-my-rubber-duck/main/rubber-duck.md
curl -o ~/.claude/commands/duck-art.sh \
  https://raw.githubusercontent.com/0-ROK/oh-my-rubber-duck/main/duck-art.sh
```

## 사용법

Claude Code에서 `/rubber-duck` 명령으로 호출합니다.

```
# 파일을 지정해서 디버깅
/rubber-duck src/utils/sort.ts

# 문제를 설명하며 디버깅
/rubber-duck 배열 정렬이 제대로 안 돼요

# 인자 없이 시작
/rubber-duck
```

## 러버덕 디버깅이란?

러버덕 디버깅은 코드를 한 줄씩 고무 오리에게 설명하면서 버그를 스스로 발견하는 디버깅 기법입니다. 1999년 "The Pragmatic Programmer"에서 유래했으며, Harvard CS50에서는 이를 AI에 적용하여 학생들이 스스로 문제를 해결하도록 돕고 있습니다.

### 동작 방식

1. 꽥꽥이(러버덕)가 등장하여 어떤 문제인지 물어봅니다
2. 코드가 무엇을 해야 하는지 본인의 말로 설명하도록 유도합니다
3. 코드를 한 줄씩 설명하게 하며, 기대와 실제의 차이를 발견하도록 합니다
4. 문제를 찾으면 축하하고, 해결 방법도 스스로 생각하도록 유도합니다

### 핵심 원칙

- 절대 답을 직접 알려주지 않습니다
- 질문으로만 사고를 유도합니다
- 막혔을 때 힌트를 요청하면 점진적으로 범위를 좁혀줍니다

## 라이선스

MIT
