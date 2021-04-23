# Wallgrab

## Overview

Choosing a desktop background can be annoying. Wallgrab is a script that eliminates the element of choice by pulling up to 10 images from Bing’s pictures of the day and setting this as your desktop background.

## Prerequisites

1. You will need the following packages installed: 

- `rand`
- `jq`

2. Update the `WALLPAPER_DIR` definition within `wallgrab.sh` pointing to wherever you keep your wallpapers. 

## Usage

Wallgrab is non-configurable and does not support any flags or options at present. Simply run `./wallgrab.sh` and watch your desktop wallpaper change. 

## Testing

I have only tested this within a **GNOME** desktop environment within Ubuntu 20.04, 20.10 and 21.04 respectively. 

Due to the use of `gsettings` I can only anticipate that this *won’t work* for non-GNOME environments. 

## Possible features

- [ ] Add support for reading `WALLPAPER_DIR` from bash profile. 
- [ ] Automatic cleanup options.
- [ ] Remove `cd` commands into and out of `WALLPAPER_DIR`.