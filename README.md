# 🖼️ Cold Cat – GNOME Wallpaper Rotator  

## 📌 Description  
Cold Cat is a Bash script that automatically sets a random wallpaper from a 
specified directory every time you log in to a new GNOME session. It ensures 
that each wallpaper is used only once before repeating by keeping track of 
used images in a `do-not-use.txt` file. Once all wallpapers have been used, 
the list resets and starts over.

## ✨ Features  
✅ Randomly selects a wallpaper from a given directory  
✅ Ensures no duplicates until all images have been cycled through  
✅ Stores used wallpapers in a tracking file (`do-not-use.txt`)  
✅ Works with filenames containing spaces & special characters  
✅ Supports both light and dark mode via `gsettings`  
✅ Automatically resets when all wallpapers have been used  

## 📂 Installation & Setup  

### 1️⃣ Clone the Repository  
git clone https://github.com/donnaber/cold-cat.git  
cd cold-cat  

### 2️⃣ Set Up the Wallpaper Directory  
Place your wallpapers in the ~/Downloads/wallpaper directory,  
or modify the script to use a different folder.  

### 3️⃣ Make the Script Executable  
chmod +x wallpaper.sh  

### 4️⃣ Test the Script  
./wallpaper.sh  

### 5️⃣ Add to Startup Applications (for Automatic Execution)  
1. Open Startup Applications (`gnome-session-properties`)  
2. Click Add  
3. Set Name: Cold Cat Wallpaper Rotator  
4. Set Command: /path/to/wallpaper.sh  
5. Click Save  

Now, every time you log in, a new wallpaper will be set automatically! 🎉  

## 🛠️ Customization  
- Change the wallpaper directory by modifying this line in the script:  
  WALLPAPER_DIR="$HOME/Downloads/wallpaper"  

- If you want to use different image formats, update the `find` command in the script.  

## 🛡️ License  
This project is licensed under the GNU General Public License v3.0 (GPL-3.0).  
See the LICENSE file for more details.  

## ❤️ Contributions  
Feel free to open an issue or submit a pull request if you have suggestions or improvements!  

---

🚀 Enjoy fresh wallpapers every session!  

🔗 **GitHub Repository:** [Cold Cat](https://github.com/donnaber/cold-cat/)
