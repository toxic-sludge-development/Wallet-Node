@icon("res://addons/Wallet-Node/Icons/Manager.svg")
extends Node
class_name WalletManager 

##A node that works with wallet resources and witch manage money and resources

# VARIABLES

@export var wallets: Dictionary[String, Wallet]


# FUNCTIONS

# Wallet Management Functions
func get_wallet(name: String) -> Wallet: ##Returns a wallet resource by name.
	return wallets[name]

func remove_wallet(name: String) -> void: ##Removes a wallet by name.
	wallets.erase(name)

func add_wallet(name: String, wallet: Wallet) -> void: ##Adds a wallet to this wallet manager if the name doesn't already have a wallet by the same name.
	if !wallet_exists(name):
		wallets[name] = wallet
	else:
		push_error(str(self) + "" + "tried to add a wallet name that already existed")

func create_wallet(c_name: String, amount: float, m_amount: float, debt: bool, add_name: String = "", add_to_manager: bool = false) -> Wallet: ##Returns a newly created wallet. Does not add it to the wallet manager unless parameter 5 & 6 are filled out and parameter 6 is true.
	var new_wallet = Wallet.new()
	new_wallet.currency_name = c_name
	new_wallet.amount = amount
	new_wallet.max_amount = m_amount
	new_wallet.enable_debt = debt
	if add_to_manager:
		add_wallet(add_name, new_wallet)
	return new_wallet


func wallet_exists(name: String) -> bool: ##Returns true if a wallet by that name exists in the manager
	if wallets.has(name):
		return true
	else:
		return false
