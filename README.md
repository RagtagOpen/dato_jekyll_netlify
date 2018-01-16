## Overview

This is a proof of concept of using DatoCMS -> Jekyll -> Netlify

DatoCMS models the data used on the site. The data is downloaded
into the YAML files in the `_data` directory, the format Jekyll
expects and can be used through out the site.

## The Deploy Process

DatoCMS is linked to Netlify. When an update is made in the DatoCMS
web interface, the option is given to publish the site. DatoCMS
trigger a build/deploy via the Netlify API. The Netlify build process
is configure to pull the DatoCMS data into the `_data` directory
(overwriting anything that is also committed to Git) before building
the static pages.

It's also possible to deploy by pushing commits to Github.

## Developer Setup

Download the repo. Run:

```
bundle install
```

Login to DatoCMS, password available from Spike in Slack. Go to the
Admin area, navigate to **Settings -> API tokens*. Copy the *Read-only
API token*, and add it to the `.env` file

```
echo DATO_API_TOKEN=XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX >> .env
```

Download the data stored in DatoCMS with:

```
bundle exec dato dump
```

And start Jekyll

```
bundle exec jekyll serve
```

You can view the site at http://127.0.0.1:4000/

If you edit files the site will automatically be update. If you change
data in DatoCMS re-run `bundle exec dato dump`, Jekyll will detect the
update and rebuild.
