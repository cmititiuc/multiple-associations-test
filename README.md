
```
rails g model User name:string account_balance:integer
rails g model Product name:string cost:integer
rails g model Cart user:references product:references
```

```
cart = User.first.build_cart
cart.products << Product.second
cart.products << Product.second
cart.products << Product.second
cart.valid?
```
