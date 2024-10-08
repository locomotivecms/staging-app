# LocomotiveCMS Staging app

## Description

Ruby on Rails application powering the LocomotiveCMS engine. This is the application you end up with when you follow the LocomotiveCMS installation guide [here](https://doc.locomotivecms.com/v4.0/docs/getting-started-with-locomotive).

## Major component versions

- Ruby 3.2
- Ruby on Rails 7.1
- LocomotiveCMS v4.2

## Server installation

Locally

```
kamal deploy
```

On the server

```
docker network create --driver bridge private
```

Copy your your private SSH key (the one you entered in your Github settings) to the GH actions (SSH_PRIVATE_KEY).

## Contact

Feel free to contact me at didier at nocoffee dot fr.

Copyright (c) 2024 NoCoffee, released under the MIT license
