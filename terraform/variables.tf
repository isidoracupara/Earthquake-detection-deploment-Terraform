variable "becode_tags" {
    type = map(string)
    description = "A map of tags to add to all resources."

    default = {
        contact = "isidoracupara@becode.xyz"
        promo_type = "ai"
        promo_name = "bouman5"
    }

}