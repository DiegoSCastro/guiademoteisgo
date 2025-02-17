# Avaliação - Guia de motéis Go

![Image](https://github.com/user-attachments/assets/86fb984b-bde5-4cd9-948a-aed5ffac0911)


**Video explicativo(Ative o som):**
![Video](https://github.com/user-attachments/assets/a93448a9-2dac-4824-aabc-279330119d4b)

**Guia de motéis Go** é uma aplicação desenvolvida para avaliação de Diego de Souza Castro, para a empresa Guia de Moteis.

O layout foi inspirado no aplicativo encontrados na Google Play Store:
https://play.google.com/store/search?q=guia+de+moteis&c=apps&hl=pt_BR

API: https://www.jsonkeeper.com/b/1IXK

### Instruções para rodar:
- **Flutter:** 3.27.3
- **Dart:** 3.6.1

1. **Clone o repositório:**  
    Clone o repositório em sua maquina local.
    ```bash
    git clone https://github.com/DiegoSCastro/guiademoteisgo

2. **Instalar dependências:**  
    Abra o projeto e digite o seguinte comando no terminal para instalar as dependências:
    ```bash
    flutter pub get   

3. **Rodar testes:**  
   Para rodar os testes automatizados com coverage use o comando:
    ```bash
    flutter test --coverage
    
Dica: Se estiver utilizando o VSCode, pode ser útil instalar a extensão Flutter Coverage para visualizar a cobertura de testes. https://marketplace.visualstudio.com/items?itemName=Flutterando.flutter-coverage


4. **Rodar o app:**  
    Para rodar o aplicativo em um dispositivo Android (como usuário ou testador/QA), baixe e instale o APK disponível no link abaixo:
    https://drive.google.com/file/d/1MpcBfIVICYHXd9zoQ4eLSVZWRaIkfbmw/view?usp=sharing

### Princiais Features:

- **Home Screen:**  
    Tela inicial com uma AppBar superior que serve como base para navegação entre duas telas "Shell Route": go_now e go_later.

- **Go now Screen:**  
    Tela principal do desafio que apresenta todos os componentes referentes à chamada da API, controle de estado e um layout fiel ao aplicativo disponível na Play Store.

- **Image View:**  
    Ao clicar em uma foto, é possível visualizar uma galeria com mais imagens da mesma suíte.

### Bibliotecas utilizadas:

- **Testes unitários e de Widget:**  
    Foram implementados testes unitários e de widget utilizando as bibliotecas `flutter_test` e `mocktail`. Atualmente, o projeto possui 93% de cobertura de testes.
    <img width="547" alt="Image" src="https://github.com/user-attachments/assets/17c13b42-ac4e-4abc-b4ec-f409a6552fcb" />

- **Injeção de dependencias:**  
    Foi utilizado o `get_it` para injeção de dependências, tornando o código mais modular e facilitando os testes.

- **Gerenciamento de estado:**  
    O gerenciamento de estado foi realizado com `Bloc/Cubit`, simplificando o controle da reatividade das telas.

- **fpdart:**  
    Utilizado para programação funcional, permitindo o uso de tipos como `Left` e `Right` para representar resultados e erros de forma elegante e segura.

- **Serialização:**  
    Utilizamos o `Freezed` para uma serialização eficiente dos dados retornados pela API.

- **Cache de imagens:**  
    O pacote `cached_network_image` é empregado para o carregamento e cache de imagens, melhorando o desempenho ao exibir imagens já pré-carregadas.

- **Rotas:**  
    Para um controle de rotas mais eficiente, foi utilizado o `go_router`.

- **Arquitetura:**  
    O projeto segue os princípios do `SOLID` e `Clean Architecture`, visando facilitar a manutenção, escalabilidade e a testabilidade do código.