# gh-action-custom

Esta action custom utiliza a API do GitHub, o entrypoint que esta sendo utlizada busca a informação do repositório informado através do input. Nessa action retorna apenas a descrição do repositório.

## Inputs

`repository` **Obrigatório**: O nome do repositório. Padrão `"torvalds/linux""`.

## Outputs

`repository`: Descrição do repositório

## Exemplo de uso

```yaml
on: [push]

jobs:
  repository:
    runs-on: ubuntu-latest
    name: Get info repository
    steps:
      - name: Checkout
        uses: actions/checkout@v2
      - name: Get info repository
        id: repository
        uses: ./
        with:
          repository: "octokit/octokit.rb"
      - name: Get the output time
        run: echo "info ${{ steps.repository.outputs.response }}"
```
