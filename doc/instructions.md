# Como criar uma skill

## Name

O `name` identifica a skill durante a descoberta e a invocação explícita. Ele deve comunicar seu propósito com o mínimo de ambiguidade, usando termos que representem diretamente a ferramenta, o domínio ou a ação principal da skill. Prefira nomes curtos e específicos; adicione o nome da ferramenta ou do domínio quando isso ajudar a distinguir skills semelhantes.

Use apenas letras minúsculas, números e hífens, mantenha o nome abaixo de 64 caracteres e use o mesmo valor no diretório da skill e no campo `name` do frontmatter. Evite nomes genéricos, detalhes de implementação e palavras que não contribuam para a identificação da skill.

Exemplos:

- `playwright-cli`: identifica diretamente a ferramenta utilizada pela skill.
- `yew-best-practices`: combina o domínio com o tipo de conhecimento oferecido.
- `rotate-pdf-pages`: expressa a ação principal e o artefato sobre o qual ela atua.

Nomes como `helper`, `utils` e `good-practices` devem ser evitados porque não delimitam suficientemente o propósito ou o domínio da skill.

## Description

A `description` é usada para descoberta e seleção da skill. Ela deve permitir que o agente identifique rapidamente o que a skill oferece e quando deve carregá-la.

Para escrever uma boa descrição, é necessário distinguir os tipos de skill:

- instrumentais: orientam o uso de uma ferramenta ou a execução de um fluxo operacional. Sua descrição é centrada na capacidade: indica o que usar e quais operações estão disponíveis.
- de conhecimento: reúnem orientações, padrões ou convenções sobre um domínio. Sua descrição é centrada no acionamento: delimita principalmente as situações em que esse conhecimento precisa ser carregado.

Exemplos:

- `Use playwright-cli to navigate, inspect, automate, and test web pages through a browser.`: descreve uma skill instrumental ao indicar diretamente a ferramenta e as operações que ela oferece.
- `Guidelines for writing, reviewing, and refactoring Yew code.`: descreve uma skill de conhecimento ao identificar as tarefas nas quais suas orientações são relevantes.

Não existe uma construção obrigatória. Formas como `Use X to...`, `Use when...` e frases nominais como `Guidelines for...` podem ser adequadas. A escolha depende do tipo de skill e da informação que seu nome ainda não comunica. Uma boa descrição identifica claramente o domínio e as principais situações de uso. O objetivo é reduzir tanto falsos acionamentos quanto a ausência da skill em tarefas relevantes.
