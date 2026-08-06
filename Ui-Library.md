<div align="center">

# Tora Library [Not Mine]

**A simple UI library with a clean and sexy interface.**

---

## Installation

Load the library using either of the following:

**Original version**
```lua
local library = loadstring(game:HttpGet('https://raw.githubusercontent.com/liebertsx/Tora-Library/main/src/librarynew', true))()
```

**Backup version**
```lua
local library = loadstring(game:HttpGet('https://raw.githubusercontent.com/SrzStarOG/Script/main/ToraNewUI-backup', true))()
```

---

## Getting Started

### Create a Window

```lua
local tab = library:CreateWindow('Your Title')
```

### Add a Folder

```lua
local folder = tab:AddFolder('Folder')
```

Folders act as containers for elements like buttons, toggles, sliders, and more.

---

## Elements

### Button

```lua
folder:AddButton({
    text = 'Click me',
    flag = 'button',
    callback = function()
        print('hello world')
    end
})
```

### Toggle

```lua
folder:AddToggle({
    text = 'Toggle',
    flag = 'toggle',
    callback = function(v)
        print(v)
    end
})
```

### Textbox [This it not Original Functions]

```lua
folder:AddBox({
    text = 'Textbox',
    value = '',
    flag = 'text',
    callback = function(v)
        print(v)
    end
})
```

### Label

```lua
folder:AddLabel({
    text = 'This Is Sick!',
    type = 'label'
})
```

### Slider

```lua
folder:AddSlider({
    text = 'Fov',
    min = 70,
    max = 170,
    dual = true,
    type = 'slider',
    callback = function(v)
        print(v)
    end
})
```

### Color Picker

```lua
folder:AddColor({
    text = 'Color Picker',
    flag = 'color',
    type = 'color',
    callback = function(v)
        print(v)
    end
})
```

### Dropdown

```lua
folder:AddList({
    text = 'Color',
    values = {'Red', 'Green', 'Blue'},
    callback = function(value)
        print('Selected color:', value)
    end,
    open = false,
    flag = 'color_option'
})
```

### Keybind

```lua
folder:AddBind({
    text = 'bind',
    key = 'X',
    hold = false,
    callback = function()
    end
})
```

---

## Lifecycle

**Close the library**
```lua
library:Close()
```

**Initialize** (Required, or the UI will not show)
```lua
library:Init()
```

---

## Credits

Made by **Tora**

Github: [@Liebertsx](https://github.com/liebertsx/Tora-Library/)
Telegram: [@getoffset](https://t.me/getoffset)
