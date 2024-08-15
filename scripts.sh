#!bin/bash

# convert all images to webp format

convert_to_webp() {
    local path="$1"
    
    # Check if ImageMagick's convert is available
    if ! command -v convert &> /dev/null; then
        echo "ImageMagick's convert command is not available. Please install ImageMagick."
        return 1
    fi
    
    # Find and convert images recursively
    find "$path" -type f \( -iname "*.jpg" -o -iname "*.jpeg" -o -iname "*.png" -o -iname "*.gif" \) -exec sh -c '
        for image do
            # Define the WebP image filename
            webp="${image%.*}.webp"
            
            # Convert the image to WebP
            if convert "$image" "$webp"; then
                echo "Converted $image to $webp"
                # If conversion successful, delete the original image
                rm "$image"
            else
                echo "Failed to convert $image" >&2
            fi
        done
    ' sh {} +
}

convert_to_webp .
