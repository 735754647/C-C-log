@echo off
SetLocal EnableDelayedExpansion
(set PATH=C:\QT\QT5.14.1\5.14.1\MSVC2017_64\bin;!PATH!)
if defined QT_PLUGIN_PATH (
    set QT_PLUGIN_PATH=C:\QT\QT5.14.1\5.14.1\MSVC2017_64\plugins;!QT_PLUGIN_PATH!
) else (
    set QT_PLUGIN_PATH=C:\QT\QT5.14.1\5.14.1\MSVC2017_64\plugins
)
%*
EndLocal
