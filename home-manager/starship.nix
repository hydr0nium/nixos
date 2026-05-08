{ config, pkgs, ... }:


{
    programs.starship = {
		enable = true;
		settings = {
			format = "[](red)$username[](bg:peach fg:red)$directory[](bg:yellow fg:peach)$git_branch$git_status[](fg:yellow bg:green)$c$rust$golang$nodejs$php$java$kotlin$haskell$python[](fg:green bg:sapphire)$conda[](fg:sapphire bg:lavender)$time[ ](fg:lavender)$cmd_duration$line_break$line_break$character";
			palette = "catppuccin_frappe";
			os.disabled = false;
			os.style = "bg:red fg:crust";
			os.symbols = {
				Windows = "";
				Ubuntu = "󰕈";
				SUSE = "";
				Raspbian = "󰐿";
				Mint = "󰣭";
				Macos = "󰀵";
				Manjaro = "";
				Linux = "󰌽";
				Gentoo = "󰣨";
				Fedora = "󰣛";
				Alpine = "";
				Amazon = "";
				Android = "";
				Arch = "󰣇";
				Artix = "󰣇";
				CentOS = "";
				Debian = "󰣚";
				Redhat = "󱄛";
				RedHatEnterprise = "󱄛";
			};
			username.show_always = true;
			username.style_user = "bg:red fg:crust";
			username.style_root = "bg:red fg:crust";
			username.format = "[ $user]($style)";
			directory.style = "bg:peach fg:crust";
			directory.format = "[ $path ]($style)";
			directory.truncation_length = 7;
			directory.truncation_symbol = "…/";
			directory.substitutions."Documents" = "󰈙 ";
			directory.substitutions."Downloads" = " ";
			directory.substitutions."Music" = "󰝚 ";
			directory.substitutions."Pictures" = " ";
			directory.substitutions."Developer" = "󰲋 ";
			git_branch = {
				symbol = "";
				style = "bg:yellow";
				format = "[[ $symbol $branch ](fg:crust bg:yellow)]($style)";
			};
			git_status = {
				style = "bg:yellow";
				format = "[[($all_status$ahead_behind )](fg:crust bg:yellow)]($style)";
			};
			nodejs = {
				symbol = "";
				style = "bg:green";
				format = "[[ $symbol( $version) ](fg:crust bg:green)]($style)";
			};
			c = {
				symbol = " ";
				style = "bg:green";
				format = "[[ $symbol( $version) ](fg:crust bg:green)]($style)";
			};
			rust = {
				symbol = "";
				style = "bg:green";
				format = "[[ $symbol( $version) ](fg:crust bg:green)]($style)";
			};
			php = {
			    	symbol = "";
			 	style = "bg:green";
			    	format = "[[ $symbol( $version) ](fg:crust bg:green)]($style)";
			};

			java = {
			    	symbol = " ";
			    	style = "bg:green";
			    	format = "[[ $symbol( $version) ](fg:crust bg:green)]($style)";
			};

			kotlin = {
			    	symbol = "";
			    	style = "bg:green";
			    	format = "[[ $symbol( $version) ](fg:crust bg:green)]($style)";
			};

			haskell = {
			    	symbol = "";
			    	style = "bg:green";
			    	format = "[[ $symbol( $version) ](fg:crust bg:green)]($style)";
			};

			python = {
			    	symbol = "";
			    	style = "bg:green";
			    	format = "[[ $symbol( $version)(\\(#$virtualenv\\)) ](fg:crust bg:green)]($style)";
			};

		  	docker_context = {
			   	symbol = "";
			   	style = "bg:sapphire";
			   	format = "[[ $symbol( $context) ](fg:crust bg:sapphire)]($style)";
			};
			

			conda = {
			    	symbol = "  ";
			   	 style = "fg:crust bg:sapphire";
			   	 format = "[$symbol$environment ]($style)";
			   	 ignore_base = false;
			};
			time = {
				disabled = false;
				time_format = "%R";
				style = "bg:lavender";
				format = "[[  $time ](fg:crust bg:lavender)]($style)";
			};
			line_break.disabled = false;
			character = {
				disabled = false;
				success_symbol = "[❯](bold fg:green)";
				error_symbol = "[❯](bold fg:red)";
				vimcmd_symbol = "[❮](bold fg:green)";
				vimcmd_replace_one_symbol = "[❮](bold fg:lavender)";
				vimcmd_replace_symbol = "[❮](bold fg:lavender)";
				vimcmd_visual_symbol = "[❮](bold fg:yellow)";
			};
			cmd_duration = {
				show_milliseconds = false;
				format = " in $duration ";
				style = "bg:lavender";
				disabled = false;
				show_notifications = true;
				min_time_to_notify = 45000;

			};
			palettes.catppuccin_frappe = {
				rosewater = "#f2d5cf";
				flamingo = "#eebebe";
				pink = "#f4b8e4";
				mauve = "#ca9ee6";
				red = "#e78284";
				maroon = "#ea999c";
				peach = "#ef9f76";
				yellow = "#e5c890";
				green = "#a6d189";
				teal = "#81c8be";
				sky = "#99d1db";
				sapphire = "#85c1dc";
				blue = "#8caaee";
				lavender = "#babbf1";
				text = "#c6d0f5";
				subtext1 = "#b5bfe2";
				subtext0 = "#a5adce";
				overlay2 = "#949cbb";
				overlay1 = "#838ba7";
				overlay0 = "#737994";
				surface2 = "#626880";
				surface1 = "#51576d";
				surface0 = "#414559";
				base = "#303446";
				mantle = "#292c3c";
				crust = "#232634";
			};
		};
	};



}
