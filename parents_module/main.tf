module "rg_name" {
    source = "../azure_resource_group"
}

module "stg_name" {
    depends_on = [ module.rg_name ]
    source = "../azure_staorage_account"
}