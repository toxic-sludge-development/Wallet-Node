@icon("res://addons/Wallet-Node/Icons/Wallet.svg")

extends Resource
class_name Wallet 

##Manages money and resources. Functions along with a wallet manager node.


# VARIABLES

@export var currency_name: String
@export var amount: float = 0
@export var max_amount: float = INF
@export var enable_debt: bool = false
