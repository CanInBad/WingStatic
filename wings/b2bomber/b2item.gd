extends ItemBase

func _init():
	id = "swB2SpiritBomber"

func getVisibleName():
	return "Northrop B-2 Spirit Replica"
	
func getDescription():
	return "Cardboard cutout that has harness to carry like a backpack, this one sports Northrop B-2 Spirit\'s wings.\nOnly cosmetic."

func getClothingSlot():
	return InventorySlot.Unique

func getPrice():
	return 8

func getTags():
	return [
		ItemTag.SoldByUnderwearVendomat,
		]

func getRiggedParts(_character):
	if(itemState.isRemoved()):
		return null
	return {
		"wing": "res://Modules/WingStatic/wings/b2bomber/Wings.tscn",
	}

func canDye():
	return true

func getRequiredBodypart():
	return BodypartSlot.Body
