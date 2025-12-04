@icon("res://addons/Wallet-Node/Icons/SingleWallet.svg")

extends Node
class_name SingleWallet

## A node for managing a single wallet when the wallet manager is too much. Can directly reference wallet values "ThisNode.WalletValue".

# VARIABLES

@export var wallet: Wallet
var currency_name: String: ## The name of the currency contained by the wallet
	get:
		return wallet.currency_name
	set(x):
		wallet.currency_name = x
var amount: float = 0: ## The amount of currency in the wallet.
	get:
		return wallet.amount
	set(x):
		wallet.amount = x
var max_amount: float: ## The maximum amount of currency that can be contained in the wallet
	get:
		return wallet.max_amount
	set(x):
		wallet.max_amount = x
var enable_debt: bool: ## Allows the wallets amount to become negative. The minimum will just be the the negative maximum.
	get:
		return wallet.enable_debt
	set(x):
		wallet.enable_debt = x
