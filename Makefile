BASE_DIR=$(shell pwd)
DESTINATION=$(BASE_DIR)/public
THEME_NAME=explorer
BASE_URL=https://bphenriques.github.io/explorer-hugo-theme

test:
	cd exampleSite && hugo --themesDir $(BASE_DIR)/.. --theme $(THEME_NAME)

build:
	cd exampleSite && hugo --themesDir $(BASE_DIR)/.. --theme $(THEME_NAME) --destination $(DESTINATION) --cleanDestinationDir --baseURL $(BASE_URL)

serve:
	cd exampleSite && hugo serve --themesDir $(BASE_DIR)/.. --theme $(THEME_NAME) --destination $(DESTINATION) --cleanDestinationDir
