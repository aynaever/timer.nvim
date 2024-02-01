local start_time = 0
local timer = 0
local is_paused = false
local pause_time = 0
local paused_time = 0

function start()
	start_time = os.time()
	print("timer has started")
end

function pause()
	is_paused = true
	pause_time = os.time()
	print("timer has been paused")
end

function resume()
	is_paused = false
	paused_time = paused_time + os.time() - pause_time
	print("timer has been resumed")
end

function is_pause()
	print(is_paused)
end

function display_time()
	timer = os.time() - start_time
	print(timer - paused_time)
end

vim.api.nvim_create_user_command('TimerStart', start, {})
vim.api.nvim_create_user_command('TimerPause', pause, {})
vim.api.nvim_create_user_command('TimerIsPause', is_pause, {})
vim.api.nvim_create_user_command('TimerResume', resume, {})
vim.api.nvim_create_user_command('TimerDisplay', display_time, {})
