# Timer NVIM
A Very Simple plugin that will help keep conscious of time spent on writing dumb functions and code each task.

## Table of Contents
1. [Installation](#Installation)
2. [Features](#Features)
3. [Usage](#Usage)

## Installation
Installing it via packer, add this to your `~/.config/nvim/*/packer.lua`:  
```
use {'aynaever/timer.nvim'}
```

## Features
- Start: start the timer
- Pause: pause the timer
- Resume: resume the timer
- Display: display timer in seconds
- Is Paused: show if the timer is paused

## Usage
Those are the available user commands, which you map them however you want with any keybindings:
- `:TimerStart`
- `:TimerPause`
- `:TimerResume`
- `:TimerDisplay`
- `:TimerIsPause`
