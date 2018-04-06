---
layout: post
type: video
title: "Example - Video Post"
subtitle: "Here is a description of this video post"
category: videos
tags: sample-post video
video: https://www.youtube.com/watch?v=Oe3St1GgoHQ
imagefeature: blurred_circles.jpg
comments: true
date: 2016-06-02
modified:
---

Video embeds are responsive and scale with the width of the main content block with the help of [FitVids](http://fitvidsjs.com/).

<!--summary-->

Not sure if this only effects Kramdown or if it's an issue with Markdown in general. But adding YouTube video embeds causes errors when building your Jekyll site. To fix add a space between the `<iframe>` tags and remove `allowfullscreen`. Example below:

```html
<iframe width="940" height="529" src="//www.youtube.com/embed/CQJByFp7H38?theme=light&amp;color=white" frameborder="0" allowfullscreen> </iframe>
```


<iframe width="940" height="529" src="//www.youtube.com/embed/Oe3St1GgoHQ?theme=light&amp;color=white" frameborder="0" allowfullscreen></iframe>


## YAML Front Matter

```yaml
---
layout: post
type: video
title: "Example - Video Post"
video: https://www.youtube.com/watch?v=Oe3St1GgoHQ
subtitle: "Here is a description of this video post"
category: videos
tags: sample-post video
imagefeature: blurred_circles.jpg
comments: true
modified:
---
```
    
## Live Blog View

![][20160602161723]

[20160602161723]: https://i.imgur.com/wI8pg6J.png  title="this is how the video post looks in the blog feed" width=600px
