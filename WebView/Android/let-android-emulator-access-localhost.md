# How to debug with localhost in Android emulator

## Step 1, enable http

According to Network security configuration

> Starting with Android 9 (API level 28), cleartext support is disabled by default.

We either need to setup Proxy that can connect with https or we need to explicitly set cleartextTrafficPermitted to true.

Here's how you can enable cleartextTrafficPermitted:

Open `${example android repo}/app/src/internal/res/xml/network_security_config.xml` file
Add `<base-config cleartextTrafficPermitted="true"/>` in `<network-security-config>`
This will enable http access


src:
https://stackoverflow.com/questions/45940861/android-8-cleartext-http-traffic-not-permitted


## Step 2, use adb to forward port

After you start the emulator, go to your terminal, run adb reverse tcp:5001 tcp:5001. (5001 can be changed to any port you like).

If you can'f find adb in terminal, try export environment variable:

```bash
export ANDROID_HOME=/Users/xxxx/Library/Android/sdk
export PATH=${PATH}:${ANDROID_HOME}/tools
export PATH=${PATH}:${ANDROID_HOME}/platform-tools
```

You can find your `ANDROID_HOME` path in Android studio:

"Preferences" -> "Appearance & Behavior" -> "System Settings" -> Android SDK

![img](https://i.imgur.com/EIXgE15.png)

