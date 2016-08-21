# Oblique Images

A little ruby script that generates images with phrases to unblock you.

Here's an example:

![Is it a typo?](https://github.com/prehnRA/oblique-images/raw/master/docs/is-it-a-typo.png)

## Why?

You could use the images in a slideshow screensaver and get a little unblocked
after every coffee break. I load the images on a digital picture frame that I
keep near my desk to solve deadlock.

## Running

```
bundle install
ruby make_image.rb
```

the images will build into `build/`.

## Troubleshooting

This uses imgkit, which uses wkhtmltopdf. On my Mac, the current version of
wkhtmltopdf from brew (0.11-rc1) hangs forever without completing. I installed
version 0.12.x from the wkhtmltopdf website (prebuilt binary) and it worked.

## The phrase list

I borrowed the included list from: https://github.com/cmpaul/oblique-strategies

To customize the list, edit obliques.yaml. If you  have oblique programming
strategies that you think are particularly great, feel free to make a PR or post
them in an issue. If I agree, I will add them to the set.

## Customizing the template

It is just html, embedded in the script. Nothing fancy. Edit at will.
