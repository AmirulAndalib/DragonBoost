SKIPMOUNT=false
PROPFILE=true
POSTFSDATA=true
LATESTARTSERVICE=true

REPLACE_EXAMPLE="
/system/app/Youtube
/system/priv-app/SystemUI
/system/priv-app/Settings
/system/framework
"

REPLACE="
"

print_modname() {
  ui_print "*************************************"
  ui_print " 𝘿𝙧𝙖𝙜𝙤𝙣𝘽𝙤𝙤𝙨𝙩 v1.3"
  ui_print ""
  ui_print " @Zyarexx | Telegram "
  ui_print " ⚠️ Snapdragon Only "
  ui_print "*************************************"
}

sleep 2

on_install() {
  ui_print "°•°•Load Tweaks Now..."
  sleep 2
  ui_print ""
  ui_print "°•°• DragonBoost Activated!"
  unzip -o "$ZIPFILE" 'system/*' -d $MODPATH >&2
}

set_permissions() {
  set_perm_recursive $MODPATH 0 0 0755 0644
}