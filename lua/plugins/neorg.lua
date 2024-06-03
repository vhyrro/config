require("neorg").setup({
    load = {
        ["core.defaults"] = {},
        ["core.dirman"] = {
            config = {
                workspaces = {
                    neorg = "~/neorg",
                    test = "~/neorg-test/",
                },
            }
        },
        ["core.concealer"] = {},
    }
})
