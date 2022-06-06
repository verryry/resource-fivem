# qb-phone
Advanced Phone for QB-Core Framework :iphone:

# License

    QBCore Framework
    Copyright (C) 2021 Joshua Eger

    This program is free software: you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with this program.  If not, see <https://www.gnu.org/licenses/>

## Dependencies
- [qb-core](https://github.com/qbcore-framework/qb-core)
- [qb-policejob](https://github.com/qbcore-framework/qb-policejob) - MEOS, handcuff check etc. 
- [qb-crypto](https://github.com/qbcore-framework/qb-crypto) - Crypto currency trading 
- [qb-lapraces](https://github.com/qbcore-framework/qb-lapraces) - Creating routes and racing 
- [qb-houses](https://github.com/qbcore-framework/qb-houses) - House and key management 
- [qb-garages](https://github.com/qbcore-framework/qb-garages) - 
- [qb-banking](https://github.com/qbcore-framework/qb-banking) - For banking


## Screenshots
### Some screenshot's are not here cuz im to lazy to take them so yea settings and phone are the only 2 apps i didnt do yet.
![Home](https://i.imgur.com/Z6zK34a.png)
![Bank](https://i.imgur.com/eewt1jo.png)
![Bank1](https://i.imgur.com/0PVJx5k.png)
![Bank2](https://i.imgur.com/iAcYhYp.png)
![Vehicles](https://i.imgur.com/ANPzwH7.png)
![Vehicles1](https://i.imgur.com/wsIUOGF.png)
![Email](https://i.imgur.com/AGKfLxW.png)
![Email1](https://i.imgur.com/9aB4rEo.png)
![Email2](https://i.imgur.com/n9aWU8d.png)
![Advertisements](https://i.imgur.com/vtTKHRS.png)
![Advertisements1](https://i.imgur.com/EMjcGCy.png)
![Crypto](https://i.imgur.com/xEb4Vfy.png)
![Crypto1](https://i.imgur.com/5MR7Ogi.png)
![Crypto2](https://i.imgur.com/pPndkSW.png)

## Features
- Garages app to see your vehicle details
- Mails to inform the player
- Banking app to see balance and transfer money
- Racing app to create races
- App Store to download apps
- MEOS app for polices to search
- Houses app for house details and management

## Installation
### Manual
- Download the script and put it in the `[qb]` directory.
- Import `qb-phone.sql` in your database
- Add the following code to your server.cfg/resouces.cfg
```
ensure qb-core
ensure qb-phone
ensure qb-policejob
ensure qb-crypto
ensure qb-lapraces
ensure qb-houses
ensure qb-garages
ensure qb-banking
```

## Configuration
```

Config = Config or {}

Config.RepeatTimeout = 2000 -- Timeout for unanswered call notification
Config.CallRepeats = 10 -- Repeats for unanswered call notification
Config.OpenPhone = 244 -- Key to open phone display
Config.PhoneApplications = {
    ["phone"] = { -- Needs to be unique
        app = "phone", -- App route
        color = "#04b543", -- App icon color
        icon = "fa fa-phone-alt", -- App icon
        tooltipText = "Phone", -- App name
        tooltipPos = "top",
        job = false, -- Job requirement
        blockedjobs = {}, -- Jobs cannot use this app
        slot = 1, -- App position
        Alerts = 0, -- Alert count
    },
}
```
