#!/bin/bash

# Clear the screen
clear


echo -e "\n"
# Run the value as a command to connect to the server

eval "composer dump-autoload"
echo "Dumping composer autoload files"

eval "php artisan optimize:clear"
echo "Laravel application optimized"

echo "Done check file project_config.php under config folder... 🎆 🎉"