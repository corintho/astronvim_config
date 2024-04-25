---@type LazySpec
return {
  "NeogitOrg/neogit",
  branch = "nightly",
  opts = {
    ignored_settings = {
      "NeogitPushPopup--force-with-lease",
      "NeogitPushPopup--force",
      "NeogitPullPopup--rebase",
      "NeogitCommitPopup--allow-empty",
      "NeogitCommitPopup--no-verify",
      "NeogitRevertPopup--no-edit",
    },
  },
}
