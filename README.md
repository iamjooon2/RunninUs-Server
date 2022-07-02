# RunninUs-Server

boilerplate로 써먹을 것 같아서 따로 뺌

# 설계 UMLs

[DB스키마](https://app.quickdatabasediagrams.com/#/d/AjMt8U)

# gettings started

```
npm run dev
```

# package structue
```
  📂 git@bonobonoz/RunninUs-Server
  ┣📂 src
    ┣📂 assets # DB 생성 쿼리와 접근 쿼리
    ┣📂 controllers/v1 # REST API controllers
    ┣📂 errors # 사용자 지정 error들
    ┣📂 guards # typescript type guard
    ┣📂 libraries # DB 어댑터
    ┣📂 middlewares # REST API middlewares
    ┣📂 routers/v1 # 메서드 종류와 요청에 따른 분기를 다룸 
    ┣📂 types # TypeScript type들을 담는 곳
    ┣📂 utilities 
    ┣📂 validators 
    ┣📜 app.ts 
  ┣ .env.example # .env파일 예제
  ┣ tsconfig.json
  ┣ package.json

```

# makefile
``` 
make generate-docs # 요거하면 코드 dependency graph가 바뀌어요
```
