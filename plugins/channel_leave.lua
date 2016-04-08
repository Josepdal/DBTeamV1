Lua [[plugins]](https://github.com/BH-YAGHI/NOD32-BOT/blob/master/plugins/left_group.lua) : 
```bash
channel_leave("channel#id"..msg.to.id, ok_cb, false)
```
------------------------------------------------------------------------------------------------------------------------------
tg [[lua-tg.c]](https://github.com/Josepdal/tg/blob/325979bed6c6055bec3f934483e4df7d6b6d4753/lua-tg.c):
```bash
lq_channel_leave

    case lq_channel_leave:
      tgl_do_leave_channel (TLS, lua_ptr[p + 1].peer_id, lua_empty_cb, lua_ptr[p].ptr);
      p += 2;
      break;

  {"channel_leave", lq_channel_leave, { lfp_channel, lfp_none }}
```
------------------------------------------------------------------------------------------------------------------------------
**Terminal**
```bash
cd bot 
cd tg 
make 
```

open pull request 
