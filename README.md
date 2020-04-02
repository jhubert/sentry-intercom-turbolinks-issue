# Sentry, Turbolinks, and Intercom Issue

Using these 3 libraries together causes major issues in Internet Explorer.

I haven't figured out exactly why. It seems to be something with the way that Sentry wraps Intercom's mousemove listener, and the way that turbolinks unloads and reloads the page.

To test this, you'll need an intercom app id and a Sentry DSN.

Run the server like so:

```bash
export SENTRY_DSN=<DSN>
export INTERCOM_APP_ID=<APP_ID>
rails s
```

And then, in IE 11 or Edge:

1. https://localhost:3000
2. Open the JS Debugger
3. Wait for Intercom to load
4. Click on "Go to Show"
5. Wait for Intercom to load.
6. Move your mouse.

You should see the errors in the console.
