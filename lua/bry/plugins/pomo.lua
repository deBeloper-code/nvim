return {
	"epwalsh/pomo.nvim",
	version = "*", -- Recommended, use latest release instead of latest commit
	lazy = true,
	cmd = { "TimerStart", "TimerRepeat" },
	dependencies = {
		-- Optional, but highly recommended if you want to use the "Default" timer
		"rcarriga/nvim-notify",
	},
	config = function()
		require("telescope").load_extension("pomodori")
		local keymap = vim.keymap -- for conciseness
		-- Pomodoro Timers
		keymap.set("n", "<leader>ptw", "<cmd>TimerStart 25m WORKING!<CR>", { desc = "Start Pomodoro timer Work" })
		keymap.set("n", "<leader>ptr", "<cmd>TimerStart 5m RESTING!<cr>", { desc = "Start Pomodoro timer Rest" })
		keymap.set("n", "<leader>ptp", "<cmd>TimerPause<cr>", { desc = "Pause Pomodoro timer " })
		keymap.set("n", "<leader>ptc", "<cmd>TimerResume<cr>", { desc = "Resume Pomodoro timer " })
		keymap.set("n", "<leader>pts", "<cmd>TimerShow<cr>", { desc = "Show Pomodoro timer " })
		keymap.set("n", "<leader>pth", "<cmd>TimerHide<cr>", { desc = "Hide Pomodoro timer " })
		keymap.set("n", "<leader>pts", "<cmd>TimerStop<cr>", { desc = "Stop Pomodoro timer " })
		require("pomo").setup({
			-- How often the notifiers are updated.
			update_interval = 1000,

			-- Configure the default notifiers to use for each timer.
			-- You can also configure different notifiers for timers given specific names, see
			-- the 'timers' field below.
			notifiers = {
				-- The "Default" notifier uses 'vim.notify' and works best when you have 'nvim-notify' installed.
				{
					name = "Default",
					opts = {
						-- With 'nvim-notify', when 'sticky = true' you'll have a live timer pop-up
						-- continuously displayed. If you only want a pop-up notification when the timer starts
						-- and finishes, set this to false.
						sticky = false,

						-- Configure the display icons:
						title_icon = "⏳",
						text_icon = "⏱️",
					},
				},

				-- The "System" notifier sends a system notification when the timer is finished.
				-- Available on MacOS and Windows natively and on Linux via the `libnotify-bin` package.
				{ name = "System" },

				-- You can also define custom notifiers by providing an "init" function instead of a name.
				-- See "Defining custom notifiers" below for an example 👇
				-- { init = function(timer) ... end }
			},

			-- Override the notifiers for specific timer names.
			timers = {
				-- For example, use only the "System" notifier when you create a timer called "Break",
				-- e.g. ':TimerStart 2m Break'.
				Break = {
					{ name = "System" },
				},
			},
		})
	end,
}
