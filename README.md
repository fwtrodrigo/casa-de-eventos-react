# Casa de Eventos

Este é um **fork** do projeto [roofranklin/casa-de-eventos-react](https://github.com/roofranklin/casa-de-eventos-react), que implementa a contêinerização,  referente ao projeto final do módulo de **Contêinerização** do curso de DevOps da Ada Tech


## Instalação

### Via Repositório do GitHub

1. Clone o repositório:
```bash
git clone https://github.com/fwtrodrigo/casa-de-eventos-react.git
```
  
2. Entre na pasta do projeto:
```bash
cd casa-de-eventos-react
```

3. Construa a imagem Docker:
```bash
docker buildx build -t eventos .
```

4. Execute o contêiner:
```bash
docker container run -d --name eventos -p 4173:4173 -p 3000:3000 eventos
```

### Via Docker Hub
1. Execute o contêiner:
```bash
docker container run -d --name eventos -p 4173:4173 -p 3000:3000 fwtrodrigo/eventos:1.0.0
```

## Acesso

1. Acesse a aplicação através do seguinte link:
http://localhost:4173/
