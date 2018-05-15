
# Jekyll Omega Theme 

Here I've lifted the excellent [HMFAYSAL OMEGA theme](https://github.com/hmfaysal/hmfaysal-omega-theme), added a few tweaks and packaged it up as a gem-based theme.

## Installation and Usage

To create a new website using the theme first grab the default folder structure and files:

```bash
wget https://github.com/thespacedoctor/hmfaysal-omega-jekyll-theme/archive/master.zip
unzip master.zip
mv hmfaysal-omega-jekyll-theme-master my-new-website
cd my-new-website/
```

Now run the provided script to clean up those files:

```bash
sh init_setup.sh
```

and follow the prompts.

## Serving and Building

To serve the Jekyll site on your local machine run the following:

```bash
bundle exec jekyll serve
```

and open your browser at the URL stated in the command-line outout (try chaning `127.0.0.1` to `localhost` in the URL if assests are not getting rendered).

To build the production version of your site run:

```bash
bundle exec jekyll build -d /path/to/build/folder
```

## Running in Development Mode with Apache

If you have Apache setup on your local machine to host a development version of your Jekyll site you will need to have the `site.url` parameter set to `localhost` to source all of your assests correctly. To do this by overriding the production `site.url` run the following:

```bash
bundle exec jekyll build --config _config.yml,_config_dev.yml
```

## Creating a Password Protected Version of Your Site

You can now create a second version of your site that sits behind basic authentication (if you're hosting with Apache). To do so you first need to create a .htpasswd file with the password you want by running the follow command from the root directory of your Jekyll source and giving a good strong password.

```bash
htpasswd -c .htpasswd guest
```

Once you have your password set run the build commands in the following order:

```bash
bundle exec jekyll build
bundle exec jekyll build --config _config.yml, --destination _site/protected --unpublished --baseurl=/protected
```

Now when you go the the `/protected` subpath of your domain you will be prompted for a user and password. Any posts with the front-matter `published: false` will be found in the protected version of your site but not the public version. Niffty.

Note: make sure that you have `AllowOverride AuthConfig` within a Directory tag in either a VirtualHost or your httpd config file to allow the `.htaccess` file to alter the authentication settings for the directory it lives in.

```text
<VirtualHost *:80>
      ...

      <Directory /path/to/my/_site>
        Options FollowSymLinks Includes Indexes
        Require all granted
        AllowOverride AuthConfig
      </Directory>

      ...
</VirtualHost>
```




