---
layout: post
type: photo
title: "Example - Photo Post"
subtitle: "Examples and code for displaying images in posts."
category: photos
tags: 
    - sample-post 
    - images 
    - gallery 
    - photo
photo: /assets/images/endeavour_launch.jpg
comments: true
date: 2016-06-02
modified: 
---

Here is an example of what a post with a gallery might look like. If you want to display two or three images next to each other responsively use `figure` with the appropriate `class`. Each instance of `figure` is auto-numbered and displayed in the caption.

For three figures:

```html
<figure class="third">
    <a href="{{ site.url }}/{{ site.baseurl }}/assets/images/endeavour_launch.jpg"><img src="{{ site.url }}/{{ site.baseurl }}/assets/images/endeavour_launch.jpg"></a>
    <a href="{{ site.url }}/{{ site.baseurl }}/assets/images/endeavour_launch.jpg"><img src="{{ site.url }}/{{ site.baseurl }}/assets/images/endeavour_launch.jpg"></a>
    <a href="{{ site.url }}/{{ site.baseurl }}/assets/images/endeavour_launch.jpg"><img src="{{ site.url }}/{{ site.baseurl }}/assets/images/endeavour_launch.jpg"></a>
</figure>
```

<!--summary-->

<figure class="third">
    <a href="{{ site.url }}/{{ site.baseurl }}/assets/images/endeavour_launch.jpg"><img src="{{ site.url }}/{{ site.baseurl }}/assets/images/endeavour_launch.jpg"></a>
    <a href="{{ site.url }}/{{ site.baseurl }}/assets/images/endeavour_launch.jpg"><img src="{{ site.url }}/{{ site.baseurl }}/assets/images/endeavour_launch.jpg"></a>
    <a href="{{ site.url }}/{{ site.baseurl }}/assets/images/endeavour_launch.jpg"><img src="{{ site.url }}/{{ site.baseurl }}/assets/images/endeavour_launch.jpg"></a>
</figure>

For two figures:

```html
<figure class="half">
    <a href="{{ site.url }}/{{ site.baseurl }}/assets/images/endeavour_launch.jpg"><img src="{{ site.url }}/{{ site.baseurl }}/assets/images/endeavour_launch.jpg"></a>
    <a href="{{ site.url }}/{{ site.baseurl }}/assets/images/endeavour_launch.jpg"><img src="{{ site.url }}/{{ site.baseurl }}/assets/images/endeavour_launch.jpg"></a>
</figure>
```

<figure class="half">
    <a href="{{ site.url }}/{{ site.baseurl }}/assets/images/endeavour_launch.jpg"><img src="{{ site.url }}/{{ site.baseurl }}/assets/images/endeavour_launch.jpg"></a>
    <a href="{{ site.url }}/{{ site.baseurl }}/assets/images/endeavour_launch.jpg"><img src="{{ site.url }}/{{ site.baseurl }}/assets/images/endeavour_launch.jpg"></a>
</figure>

For one figures:

```html
<figure>
    <a href="{{ site.url }}/{{ site.baseurl }}/assets/images/endeavour_launch.jpg"><img src="{{ site.url }}/{{ site.baseurl }}/assets/images/endeavour_launch.jpg"></a>
</figure>
```

<figure>
    <img src="{{ site.url }}/{{ site.baseurl }}/assets/images/endeavour_launch.jpg">
</figure>

## Markdown Images

I have some custom JS and CSS running so that all MMD images use the Magnific Popup library. So this:

```markdown
![][20160601t1739]

[20160601t1739]: {{ site.url }}/{{ site.baseurl }}/assets/images/endeavour_launch.jpg "this is something" width=600px
```
 renders like this (click to see zoom animation):

![][20160601t17344]


[20160601t17344]: {{ site.url }}/{{ site.baseurl }}/assets/images/endeavour_launch.jpg "this is something" width=600px


## YAML Front Matter

```yaml
---
layout: post
type: photo
title: "Example - Photo Post"
subtitle: "Examples and code for displaying images in posts."
category: photos
tags: sample-post images gallery photo
imagefeature: blurred_circles.jpg
photo: /assets/images/endeavour_launch.jpg
comments: true
modified: 
---
```
    
## Live Blog View

![][20160602203322]

[20160602203322]: https://i.imgur.com/xQov16U.png title="this is how the photo posts appears in the blog feed" width=600px
