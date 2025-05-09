---
layout: post
title: A Guide To The Supernote Nomad
date: 2025-05-09
categories:
  - Guides
  - Tech
image: /images/supernote.jpg
description: Making the most of a delightful non-Amazon e-reader.
---

I've been wanting to move away from Amazon for a while, which lead to me picking up a [Supernote Nomad](https://supernote.com/pages/supernote-nomad). It’s an absolutely great e-reader, with the killer feature being the excellent pen interface. Being able to scribble in marginalia is a forgotten pleasure for me and the Nomad brings that back.

But it is a bit of a hobby in and of itself to set up. This post documents how I set up my Nomad and my books, plus a bit about why I love it, and the few things I wish were different.

---

# Tools

I found using [Calibre](https://calibre-ebook.com/) to manage my books was essential to getting books on the Nomad in a decent format and also fun in it’s own right. It also enables using calibre-web if you’d like to self-host a library on your home network (yes this is the kind of thing I find fun).

Beyond that I’ve stayed away from cloud storage. I typically sync my books over from Calibre by connecting the Nomad over USB and using Calibre’s “Send to Device” button. For other files I use the direct share option on the Nomad (swipe down from the top and select the middle icon in the top row that looks like two half arrows inside two pairs of parenthesis).

# Supernote Settings

My main on-device settings are about making the reading experience as distraction-free as possible. I want the page to be as close to a physical book as I can get it so I can focus on the words and my notes on them.

## Hiding The Toolbar

**Double tap the screen with two fingers to hide (or show) the toolbar.** This gets rid of a lot of UI you don’t need if you’re only ever annotating.

## Hiding The Full Screen Button

**In the reader, show the toolbar, tap the “…” icon, Gesture Settings, and toggle Full Screen on and select “Hide ‘Exit Full Screen’ Button.** Now when you hide the toolbar it will not leave the full screen button behind.

## Hiding The Page Numbers

**Double tap in the blank space between the page numbers and file name at the bottom of the screen to hide the bottom bar.** Double tap on the empty bottom portion of the screen to show it again. Note that if you’re reading something with a lot of endnotes or linking, the bottom bar is where the “go pack to last location” button is, so you may want to show it often. There’s also a “return to last location” gesture enabled by default: swipe up with one finger from the top half of the screen.

You can also set the page number bar to hide/show together with the toolbar via the setting in Gesture Settings.

# Calibre Settings

Calibre is a bit of a wondrous beast of a utility. I’m pretty sure it’s Turing-complete. There’s a lot you can tweak, but that also means a lot can go wrong. 

## Standard epub Style
Based on [this reddit post](https://www.reddit.com/r/Supernote/comments/1990lg3/after_some_trial_and_error_ive_landed_on_my_ideal/) I’ve got a standard ebook style I convert all my books to. I’ve yet to find a book that hasn’t worked well with it.

### Preferences > Conversion > Common Options
| Setting | Value |
|:--|:--|
| Look & Feel: Fonts: Base Font Size | 15pt |
| Look & Feel: Fonts: Font Size Key | 12, 12, 14, 15, 18, 20, 22, 24 |
| Look & Feel: Fonts: Embed font family | [Fern text](https://djr.com/fern) |
| Look & Feel: Text: Justification | Justify text |
| Look & Feel: Text: Smarten Punctuation | On |
| Look & Feel: Styling: Extra CSS | @page {<br/>  margin-left: 10pt;<br/>  margin-right: 10pt;<br/>  margin-top: 0;<br/>  margin-bottom: 0; <br/>}<br/><br/>body {<br/>  margin: 0;<br/>  orphans: 1;<br/>  widows: 1;<br/>}<br/> |
| Look & Feel: Styling: Style Information To Completely Remove |   Fonts |
| Page Setup: Output Profile | Pocketbook Inkpad 3 (Pro) and X  |

I’m a hug fan of Fern for screen display—it feels both clean and classic in a way that works really well on an e-ink screen—but you could use any type you like that looks good on the Nomad screen.

While these options are particularly good for the Nomad, I’ve found they work well in many other epub readers. It’s a good enough style that I’ve defaulted to converting all my books to it no matter where I intend to read them.

## On Device File Paths

Calibre will happily sync books wherever you want them. For my size of library I wanted to keep most books as top-level files, but put collections/series into folders.

Open the Nomad device settings by connecting the Nomad and then selecting Device > Configure Device from menu bar at the top of the main screen.

| Setting | Value |
|:--|:--|
| Formats | epub, pdf |
| Save Template | `{series:||/}{series}{series_index:0>2s| - | - }{title} - {authors}` |
| Folders | Document/Books |

By default Calibre will use the library order for the copied book title, so “The Lord of the Rings” would become “Lord of the Rings, The”. I prefer the file name to be the original title, which can be enabled by going to Settings > Tweaks > “Control formatting of title and series when used in templates” and changing “library_order” to “strictly_alphabetical”

# Getting Books

[Humble Bundle](https://www.humblebundle.com/books) has multiple bundles of fiction and non-fiction books at any given time, and they’re often DRM-free.

[Bookshop.org](https://bookshop.org/) sells some books DRM-free, but not many.

Other DRM-encumbered books may be legal to remove DRM from after purchase, depending on your jurisdiction. I’m not an expert on the legal or practical side of this; you should probably find one.

# Reading on the Supernote Nomad

With these settings when you open a book you’ll see just the book, nothing else, but still be able to scrawl notes by writing anywhere.

If you’d like to save highlights for later, you can draw brackets (like `[` and  `]`) at the beginning and end of the text you want to highlight. You can then tap on the highlight if you want to take a longer note associated with that highlight.

The quick access bar (swipe down on the bar on the right side of the screen) is handy for moving between books or jumping to your most-used apps.

You can find all your highlights via the Digest app which is in the quick access by default. You can then export them if you’d like to have a standalone copy, or ingest them to another system (I personally use [Capacities](https://capacities.io/))

I typically save my currently reading books to quick access by showing the toolbar and tapping the chain-link-with-plus button, then “Current Document.” You can hold items in quick access to move them up or down or remove them.

I’ve also toyed with keeping a note called “Home” with links to all my current things, then keeping that in the quick access. But that feels like one more tap past the quick access itself.

# Other Cool Things

I’ve found the Nomad excellent for doing crosswords. You can get cool crosswords in PDF format from [AVCX](https://avxwords.com/).

Manga also reads fairly well on the Nomad. Keep an eye on Humble Bundle for when they feature mange. Otherwise I don’t know of a great way to get manga in a format that can be copied to the Nomad.

Any line art, like [the designs of Micah Ulrich](https://shop.micahulrich.com/), work great as screensavers.

Some smaller-format two-color RPGs read pretty well too, like [Wulfwald](https://www.lostpages.co.uk/presskit/sheet.php?p=wulfwald).

One of the players in my playtest game of [Below](https://github.com/Sagelt/below) has been keeping their character on their Nomad, and I’ve used mine to sketch out character sheet ideas for quick sharing.

---

With these in place I’ve found the Nomad fits my needs exactly. I’ve been using the Lamy pen and cloth folio with it—the Lamy pen is basically the excellent Lamy Safari, and the folio uses magnets to attach making it easy to pull off when I want something thinner. Fine-tuning the Nomad is a bit of a hobby, but it’s given me a great ereader with content that I own and store locally. The look of books is great, and being able to scrawl notes has me more engaged and thoughtful in reading.

With that said, there’s still a few things to consider:

* No backlight makes it less suitable for reading in some environments.
* The device UI is very open ended and not very tuned for ebooks—there’s no view that uses the metadata in the ebook to show the author and title separately for example. It’s just filenames and the cover. Unlike many other ereaders, the screen saver can’t automatically show the cover of the book you’re reading.
* Some UI can be hard to remember. It’s taken me a while to get used to all the different power moves, like having different selection actions when holding two fingers on the side bar or page.
* The screen is monochrome and on the smaller side, which is ideal for text-focused books but doesn’t do great with larger formats or color-heavy (like comics or most RPG books).

For me, those are all reasonable tradeoffs (except maybe the backlight—please Supernote add a backlight), and it’s gotten my ebook reading out of the Amazon ecosystem and into my own hands. 

