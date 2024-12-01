extends ItemBase

func _init():
	id = "swTerrariaLeafWing"

func getVisibleName():
	return "Leaf Wing"
	
func getDescription():
	return "Cardboard cutout that has harness to carry like a backpack.\nInitally created for testing, now here because of requests!\n"\
	+ "Doesn\'t need 1 Platium and 30 Gold coins to buy.\nDoesn\'t need buff lizard man to be purchasable.\nDoesn\'t need to kill a certain metal band to be purchasable.\nDoesn\'t have to be at night to be purchaseable."

func getClothingSlot():
	return InventorySlot.Unique

func getPrice():
	return 10

func getTags():
	return [
		ItemTag.SoldByUnderwearVendomat,
		]

func getRiggedParts(_character):
	if(itemState.isRemoved()):
		return null
	return {
		"wing": "res://Modules/WingStatic/wings/leafwing/Wings.tscn",
	}

func canDye():
	return false

func getRequiredBodypart():
	return BodypartSlot.Body
