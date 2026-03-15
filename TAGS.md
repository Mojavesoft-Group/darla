# Darla tags
## HTML loanwords
These tags were heavily inspired by HTML.
### h1-h6
Roughly the same as their equivalents in HTML5. Accepts no attributes.

Example: `<h1>Heading</h1>`

### p, i, b, pre
Roughly the same as their equivalents in HTML5. Accepts no attributes.

Example: `<p>This show is <i>horrible</i>!</p>`

### a
Roughly the same as its equivalent in HTML5. Requires the `href` attribute.

Example: `<a href="https://example.com/">Here's a link!</a>`

### img
Roughly the same as its equivalent in HTML5. Requires the `src` attribute, as well as an optional `alt` attribute.

Example: `<img src="/common/mascot26anim.gif" alt="Lorem ipsum!"/>`

## Darla-specific stuff
### doc
Contains the content of a Darla document. Requires the `header` attribute (which is the header for your page), and accepts the optional `title` (page title) and `style` (CSS stylesheet) attributes as well.

Example:
~~~xml
<?xml version="1.0" encoding="UTF-8"?>
<doc header="Something cool" title="Something cool" style="/common/darla/darla.css">
    <img src="/common/mascot26anim.gif" alt="Lorem ipsum!"/>
    <hr/>
    <p>Thank you for visiting the <i>Something cool</i> website!</p>
    <a href="https://example.com">A link! <b>Awesome!</b></a>
    <darla-footer copyright="All rights reserved."/>
</doc>
~~~

### darla-home
If Darla is currently being rendered in HTML, put `<a href="/"><img src="/common/HOME.png"/></a><br/>` wherever `darla-home` was used.

This feature is only intended for usage on [mojavesoft.net](https://mojavesoft.net/) and should not be used by other websites if possible.

Example: `<darla-home/>`

### darla-footer
Add a watermark at the bottom of the document that says `Generated using Darla [version number]. [copyright statement]` where `[version number]` is the current version of Darla and `[copyright statement]` is the value of the `copyright` attribute.

In HTML, this watermark is rendered in small italics using a serif font, aligned to the right of the page.
