# Como criar uma skill

## Description

A `description` é usada para descoberta e seleção da skill. Ela deve permitir que o agente identifique rapidamente o que a skill oferece e quando deve carregá-la.

Para escrever uma boa descrição, é necessário distinguir os tipos de skill:

- instrumentais: orientam o uso de uma ferramenta ou a execução de um fluxo operacional. Sua descrição é centrada na capacidade: indica o que usar e quais operações estão disponíveis.
- de conhecimento: reúnem orientações, padrões ou convenções sobre um domínio. Sua descrição é centrada no acionamento: delimita principalmente as situações em que esse conhecimento precisa ser carregado.

Exemplos:

- `Use playwright-cli to navigate, inspect, automate, and test web pages through a browser.`: descreve uma skill instrumental ao indicar diretamente a ferramenta e as operações que ela oferece.
- `Guidelines for writing, reviewing, and refactoring Yew code.`: descreve uma skill de conhecimento ao identificar as tarefas nas quais suas orientações são relevantes.

Não existe uma construção obrigatória. Formas como `Use X to...`, `Use when...` e frases nominais como `Guidelines for...` podem ser adequadas. A escolha depende do tipo de skill e da informação que seu nome ainda não comunica. Uma boa descrição identifica claramente o domínio e as principais situações de uso. O objetivo é reduzir tanto falsos acionamentos quanto a ausência da skill em tarefas relevantes.
