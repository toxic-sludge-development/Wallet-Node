@icon("res://addons/Wallet-Node/Icons/Wallet.svg")

extends Resource
class_name Wallet 

##Manages money and resources. Functions along with a wallet manager node.


# VARIABLES

@export var currency_name: String ## The name of the currency contained by this wallet
@export var amount: float = 0: ## The amount of currency in this wallet.
	set(x):
		var minimum
		if enable_debt:
			minimum = -max_amount
		else:
			minimum = 0
		if x < minimum:
			amount = minimum
		elif x > max_amount:
			amount  = max_amount
		else:
			amount = x
@export var max_amount: float = INF ## The maximum amount of currency that can be contained in this wallet
@export var enable_debt: bool = false ## Allows this wallets amount to become negative. The minimum will just be the the negative maximum.
