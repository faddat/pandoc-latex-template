#!/bin/bash
set -e

echo "##"
echo "# building examples"
echo "##"
echo ""


# loop all files in the current folder
for f in *; do
		echo "building '$f'"
    		cd "$f"
    		echo "    - running pandoc build script"
        	bash "$PWD/build.sh"
        	echo "    - generating preview"
        	pdftoppm -r 150 -png "document.pdf" > "preview.png"
        	echo ""
        	cd ".."
    	
    
done
