extends ItemBase

func _init():
	id = "swSR71BlackBird"

func getVisibleName():
	return "Lockheed SR-71 Blackbird Replica"
	
func getDescription():
	return "Cardboard cutout that has harness to carry like a backpack, this one sports Lockheed SR-71 Blackbird\'s wings.\nOnly cosmetic."

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
		"wing": "res://Modules/WingStatic/wings/sr71/Wings.tscn",
	}

func canDye():
	return true
