import requests
import sys
import config_file

def DiscordWebHook(discordUrl):
	# rename your bot here
	botName = "Bheem Bot"

	message = f'```yaml\n [{sys.argv[1]}]: Finished Bheem Script for {sys.argv[2]}``` Results stored in **folder**: {sys.argv[3]}'
	data = {
	"content": message, 
	"username": botName
	}

	response = requests.post(discordUrl, json=data)

	if (response.status_code == 204):
		print('Notified ')
	else:
		print('Some error occured.')


def getHooks():
	discordUrl = config_file.discord_url
	# space to grab more URLS


	if (discordUrl):
		DiscordWebHook(discordUrl)
	else:
		print("Please add a discord web Hook!")


getHooks()