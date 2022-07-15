require 'spec_helper'
require 'hero'

describe Hero do
    it 'has a sword' do
        hero = Hero.new

        expect(hero.weapon).to eq('sword')
    end

    it 'has more than 1000 HP points' do 
        hero = Hero.new

        expect(hero.hp).to be > 1000
    end
end

## um matcher é o argumento de comparação

## os matchers de comparação retornam os resultados esperados, por exemplo, usamos acima o .to be > 1000 é um matcher que espera que seja maior que 1000

## outros matchers
## todos são depois do .to

# maior que: > x
# maior ou igual que: >= x
# menor ou igual que: <= x
# menor que: < x
# comparação de REGEX: match(/expressão/)


## também existem matchers de classes e tipos

# expect(obejeto).to be_an_instance_of(o que é esperado); este é para classe

# expect(tipo do objeto).to be_a(tipo esperado); este é para saber o tipo do objeto, por exemplo string etc...

## podemos também usar valores booleanos

# retorna se o valor não é false ou nil: be_truthy
# quando o valor for == true: .to be true
# quando o valor é false ou nil: be_falsy
# quando o valor for == false: .to be false
# quando o valor fo nulo: be_nill
# quando o valor não for nulo: .to_not be_nill

## existem matcher de erro também

# levantar um erro: .to raise_error
# erro de classe?: raise_error(ErrorClass)
# erro com mensagem: raise_error("message")
# erro de classe? com mensagem: raise_error(ErrorClass, "message")


## demais matcher podem ser encontrados na documentação: https://www.rubydoc.info/gems/rspec-expectations/frames