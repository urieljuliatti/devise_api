# README

# Welcome to devise_api 😄

This project is a personal challenge that I developed in order to learn to deal with the authentication library [devise_token_auth](https://github.com/lynndylanhurley/devise_token_auth). Remembering that the application was not configured for production and is intended only for development mode. Any further details can be found at

<table>
  <tr>
    <td>Ruby version</td>
    <td>
      3.0.0
    </td>
  </tr>
  <tr>
    <td>Rails version</td>
    <td>
      6.1.3
    </td>
  </tr>
  <tr>
    <td>Database</td>
    <td>
      PostgreSQL
    </td>
  </tr>
</table>

# Configuration

## Cloning the repo

```bash
git clone https://github.com/urieljuliatti/devise_api
cd devise_api
```
## Installing the dependencies
```bash
bundle install
```
## Starting the server

```bash
rails server
```

# Testing requests

One way to ensure its development is to combine it with the consumption of requests to guarantee the functioning and understanding of how the devise_auth_token works. 

Requests necessarily need three key-values in the header, here they are:

## devise_auth_token mandatory values
<table>
  <tr>
    <td>accsss-token:</td>
    <td>
      your-token
    </td>
  </tr>
  <tr>
    <td>uid:</td>
    <td>
      your User email
    </td>
  </tr>
  <tr>
    <td>client:</td>
    <td>
      the-client
    </td>
  </tr>
</table>

```bash
Note: These values tend to change according to the session, so it is necessary to change from time to time.
```

With that in mind, I made a Postman configuration file. You can get my json file from here: [devise-api.postman_collection.json](https://raw.githubusercontent.com/urieljuliatti/devise_api/main/devise-api.postman_collection.json). 

# Running tests

It is very important that you run the tests and verify the project's proficiency safely:

```bash
rspec
```
# Contact me

- 💬 You can ask me about anything at uriel.juliattivalle@gmail.com


# TODO


## Seeds
## Swagger