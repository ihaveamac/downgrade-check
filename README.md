**This is pretty much outdated due to https://github.com/svanheulen/downgrade_check and only kept here for historical purposes or something. So you should go use that instead.**
# downgrade-check
This small tool will check if you have downgraded your Nintendo 3DS system properly to the NATIVE_FIRM of 9.2 (2.46-0) or lower.

This only checks the NATIVE_FIRM version. The reason behind this is that most methods for downgrading (recent sysUpdater, SafeSysUpdater, etc.) generally install NATIVE_FIRM last (or near the end sometimes), therefore it should be a pretty reliable way to tell if a downgrade is complete or not. This may or may not check other installed contents in the future.

If you are looking to downgrade, [SafeSysUpdater](https://gbatemp.net/threads/wip-safesysupdater.409392/) is recommended, as it can do an MD5 check on your update files and compare them to your model and region, greatly reducing the chance of a brick due to bad or incorrect update files.

This uses a modified lpp-3ds by Rinnegatamante to remove unnecessary features (and so it might actually boot on a 9.2 system). The source of this mod can be found at `lpp-3ds-strip.zip`. It is identical to the one mashers-gl-updater uses.
#License
downgrade-check is under the MIT license. Lua Player Plus is under the GPLv3 license.
