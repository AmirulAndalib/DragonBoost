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
  ui_print "******************************************"
  ui_print "    𝘿𝙧𝙖𝙜𝙤𝙣𝘽𝙤𝙨𝙩 v1.5 - Stable Version"
  ui_print "******************************************"
  ui_print " Author: @Zyarexx (Telegram)"
  ui_print " WARNING: Only for Snapdragon Devices"
  ui_print "******************************************"
  ui_print ""
}

on_install() {
  print_modname
  ui_print "🚀 Preparing Installation of DragonBoost..."
  sleep 1
  unzip -o "$ZIPFILE" 'system/*' -d $MODPATH >&2
  ui_print "🔥 Injecting Performance Tweaks..."
  sleep 1
  ui_print "✨ DragonBoost Activation In Progress..."
  sleep 2
  ui_print "✔ Installation Successful!"
  ui_print ""
  am broadcast -a com.topjohnwu.magisk.NEW_TOAST --es msg "DragonBoost installed successfully!" >&2

  am broadcast -a me.weishu.kernelsu.NEW_TOAST --es msg "DragonBoost installed successfully!" >&2
}

set_permissions() {
  ui_print "🔒 Setting Permissions..."
  set_perm_recursive $MODPATH 0 0 0755 0644
  ui_print "✔ Permissions Set!"
}

# Additional function to separate visual elements and functionality
sleep 2

# Call the main function
on_install

# Set the necessary permissions
set_permissions