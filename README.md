# FinnHub CFML API wrapper

Wraps the [FinnHub](https://finnhub.io) API for easy CFML usage using the [Hyper](https://github.com/elpete/hyper) ColdBox module.

## Getting Started

1. Install this module - `box install FinnHub`
2. Configure FinnHub API secrets using `.env`
3. OR configure FinnHub API via ColdBox `moduleSettings`

## Environment Variable Configuration

FinnHub can mainly be configured using environment variables:

* `FINNHUB_API_KEY` - Required API key for authenticating with the FinnHub API
* `FINNUHB_API_URL` - base URL of the FinnHub API.

You'll need to either use `commandbox-dotenv` to automatically populate environment variables from the `.env` file on server start, or manually read this file to populate environment variables inside your application.

```bash
# .env file
# FinnHub API Credentials
FINNHUB_API_KEY=
FINNHUB_API_URL=https://finnhub.io/api/v1
```

## ColdBox Module Configuration via ModuleSettings

Set this in `config/ColdBox.cfc` in the `configure()` method:

```js
moduleSettings.finnHub = {
    apiKey : "blablasecret",
    apiURL : "my.url"
};
```