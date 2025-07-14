---
title: "CODE AGENT: 윈도우에서 CODEX CLI 설치 및 사용 가이드"
date: 2025-07-14 12:24:46 +0900
description: "윈도우(WSL) 환경에서 CODE AGENT(Codex CLI)를 설치하고 활용하는 방법을 단계별로 안내합니다."
categories: [ai, 개발]
tags: [ai, 개발, codex, gpt, coding, code, agent]
image: "/assets/images/post/og-codex-cli.png"
header:
  image: "/assets/images/post/og-codex-cli.png"
  overlay_color: "rgba(0, 0, 0, 0.5)"
---

# 🎉 CODE AGENT(Codex CLI) 사용 가이드 🎉

> **개요:** 윈도우 환경에서 WSL, Node.js를 준비하고 CODE AGENT(Codex CLI)와 Gemini CLI를 설치하여 실전에서 활용하는 방법을 단계별로 안내합니다.

![Codex CLI 배너]({{ "/assets/images/post/og-codex-cli.png" | relative_url }})

## 1\. 개발 환경의 시작: WSL(Windows Subsystem for Linux) 설치 🐧

OpenAI CLI와 같은 최신 개발 도구들은 Linux 환경에서 가장 원활하게 작동합니다. WSL은 윈도우에서 가상 머신 없이도 리눅스를 직접 실행할 수 있게 해주는 강력한 기능입니다. 개발에 필요한 다양한 도구들을 네이티브처럼 사용할 수 있어 윈도우 사용자에게는 필수 환경이 되었습니다.

**PowerShell을 관리자 권한으로 실행**한 후, 아래 명령어를 입력하여 Ubuntu 배포판을 설치하세요.

```powershell
wsl --install -d Ubuntu
```

설치가 완료되면 컴퓨터를 재부팅해야 할 수 있습니다. 이후 시작 메뉴에서 'Ubuntu'를 찾아 실행합니다.

-----

## 2\. Node.js 설치: nvm으로 스마트하게 관리하기 🚀

OpenAI CLI는 Node.js 기반으로 만들어졌습니다. 안정적인 사용을 위해 **Node.js 18 버전 이상**의 설치가 권장됩니다. 다양한 프로젝트에서 각기 다른 Node.js 버전을 요구하는 경우가 많으므로, 버전 관리 도구인 \*\*nvm(Node Version Manager)\*\*을 사용하여 설치하는 것이 가장 좋습니다.

아래 명령어들을 WSL Ubuntu 셸에서 순서대로 실행하세요.

```bash
# 1. nvm 설치 스크립트 다운로드 및 실행
# curl을 이용해 nvm 공식 저장소에서 설치 스크립트를 가져와 실행합니다.
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash

# 2. nvm 환경 변수 적용
# 터미널을 껐다 켜지 않고 바로 nvm을 사용하기 위해 설정을 즉시 로드합니다.
source ~/.bashrc

# 3. Node.js 최신 LTS(Long Term Support) 버전 설치
# nvm을 통해 가장 안정적인 최신 버전을 설치하고 기본으로 사용하도록 설정합니다.
nvm install --lts
```

설치가 잘 되었는지 확인하기 위해 아래 명령어로 버전을 확인해 보세요. 버전 번호가 정상적으로 출력된다면 성공입니다\!

```bash
node -v
npm -v
```

-----

네, 알겠습니다. 3번 항목을 요청하신 대로 **Codex CLI**와 **Gemini CLI** 설치 및 **Google 로그인** 방법으로 수정해 드리겠습니다.

최신 정보를 반영하여 두 가지 강력한 AI 에이전트를 모두 사용할 수 있도록 안내해 드릴게요.

-----

### **수정된 블로그 섹션:**

## 3\. AI 에이전트 CLI 설치 및 인증 🛠️

이제 터미널에서 직접 사용할 AI 코드 어시스턴트를 설치할 차례입니다. 여기서는 대표적인 두 가지 CLI, 즉 **OpenAI의 Codex CLI**와 **Google의 Gemini CLI**를 설치하고 인증하는 방법을 각각 안내합니다.

