Q: How can I send notifications to Chrome when the website tab is closed?

A:

You are looking for the Push API:

The Push API gives web applications the ability to receive messages pushed to them from a server, whether or not the web app is in the foreground, or even currently loaded, on a user agent. This lets developers deliver asynchronous notifications and updates to users that opt in, resulting in better engagement with timely new content.
And the Notifications API:

The Notification interface of the Notifications API is used to configure and display desktop notifications to the user.
You must use these in combination with a Service Worker. From the Push API documentation:

For an app to receive push messages, it has to have an active service worker. When the service worker is active, it can subscribe to push notifications using PushManager.subscribe().

source:
https://stackoverflow.com/questions/34436287/how-can-i-send-notifications-to-chrome-when-the-website-tab-is-closed

https://developers.google.com/web/fundamentals/getting-started/codelabs/push-notifications/

https://developer.mozilla.org/en/docs/Web/API/Push_API

