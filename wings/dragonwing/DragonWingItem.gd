extends ItemBase

func _init():
	id = "swDragonWings"

func getVisibleName():
	return "Dragon Wing"
	
func getDescription():
	return "Cardboard cutout that has harness to carry like a backpack, this one sports dragon like wings.\nOnly cosmetic."

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
		"wing": "res://Modules/WingStatic/wings/dragonwing/Wings.tscn",
	}

func canDye():
	return true