# 🖼️ Cold Cat – GNOME Wallpaper Rotator  

## 📌 Description  
**Cold Cat** is a Bash script that automatically sets a random wallpaper from a specified directory every time you log in to a new GNOME session. It ensures that each wallpaper is used only once before repeating by keeping track of used images in a `do-not-use.txt` file. Once all wallpapers have been used, the list resets and starts over.  

## ✨ Features  
- ✅ Randomly selects a wallpaper from a given directory  
- ✅ Ensures no duplicates until all images have been cycled through  
- ✅ Stores used wallpapers in a tracking file (`do-not-use.txt`)  
- ✅ Works with filenames containing spaces & special characters  
- ✅ Supports **both light and dark mode** via `gsettings`  
- ✅ Automatically resets when all wallpapers have been used  

## 📂 Installation & Setup  

### 1️⃣ Clone the Repository  
```bash
git clone https://github.com/donnaber/cold-cat.git
cd cold-cat
