geogist
========

![GeoGist](http://i.imgur.com/1ZV8swV.png)

GeoGist lets you easily create and share GeoJSON snippets.

> This is a toy weekend project to grok PostGIS and Mapbox.

## System Requirements
You'll need the following installed on your machine:

- postgres
- postgis
- rails

## Getting Started

```
bundle install
rake db:migrate
rails s
```

## Feature Roadmap

- Allow users to add markers with infowindows onto the map, updating the underlying GeoJSON
- Play with Mapbox UI control options
- Easy Gist sharing on social networks
- Gist iFrame Embeds
- Somehow link map features such as markers with Gist description/outside HTML elements to allow Google Maps Directions-style interface

## Contributing

[Pull requests](https://github.com/Leventhan/geogist/pulls) are most welcome!