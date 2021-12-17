local M = {}

function M.has_value (tab, val***REMOVED***
    for index, value in ipairs(tab***REMOVED*** do
        if value == val then
            return true
        end
    end

    return false
end

return M
