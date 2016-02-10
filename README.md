DBTeam-bot
============

[![https://telegram.me/joinchat/ALJ3izwBCNXSswCHOKMwGw](https://img.shields.io/badge/💬_Telegram-Bot._Group-blue.svg)](https://telegram.me/joinchat/ALJ3izwBCNXSswCHOKMwGw) [![https://telegram.me/Yago_Perez](https://img.shields.io/badge/💬_Telegram-Yago__Perez-blue.svg)](https://telegram.me/Yago_Perez) [![https://telegram.me/Josepdal](https://img.shields.io/badge/%F0%9F%92%AC_Telegram-Josepdal-blue.svg)](https://telegram.me/Josepdal) [![https://telegram.me/MaSkAoS](https://img.shields.io/badge/%F0%9F%92%AC_Telegram-Juan-blue.svg)](https://telegram.me/MaSkAoS) [![https://gitter.im/yagop/telegram-bot](https://img.shields.io/badge/💬_Gitter-Join_Chat-green.svg)](https://gitter.im/yagop/telegram-bot]) [![Donate button](https://img.shields.io/badge/Red_Cross-donate-yellow.svg)](https://www.icrc.org/ "Donate to Red Cross Society") [![http://taligram.org](https://img.shields.io/badge/Taligram.org-Visit_us-blue.svg)](https://telegram.me/joinchat/ALJ3izwBCNXSswCHOKMwGw)

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
      <td>channels.lua</td>
      <td>Plugin to manage channels. Enable or disable channel.</td>
     <br></td>
    </tr>
    <tr>
      <td>plugins.lua</td>
      <td>Plugin to manage other plugins. Enable, disable or reload.</td>
      <br>
    </tr>
<tr>
    <td>spam.lua</td>
<td>Plugin to manage spam at groups and supergroups. When someone write a Telegram link to another group or channel, automatically, plugin delete that user from the chat, and delete their message.</td>
</tr>
<tr>
<td>flood.lua</td>
<td>Plugin to manage flood at groups and supergroups. When someone write multiple messages in a short time, bot delete them from the chat.</td>
</tr>
<tr>
<td>banhammer.lua</td>
<td>Plugin to manage users from chats. Kickbyreply implemented and working with chats, not in channels. When some user is unbanned from chat, the bot automatically add him into the group again.</td>
</tr>
  </tbody>
</table>

#Commands Usage
<table>
  <thead>
    <tr>
      <td><strong>Plugin</strong></td>
      <td><strong>Usage</strong></td>
    </tr>
  </thead>
  <tbody>
    <tr>
<td>[Channels] Commands for manage channels .</td>
<td>#channel enable: enable current channel<br>
#channel disable: disable current channel<br></td></tr>
<tr>
<td>[Plugins] Commands for manage plugins .</td>
<td>#plugins: list all plugins.<br>
#plugins enable [plugin]: enable plugin.<br>
#plugins disable [plugin]: disable plugin.<br>
#plugins disable [plugin] chat: disable plugin only this chat.<br>
#plugins reload: reloads all plugins.<br></td></tr>
</tr>
<tr>
<td>[Spam] Commands for manage spam .</td>
<td>You can add patterns to use this plugin like Telegram.me/org links from adf.ly....<br></td></tr>
</tr>
<tr>
<td>[Flood] Commands for manage flood .</td>
<td>#settings flood enable : enable flood .<br>#settings flood disable : disable flood .<br>#settings maxflood [messages]: Set messages  for seconds.<br>
#settings floodtime [seconds] Set seconds<br></td></tr>
</tr>
<td>[Kicks/Bans] Commands for manage kicks and bans .</td>
<td>#kick: If type in reply, will kick user from chat/channel group.<br>
        #kick id <user_id>: Kick user from chat/channel group.<br>
        #kick user <@username>: Kick user from chat/channel group.<br>
        #ban: If type in reply, will ban user from chat/channel group.<br>
        #ban id <user_id>: Kick user from chat and kick if user joins chat/channel again.<br>
        #ban user <@username>: Kick user from chat and kick if user joins chat/channel again.<br>
        #unban: If type in reply, will unban user from chat/channel group.<br>
        #unban id <user_id>: Unban user.<br>
        #unban user <@username>: Unban user.<br>
        #gban: If type in reply, will ban user from all chats/channels groups.<br>
        #gban id <user_id> : Kick user_id from all chats/channels and kick user if he joins again.<br>
        #gban user <@username> : Kick username from all chats/channels and kick user if he joins again.<br>
        #ungban: If type in reply, will unban user globally.<br>
        #ungban id <user_id> : Unban user_id from all chats/channels.<br>
        #ungban user <@username> : Unban username from all chats/channels.<br>
        #add: If type in old reply, you can add an old user that is out right now.<br>
        #add id <user_id>: Add a user by id into chat/channel group.<br>
        #add id <user_id>: Add a user by username into chat/channel group.'<br></td></tr>
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
cd Talibot
./launch.sh install
./launch.sh # Will ask you for a phone number & confirmation code.
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

Contact me
------------
You can contact us [via Telegram](https://telegram.me/Josepdal) or [via Telegram](https://telegram.me/MaSkAoS) but if you have an issue please [open](https://github.com/Josepdal/DBTeam/issues) one.