### 3.1. OpenAI Codex CLI 설치 및 API 키 설정

Codex CLI는 OpenAI 모델을 기반으로 터미널에서 코드 생성, 수정, 설명 등의 작업을 수행하는 에이전트입니다.

1.  **Codex CLI 설치**
    `npm`을 사용하여 `@openai/codex` 패키지를 전역(`-g`)으로 설치합니다.

    ```bash
    # WSL 터미널에서 실행
    npm install -g @openai/codex
    ```

<!-- 2.  **API 키 설정 (⭐필수)**
    Codex CLI를 사용하려면 **OpenAI API 키**가 필요합니다.

      - \*\*[OpenAI Platform](https://platform.openai.com/api-keys)\*\*에 방문하여 API 키를 발급받으세요.
      - 발급받은 키를 아래와 같이 환경 변수로 등록합니다. `sk-xxxx...` 부분을 본인의 키로 교체해 주세요.

    ```bash
    # API 키를 환경 변수로 등록하고, 터미널을 재시작해도 유지되도록 .bashrc에 저장합니다.
    export OPENAI_API_KEY='sk-xxxx...'
    echo "export OPENAI_API_KEY='sk-xxxx...'" >> ~/.bashrc
    ```-->

2. **로그인**
    ```bash
    codex login
    ```

로그인 완료되면 `codex` 명령어로 작동을 확인할 수 있습니다.

-----

### 3.2. Google Gemini CLI 설치 및 Google 계정 연동

Gemini CLI는 Google의 강력한 Gemini 모델을 터미널에서 대화형으로 사용할 수 있게 해주는 도구입니다. 가장 큰 장점은 **별도의 API 키 설정 없이 Google 계정으로 간편하게 로그인**하여 무료 사용량 내에서 자유롭게 이용할 수 있다는 점입니다.

1.  **Gemini CLI 설치**
    마찬가지로 `npm`을 사용해 `@google/gemini-cli` 패키지를 설치합니다.

    ```bash
    # WSL 터미널에서 실행
    npm install -g @google/gemini-cli
    ```

2.  **Google 계정으로 로그인 (가장 간편한 방법)**
    설치 후, 터미널에 `gemini` 명령어만 입력하면 됩니다.

    ```bash
    # gemini 명령어 실행
    gemini
    ```

      - 명령어를 처음 실행하면, 인증을 위한 안내가 나타납니다.
      - **"Login with Google"** 옵션을 선택하면 자동으로 웹 브라우저가 열립니다.
      - 사용하려는 **Google 계정으로 로그인하고 권한을 허용**하면, 터미널에 인증이 완료되어 바로 Gemini와 대화를 시작할 수 있습니다.

이제 여러분의 터미널은 OpenAI와 Google의 AI를 모두 활용할 수 있는 강력한 개발 도구로 거듭났습니다\!

-----

## 4. 대화형 AI 에이전트 사용법: `codex`와 `gemini` 💬

`codex`와 `gemini` 명령어는 터미널에서 직접 AI와 대화하며 작업을 수행하는 강력한 방법을 제공합니다. 단순히 명령어만 입력하면 대화형 모드로 진입하여, 마치 채팅하듯 질문하고 답변을 받을 수 있습니다.

### 4.1. 대화형 모드 시작하기

터미널에 아래 명령어 중 하나를 입력하여 각 AI 에이전트와 대화를 시작하세요.

```bash
# Codex AI 에이전트와 대화 시작
codex
```

```bash
# Gemini AI 에이전트와 대화 시작
gemini
```

명령어를 실행하면, 프롬프트가 나타나며 사용자의 입력을 기다립니다. 여기에 자연어(한국어 또는 영어)로 원하는 작업을 지시하면 됩니다.

**예시:**
> `(gemini-cli) >` 현재 폴더에서 `.log` 확장자를 가진 파일을 모두 삭제하는 터미널 명령어를 알려줘.

### 4.2. 슬래시(/) 명령어 활용하기

대화형 모드에서는 `/`로 시작하는 특별한 명령어들을 사용할 수 있습니다. 이 명령어들은 대화의 흐름을 제어하거나 추가적인 기능을 활용할 때 매우 유용합니다.

아래는 몇 가지 유용한 슬래시 명령어 예시입니다.

*   `/help`: 사용 가능한 모든 슬래시 명령어 목록과 설명을 보여줍니다.
*   `/file <파일명>`: 특정 파일의 내용을 현재 대화의 컨텍스트에 추가합니다. AI가 파일 내용을 참고하여 답변을 생성하게 할 수 있습니다.
    > `(gemini-cli) > /file src/main.js`
*   `/shell <명령어>`: 터미널 명령어를 직접 실행하고 그 결과를 AI에게 전달합니다. 디버깅이나 상태 확인에 유용합니다.
    > `(gemini-cli) > /shell ls -al`
*   `/clear`: 현재까지의 대화 내용을 모두 지우고 새로운 세션을 시작합니다.
*   `/quit` 또는 `/exit`: 대화형 모드를 종료하고 일반 터미널로 돌아갑니다.

이러한 기능들을 활용하면, 단순한 질의응답을 넘어 파일 수정, 명령어 실행, 디버깅 등 복잡한 개발 작업을 터미널 안에서 효율적으로 처리할 수 있습니다.

-----

<!-- ## 5\. 번외: 자동 설치용 Windows 배치(.bat) 스크립트 ⚙️

위 모든 과정을 한 번에 실행하고 싶다면, 아래 코드를 메모장에 붙여넣고 `install_dev_tools.bat`과 같은 이름으로 저장하세요. 그리고 파일을 **관리자 권한으로 실행**하면 WSL, nvm, Node.js, OpenAI CLI 설치가 자동으로 진행됩니다.

**주의:** 이 스크립트는 설치 과정만 자동화합니다. **API 키 설정은 스크립트 실행 후 WSL 터미널에서 직접 진행해야 합니다.** -->

<!-- ```bat
@echo off
chcp 65001
cls

REM ==============================================================
REM 자동 설치 스크립트: WSL, nvm, Node.js, OpenAI CLI
REM 최종 수정: 2025-07-14
REM ==============================================================

echo [1/4] WSL (Ubuntu) 설치를 시작합니다.
wsl --install -d Ubuntu
if %errorlevel% neq 0 (
    echo WSL 설치에 실패했습니다.
    pause
    exit /b
)

echo.
echo [2/4] nvm(Node Version Manager) 및 Node.js LTS 설치를 시작합니다.
wsl -e bash -c "curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash && export NVM_DIR=\"$HOME/.nvm\" && [ -s \"$NVM_DIR/nvm.sh\" ] && \. \"$NVM_DIR/nvm.sh\" && nvm install --lts"
if %errorlevel% neq 0 (
    echo Node.js 설치에 실패했습니다.
    pause
    exit /b
)

echo.
echo [3/4] OpenAI CLI 패키지 설치를 시작합니다.
wsl -e bash -c "source ~/.bashrc && npm install -g openai"
if %errorlevel% neq 0 (
    echo OpenAI CLI 설치에 실패했습니다.
    pause
    exit /b
)

echo.
echo [4/4] 모든 설치가 성공적으로 완료되었습니다!
echo.
echo ====================================================================
echo [중요!] 다음 단계를 꼭 진행해 주세요.
echo 1. 시작 메뉴에서 'Ubuntu'를 실행하여 WSL 터미널을 엽니다.
echo 2. 'openai --version' 명령어로 설치를 확인합니다.
echo 3. OpenAI 웹사이트에서 API 키를 발급받은 후, 아래 명령어로 등록하세요.
echo    export OPENAI_API_KEY='YOUR_API_KEY'
echo    echo \"export OPENAI_API_KEY='YOUR_API_KEY'\" ^>^> ~/.bashrc
echo ====================================================================
echo.
pause
``` -->

-----

*게시일: 2025-07-14*<br>
*작성: A Developer*<br>
*태그: ai, 개발, openai, gpt, coding, cli, wsl, nodejs, agent*<br>
