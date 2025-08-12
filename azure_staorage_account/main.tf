resource "azurerm_storage_account" "teststg1" {
    name = "myfirststorage11"
    resource_group_name = "myfirstrg11"
    location = "central us"
    account_tier = "standard"
    account_replication_type = "GRS"
  }

  resource "azurerm_storage_container" "mycont1" {
    name = "myfirstcontainer11"
    storage_account_id = azurerm_storage_account.teststg1.id
    container_access_type = "private"
}

resource "azurerm_storage_blob" "myblob1" {
    name = "myfirstblob11"
    storage_account_name = azurerm_storage_account.teststg1.name
    storage_container_name = azurerm_storage_container.mycont1.name
    type = "Block"
}