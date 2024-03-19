abilites = undefined;

if (file_exists(working_directory + "Magi Magi Dungeon Crawler Beta Ability Sheet.json"))
{
	var json = "";
	
	var file = file_text_open_read(working_directory + "Magi Magi Dungeon Crawler Beta Ability Sheet.json");
	
	while(file_text_eof(file) == false)
	{
		json += file_text_readln(file);
	}
	
	file_text_close(file);
	
	abilites = json_parse(json);
}

show_message(abilites[0][$ "Ability Name"]);






