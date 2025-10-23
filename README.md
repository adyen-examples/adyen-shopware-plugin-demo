# Adyen [Shopware 6 Plugin](https://docs.adyen.com/plugins/shopware-6) integration demo

In this demo, you can spin up a Shopware instance and install the Adyen Payment plugin to see how an integration works. It gives your shoppers the option to pay with their preferred payment method in a seamless checkout experience.

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
