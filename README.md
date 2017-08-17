# Currency Converter

The Currency Converter is the easiest way to simulate how much you will spend in your next trip. The currency conversion between two currencies is made using the [Fixer API](http://fixer.io/).

## Demo
[This link](https://easy-currencyconverter.herokuapp.com/) shows my version off the app

## Getting Started

This instructions will give you a copy of the project on your local machine for development and testing.

### Installing

#### Using Docker
```
git clone https://github.com/luiswitz/currency_converter.git
cd currency_converter
docker-compose up --build
```

#### Localhost
```
git clone https://github.com/andreteodoro/currency_converter.git
cd currency_converter
bundle install
rails s
```

### Testing

#### Using Docker
In the project folder
```
docker-compose run --rm website rspec
```

#### Localhost
In the project folder
```
rspec
```
