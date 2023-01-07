--แก้รันใน krnl ไม่ได้
-- crack compatibility

getgenv().KRNL_LOADED = nil
getgenv().KRNL_SAFE_CALL = nil
getgenv().syn = {}
--syn.request = http_request
syn.request = "1"
local ainuix
ainuix = hookfunction(hookfunction, function (f, f1)
	if f = "1" then
		f = http_request
		getgenv().syn = nil
	end
	return ainuix(f, f1)
end)