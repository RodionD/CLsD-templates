#Calculate
#!/usr/bin/perl

# SCHEMA supports the following keys: item, cat, begin_cat, end_cat,
#                                     exit, raw, sep, obgenmenu
#
# Posible values for each of this types are:
# For 'item' : [COMMAND, LABEL, ICON] - icon is optional
# For 'sep'  : A string representing the LABEL for the separator or undef for none
# For 'cat'  : Any of the possible categories. 'cat => [CATEGORY, LABEL, ICON]'
# For 'exit' : undef - default "Exit" action
# For 'raw'  : A hardcoded XML line in the Openbox's menu.xml file format
#    Example : {raw => '<menu icon="" id="client-list-combined-menu" />'},

# NOTE:
#    * Keys and values are case sensitive. Keep all keys lowercase.
#    * ICON can be a either a direct path to a icon or a valid icon name
#    * Category names are case insensitive. (ex: X-XFCE and x_xfce are equivalent)

require '/etc/obmenu-generator/config.pl';

#?os_locale_language!=ru#
our $SCHEMA = [
    #             COMMAND                 LABEL                ICON
    {item => ['spacefm',             'File Manager',      'file-manager']},
    {item => [$CONFIG->{terminal},   'Terminal',          'terminal']},
    {item => [$CONFIG->{editor},     'Editor',            'text-editor']},
    {item => [$CONFIG->{web_browser},'Web Browser',       'web-browser']},
    {item => ['gmrun',               'Run command',       'system-run']},
    {item => ['pidgin',              'Instant messaging', 'system-users']},
    {raw => '<menu execute="obdevicemenu" icon="/usr/share/icons/gnome/32x32/devices/harddrive.png" id="mounts" label="Removable Devices"/>'},

    {sep => 'Applications'},

    #          NAME            LABEL                ICON
    {cat => ['utility',     'Accessories', 'applications-utilities']},
    {cat => ['development', 'Development', 'applications-development']},
    {cat => ['education',   'Education',   'applications-science']},
    {cat => ['game',        'Games',       'applications-games']},
    {cat => ['graphics',    'Graphics',    'applications-graphics']},
    {cat => ['audiovideo',  'Multimedia',  'applications-multimedia']},
    {cat => ['network',     'Network',     'applications-internet']},
    {cat => ['office',      'Office',      'applications-office']},
    {cat => ['settings',    'Settings',    'applications-accessories']},
    {cat => ['system',      'System',      'applications-system']},

    #                  LABEL          ICON
    #{begin_cat => ['My category',  'cat-icon']},
    #             ... some items ...
    #{end_cat   => undef},

    #{cat => ['qt',          'QT Applications',    'qtlogo']},
    #{cat => ['gtk',         'GTK Applications',   'gnome-applications']},
    #{cat => ['x_xfce',      'XFCE Applications',  'applications-other']},
    #{cat => ['gnome',       'GNOME Applications', 'gnome-applications']},
    #{cat => ['consoleonly', 'CLI Applications',   'applications-utilities']},

    {obgenmenu => 'Openbox Settings'},
    {sep       => undef},

    {item => ['xscreensaver-command -lock', 'Lock', 'lock']},

    # This options uses the default OpenBox action "Exit"
    {item => ['obshutdown', 'Exit']},
]
#os_locale_language#
#?os_locale_language=ru#
our $SCHEMA = [
    #             COMMAND                 LABEL                ICON
    {item => ['spacefm',             'Менеджер файлов',      'file-manager']},
    {item => [$CONFIG->{terminal},   'Терминал',          'terminal']},
    {item => [$CONFIG->{editor},     'Редактор',            'text-editor']},
    {item => [$CONFIG->{web_browser},'Броузер',       'web-browser']},
    {item => ['gmrun',               'Выполнить команду',       'system-run']},
    {item => ['pidgin',              'Мгновенные сообщения', 'system-users']},
    {raw => '<menu execute="obdevicemenu" icon="/usr/share/icons/gnome/32x32/devices/harddrive.png" id="mounts" label="Внешние накопители"/>'},

    {sep => 'Applications'},

    #          NAME            LABEL                ICON
    {cat => ['utility',     'Утилиты', 'applications-utilities']},
    {cat => ['development', 'Разработка', 'applications-development']},
    {cat => ['education',   'Образование',   'applications-science']},
    {cat => ['game',        'Игры',       'applications-games']},
    {cat => ['graphics',    'Графика',    'applications-graphics']},
    {cat => ['audiovideo',  'Мультимедия',  'applications-multimedia']},
    {cat => ['network',     'Сеть',     'applications-internet']},
    {cat => ['office',      'Офис',      'applications-office']},
    {cat => ['settings',    'Настройки',    'applications-accessories']},
    {cat => ['system',      'Система',      'applications-system']},

    #                  LABEL          ICON
    #{begin_cat => ['My category',  'cat-icon']},
    #             ... some items ...
    #{end_cat   => undef},

    #{cat => ['qt',          'QT Applications',    'qtlogo']},
    #{cat => ['gtk',         'GTK Applications',   'gnome-applications']},
    #{cat => ['x_xfce',      'XFCE Applications',  'applications-other']},
    #{cat => ['gnome',       'GNOME Applications', 'gnome-applications']},
    #{cat => ['consoleonly', 'CLI Applications',   'applications-utilities']},

    {obgenmenu => 'Настройки Openbox'},
    {sep       => undef},

    {item => ['xscreensaver-command -lock', 'Блокировка экрана', 'lock']},

    # This options uses the default OpenBox action "Exit"
    {item => ['obshutdown', 'Выход']},
]
#os_locale_language#