# Adyen [Shopware 6 Plugin](https://docs.adyen.com/plugins/shopware-6) integration demo for support teams

In this demo, you can spin up a Shopware instance and install the Adyen Payment plugin to see how an integration works. It gives your shoppers the option to pay with their preferred payment method in a seamless checkout experience. You can try this demo both online or locally on your computer.

## Running online with [Gitpod](https://gitpod.io/)

* Open your [Adyen Test Account](https://ca-test.adyen.com/ca/ca/overview/default.shtml) and create a set of [API keys](https://docs.adyen.com/user-management/how-to-get-the-api-key).
* Go to [gitpod account variables](https://gitpod.io/variables) and set the `ADYEN_API_KEY`, `ADYEN_CLIENT_KEY` and `ADYEN_MERCHANT_ACCOUNT` variables (Scope: `adyen-examples/*`).
* Set the `SHOPWARE_PLUGIN_VERSION` to the [plugin version](https://github.com/Adyen/adyen-shopware6/tags) you want to install. (Scope: `adyen-examples/*`)
* Click the button below and wait for the "Unable to find a matching sales channel for the request" message to appear in the preview panel.

[![Open in Gitpod](https://gitpod.io/button/open-in-gitpod.svg)](https://gitpod.io/#https://github.com/adyen-examples/adyen-shopware-plugin-demo/tree/support)
* Open a new Terminal in the current directory and run:

```
APP_URL=`gp url 8080 | sed 's~https://~~'` ./install.sh
```
* Visit `previewURL/admin/` and login to view and configure the Adyen Payment plugin
* Login with default Shopware Admin credentials: 
    * User: **admin**
    * Password: **shopware**
* Follow the configuration steps from our official [Shopware 6 Getting Started Guide](https://docs.adyen.com/plugins/shopware-6)

_NOTE: To allow the Adyen Drop-In and Components to load, you have to add `https://*.gitpod.io` as allowed origin for your chosen set of [API Credentials](https://ca-test.adyen.com/ca/ca/config/api_credentials_new.shtml)_


## Running locally

If you don't want to run this demo online, then follow these steps.

### Requirements

* Docker

### Installation

1. Clone this repo:

```
git clone https://github.com/adyen-examples/adyen-shopware-plugin-demo.git
```


2. Run docker compose to spin up the Shopware Docker image. This may take a few minutes depending on your internet and system speed.

```
docker-compose up
```

3. Open a new terminal tab in the current directory and run the following command to set `APP_URL`, install and activate the Adyen Payment plugin:

```
APP_URL='localhost:8080' ./install.sh
```

### Usage

1. Visit shop page http://localhost:8080
2. Login to the admin dashboard (http://localhost:8080/admin/) to configure your [API keys](https://docs.adyen.com/user-management/how-to-get-the-api-key) and payment options.
3. * Login with default Shopware Admin credentials: 
    * User: **admin**
    * Password: **shopware**

Remember to include `http://localhost:8080` in the list of Allowed Origins on the Customer Area.

To try out integrations with test card numbers and payment method details, see [Test card numbers](https://docs.adyen.com/development-resources/test-cards/test-card-numbers).

## Contributing

We commit all our new features directly into our GitHub repository. Feel free to request or suggest new features or code changes yourself as well!

Find out more in our [Contributing](https://github.com/adyen-examples/.github/blob/main/CONTRIBUTING.md) guidelines.

## License

MIT license. For more information, see the **LICENSE** file in the root directory.
