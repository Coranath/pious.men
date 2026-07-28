---
date: '2026-07-25T00:00:00-07:00'
draft: false
title: 'Cool Open Source'
pubdate: '2026-01-12T00:00:00-07:00'
params:
    author: 'Levi Moore'
tags:
    - Open Source
image: "OpenSourceLogo.webp"
---

This is just a collection of interesting open source tools, so that I don't forget them, and other people can see how cool they are!

## Is Open Source Safe

## Is Open Source Beneficial

### Viral licenses

## Immich
Immich is a FANTASTIC tool! One of the smoothest, and most feature loaded apps I've ever used! And it's totally free!

Not so long ago, my wife, my sister, and my aunt all came to me within the span of a month and asked me if I knew of anything that could help them replace Google/Amazon/Microsoft photos! My sister and my aunt did this because they had filled their limited quota of free storage and since their email was stored in the same bucket apparently, they could no longer receive emails unless they deleted their pictures or paid for more storage! I don't know about you, but I think that's pretty scummy! These companies offer you free storage for you pictures, they nag you about it constantly if you don't backup your pictures with them, and when you do they stop letting you receive emails, send scary warnings like "Your pictures may be deleted if storage is not expanded soon", and more as soon as you hit 5 or 10 gigs!?

As if all that wasn't enough, they sell and train models on your pictures, videos, and emails! Even if you pay they STILL sell all your data!

One of the main ways that they keep people trapped is convenience! Sure you know that Amazon charges you more than it would cost to store your photos yourself, but they have an easy app, and you can see your gallery from you computer, or your phone anytime! Plus they have fancy feature like facial recognition, searchable images, and easy image sharing.

That's why I was SO impressed with Immich! It is BETTER than any paid photo storage I've seen! The app is great, it handles backups super easily, installing the server is super easy thanks to Docker, and the extra features are awesome! 

It has facial recognition which you can filter images by to only show pictures of a specific person.

It has context searching where you can tell it a word and it will show you images with that word related! Miriam and I were wondering how long it had been since we went to the Grand Canyon. She started skimming through her timeline, and just out of curiosity I hopped on Immich and search Grand Canyon. BOOM! First picture was us taking a selfie in front of the Grand Canyon! It's honestly a little scary, but it's a good reminder! Big companies are doing this with our data whether they tell us or not! They can already search through your whole life for any images with a gun, or scan the year 2020 for maskless pictures, or pictures of you at a protest! Seems a little too easy but at least now it's working to benefit you, on your server, not sending or selling it to anyone!

![ImmichContextSearch.png](ImmichContextSearch.png)

If your pictures have location data (*You can enable that in your camera app, but it's a privacy risk if you post those photos online or even back them up somewhere you don't trust*) then you can switch to the map view in Immich and click to see all your picture from that trip to Germany!

![ImmichMap.png](ImmichMap.png)

It has incredible sharing features! If you both have accounts on your instance of Immich then you can mark someone as a partner, and that automatically shares all your photos with them! You can choose whether or not those show up in your timeline with your photos too! But maybe that's too much sharing, well you can also create and share albums. If you share with other Immich users you can comment on photos in the album.

![ImmichSharedAlbumComments.png](ImmichSharedAlbumComments.png)

Or you can generate a url that is accessible to anyone who can reach you server, whether they have an account on your Immich instance or not! Look at all these cool options!

![ImmichURL.png](ImmichURL.png)

You can choose your own name for the URL instead of having it be random letters and numbers! You can set a password if you want, or just leave it open! You can set the link to expire after a period of time, and you can choose what people can do with the link, upload, download, and whether or not they can see metadata, which includes the location data for the photos if it exists. Now do keep in mind that this is not foolproof there are ways to download the images even if the website doesn't offer it so I wouldn't go handing out keys to your private photo stash regardless but it's pretty cool!

And did I forget to mention that this is all running on a TINY computer? This computer specifically: [https://www.amazon.com/GMKtec-G5S-Compact-Celeron-LPDDR4/dp/B0H4TCY6TH?ref_=ast_sto_dp](https://www.amazon.com/GMKtec-G5S-Compact-Celeron-LPDDR4/dp/B0H4TCY6TH?ref_=ast_sto_dp) That tiny little computer and one command lets me run the webserver, the AI component for context searching, and facial recognition, and the database for storing all that cool stuff!

Here is their website if you want to see what they are all about: [https://immich.app/](https://immich.app/)

And here is their github where all the code is hosted free for anyone: [https://github.com/immich-app/immich](https://github.com/immich-app/immich)

## Docker

I mentioned Docker a few times in the previous section and it will come up again in just about every other section! For those of you who have not heard of Docker, it's a kind of virtualization software that lets you run programs as if they were the only thing running on your computer. This can help with dependencies and security by providing isolation between programs, they can use the same ports, the same database programs, the same everything pretty much, and run on the same computer without being able to see or mess with each other! For those that are familiar with Docker and hate it, it is not a solution to every problem. In fact it's probably not the best solution to any problem. But it is a great solution to the issue of easy installation, management, updating, and uninstalling. For those who are familiar with Docker and love it, I'm honestly kind of with you! But again it's not a perfect solution to everything! However when it comes to easy set up for homelabs it's amazing!

I have Immich running and I just used the Docker Compose (*Which is a scripting language for Docker*) that Immich provided, then I just run that, and it downloads the images and starts all the containers I need! (*Containers is what Docker creates*) I didn't install any other dependencies on my machine, and if I ever want to uninstall Immich I just remove that folder, the containers, and the images, and that's it! But I also have Copyparty running for a network file share. It has it's own dependencies, some of which are the same as Immich but rather than setting them both up to talk to the same database and making sure that they don't step on each other, Docker lets me just spin up a database for each of them.

Obviously since Docker duplicates dependencies it takes up more storage than a well installed and managed system would. But for beginners, or people who have more computing resources than time, it's a worthy trade!

Their open source is a bit scattered but here are some links to get started!

[https://github.com/docker](https://github.com/docker)

[https://github.com/containerd/containerd](https://github.com/containerd/containerd)

[https://github.com/moby/moby](https://github.com/moby/moby)

## TapMap
[https://github.com/olalie/tapmap](https://github.com/olalie/tapmap)
