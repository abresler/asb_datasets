dp <- apm[dead_player == T&!is.na(death_age)&!is.na(birth_year)&!is.na(death_age),,]
setkeyv(dp,'death_year')
dp <- data.frame(dp)
names(dp)
cols <- c(1:3,28:31,40:41,48,25:26,46,21,11:16,33:34,4,22:23,47)
dead <- dp[,cols]
dead
as.Date(dead[grepl("-",dead$birthdate),'birthdate'],'%Y-%m-%d')
	
write.csv(dead,'all_dead_nfl_player_metadata.csv')
