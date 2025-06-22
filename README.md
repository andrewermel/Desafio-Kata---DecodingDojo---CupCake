# Desafio BEMP - Kata Cupcake

## Problema Escolhido

**Cupcake Kata** do site https://codingdojo.org/kata/cupcake/

## Descrição do Problema

Implementar um programa que constrói bolos com diferentes coberturas usando os padrões Decorator e Composite. O sistema deve:

1. **Bolos Base**: Cupcake (🧁) e Cookie (🍪) com preços específicos
2. **Decorators (Toppings)**: Chocolate (🍫), Nuts (🥜), Sugar (🍬) que adicionam nome e preço
3. **Bundles**: Grupos de bolos com desconto de 10%
4. **Ordem**: A ordem dos toppings é importante na nomenclatura

## Funcionalidades Implementadas

- Classes base para bolos (Cupcake, Cookie)
- Padrão Decorator para toppings
- Padrão Composite para bundles com desconto
- Cálculo de preços recursivo
- Formatação de nomes com ordem de toppings

## Como Executar os Testes

### Pré-requisitos

- Ruby 3.3.0
- Bundler

### Comandos

```bash
# Instalar dependências
bundle install

# Executar todos os testes
bundle exec rspec --no-drb

# Executar testes com detalhes
bundle exec rspec --no-drb --format documentation
```

## Estrutura do Código

- `lib/` - Classes principais
- `spec/` - Testes RSpec
- Implementação dos padrões Decorator e Composite

## Padrões de Design Utilizados

1. **Decorator Pattern**: Para adicionar toppings dinamicamente aos bolos
2. **Composite Pattern**: Para criar bundles de bolos com desconto
# Desafio-Kata---DecodingDojo---CupCake
