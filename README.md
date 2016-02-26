DBTeam-bot
============

A Telegram Bot based on plugins using [tg](https://github.com/vysheng/tg).

Bot Commands
------------
<table>
    <thead>
        <tr>
            <td><strong>Name</strong></td>
            <td><strong>Description</strong></td>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>bot.lua</td>
            <td>Plugin to manage channels. Enable or disable channel.</td>
        </tr>
        <tr>
            <td>commands.lua</td>
            <td>Plugin to get info about what the bot can do.</td>
        </tr>
        <tr>
            <td>(language)_lang.lua</td>
            <td>Plugin to install a language in your redis db.</td>
        </tr>
        <tr>
            <td>export_gban.lua</td>
            <td>Plugin to export an installer (gban_installer.lua) or a list of all your bot gbans.</td>
        </tr>
        <tr>
            <td>giverank.lua</td>
            <td>Plugin to manage ranks (admins, mods and guests).</td>
        </tr>
        <tr>
            <td>id.lua</td>
            <td>Plugin to get info about telegram accounts.</td>
        </tr>
        <tr>
            <td>moderation.lua</td>
            <td>Plugin to manage users from chats. Kick, add, ban, unban, gban, ungban, kickme all of this with action by reply, by id and by username.</td>
        </tr>
        <tr>
            <td>plugins.lua</td>
            <td>Plugin to manage other plugins. Enable, disable or reload.</td>
        </tr>
        <tr>
            <td>rules.lua</td>
            <td>Plugin to get chat rules.</td>
        </tr>
        <tr>
            <td>settings.lua</td>
            <td>Plugin to administrate a group/supergroup, you can disable photos, stickers, gifs, links, arabic, flood, spam, lock channel members, audios...</td>
        </tr>
        <tr>
            <td>spam.lua</td>
            <td>Plugin to manage spam at groups and supergroups. When someone write a Telegram link to another group or channel, automatically (for example), plugin delete that user from the channel, and delete his message. Then, send a report to all sudo users in a private message with user info, text message and the name and id of that channel.</td>
        </tr>
        <tr>
            <td>version.lua</td>
            <td>Shows bot version</td>
        </tr>
    </tbody>
</table>

#Commands Usages
<table>
    <thead>
        <tr>
            <td><strong>Plugin</strong></td>
            <td><strong>Usage</strong></td>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>bot.lua</td>
            <td>#bot on: enable bot in current channel.<br>
                #bot off: disable bot in current channel.</td>
        </tr>
        <tr>
            <td>commands.lua</td>
            <td>#commands: Show all commands for every plugin.<br>
                #commands [plugin]: Commands for that plugin.
            </td>
        </tr>
        </tr>
        <tr>
            <td>export_gban.lua</td>
            <td>#gbans installer: Return a lua file installer to share gbans and add those in another bot in just one command.<br>
                #gbans list: Return an archive with a list of gbans.
            </td>
        </tr>
        </tr>
        <tr>
            <td>gban_installer.lua</td>
            <td>#install gbans: add a list of gbans into your redis db.
            </td>
        </tr>
        </tr>
            <td>giverank.lua</td>
            <td>#rank admin (reply): add admin by reply.<br>
                #rank admin <user_id>/<user_name>: add admin by user ID/Username.<br>
                #rank mod (reply): add mod by reply.<br>
                #rank mod <user_id>/<user_name>: add mod by user ID/Username.<br>
                #rank guest (reply): remove admin by reply.<br>
                #rank guest <user_id>/<user_name>: remove admin by user ID/Username.<br>
                #admins: list of all admin members.<br>
                #mods: list of all mod members.<br>
                #members: list of all channel members.
            </td>
        </tr>
        </tr>
            <td>id.lua</td>
            <td>#id: Return your ID and the chat id if you are in one.<br>
                #ids chat: Return the IDs of the current chat members.<br>
                #ids channel: Return the IDs of the current channel members.<br>
                #id <user_name>: Return the member username ID from the current chat.<br>
                #whois <user_id>/<user_name>: Return username.<br>
                #whois (reply): Return user id.
            </td>
        </tr>
    </tbody>
</table>

[Installation](https://github.com/yagop/telegram-bot/wiki/Installation)
------------
```bash
# Tested on Ubuntu 14.04, for other OSs check out https://github.com/yagop/telegram-bot/wiki/Installation
sudo apt-get install libreadline-dev libconfig-dev libssl-dev lua5.2 liblua5.2-dev libevent-dev make unzip git redis-server g++ libjansson-dev libpython-dev expat libexpat1-dev
```

```bash
# After those dependencies, lets install the bot
cd $HOME
git clone https://github.com/Josepdal/DBTeam.git
cd DBTeam
./launch.sh install
./launch.sh # Will ask you for a phone number & confirmation code.
#install english_lang
#lang en
```

Enable more [`plugins`](https://github.com/yagop/Talibot/tree/supergroups/plugins)
-------------
See the plugins list with `!plugins` command.

Enable a disabled plugin by `!plugins enable [name]`.

Disable an enabled plugin by `!plugins disable [name]`.

Those commands require a privileged user, privileged users are defined inside `data/config.lua` (generated by the bot), stop the bot and edit if necessary.


Run it as a daemon
------------
If your Linux/Unix comes with [upstart](http://upstart.ubuntu.com/) you can run the bot by this way
```bash
$ sed -i "s/yourusername/$(whoami)/g" etc/telegram.conf
$ sed -i "s_telegrambotpath_$(pwd)_g" etc/telegram.conf
$ sudo cp etc/telegram.conf /etc/init/
$ sudo start telegram # To start it
$ sudo stop telegram # To stop it
```

Yagop developer and bot development group
-----------------------------------------

[![https://telegram.me/Yago_Perez](https://img.shields.io/badge/💬_Telegram-Yago__Perez-blue.svg)](https://telegram.me/Yago_Perez) [![https://telegram.me/joinchat/ALJ3izwBCNXSswCHOKMwGw](https://img.shields.io/badge/💬_Telegram-Bot._Group-blue.svg)](https://telegram.me/joinchat/ALJ3izwBCNXSswCHOKMwGw) [![https://gitter.im/yagop/telegram-bot](https://img.shields.io/badge/💬_Gitter-Join_Chat-green.svg)](https://gitter.im/yagop/telegram-bot])

DBTeam developers
-----------------

[![https://telegram.me/Josepdal](https://img.shields.io/badge/%F0%9F%92%AC_Telegram-Josepdal-blue.svg)](https://telegram.me/Josepdal) [![https://telegram.me/MaSkAoS](https://img.shields.io/badge/%F0%9F%92%AC_Telegram-Juan-blue.svg)](https://telegram.me/MaSkAoS)

DBTeam support channels
-----------------------

[![https://telegram.me/joinchat/C142CD5wPizyWWg4R3TJLw](https://img.shields.io/badge/%F0%9F%92%AC_Telegram-Support_EN-blue.svg)](https://telegram.me/joinchat/C142CD5wPizyWWg4R3TJLw) [![https://telegram.me/joinchat/C142CD3GT-26EFdxu_lW0g](https://img.shields.io/badge/%F0%9F%92%AC_Telegram-Soporte_ES-blue.svg)](https://telegram.me/joinchat/C142CD3GT-26EFdxu_lW0g) 

Other interesting sites
-----------------------

[![Donate button](https://img.shields.io/badge/Red_Cross-donate-yellow.svg)](https://www.icrc.org/ "Donate to Red Cross Society") [![http://taligram.org](https://img.shields.io/badge/Taligram.org-Visit_us-blue.svg)](https://telegram.me/joinchat/ALJ3izwBCNXSswCHOKMwGw)

Contact me
------------
You can contact us in groups said before but if you have an issue please [open](https://github.com/Josepdal/DBTeam/issues) one.
