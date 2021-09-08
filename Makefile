BASE_DIR=$(shell pwd)
DESTINATION=$(BASE_DIR)/public
THEME_NAME=tagged-digital-garden
BASE_URL=https://bphenriques.github.io/tagged-digital-garden-hugo-theme

test:
	cd exampleSite && hugo --themesDir $(BASE_DIR)/.. --theme $(THEME_NAME)

build:
	cd exampleSite && hugo --themesDir $(BASE_DIR)/.. --theme $(THEME_NAME) --destination $(DESTINATION) --cleanDestinationDir --baseURL $(BASE_URL)

