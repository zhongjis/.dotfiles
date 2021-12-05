local ***REMOVED***nders = require'telescope.***REMOVED***nders'
local sorters = require'telescope.sorters'
local actions = require'telescope.actions'
local pickers = require'telescope.pickers'
local action_state = require'telescope.actions.state'

require('jdtls.ui'***REMOVED***.pick_one_async = function(items, prompt, label_fn, cb***REMOVED***
  local opts = {}
  pickers.new(opts, {
    prompt_title = prompt,
    ***REMOVED***nder    = ***REMOVED***nders.new_table {
      results = items,
      entry_maker = function(entry***REMOVED***
        return {
          value = entry,
          display = label_fn(entry***REMOVED***,
          ordinal = label_fn(entry***REMOVED***,
        }
      end,
    },
    sorter = sorters.get_generic_fuzzy_sorter(***REMOVED***,
    attach_mappings = function(prompt_bufnr***REMOVED***
      actions.select_default:replace(function(***REMOVED***
        local selection = action_state.get_selected_entry(prompt_bufnr***REMOVED***

        actions.close(prompt_bufnr***REMOVED***

        cb(selection.value***REMOVED***
      end***REMOVED***

      return true
    end,
  }***REMOVED***:***REMOVED***nd(***REMOVED***
end
