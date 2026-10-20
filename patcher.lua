local utils = require("gdpatch.utils")

GDPatch.patch_script_as_text("actors/player/player.gdc", function(ctx, src)
  return src .. "\nfunc _exit_tree() -> void:\n\tif PlayerRespawningState.revive_flash_tween and PlayerRespawningState.revive_flash_tween.is_running():\n\t\tPlayerRespawningState.revive_flash_tween.stop()\n"
end)