---
layout: post
title: Feature - Syntax Highlighting Post
subtitle: "Demo post displaying the various ways of highlighting code in Markdown."
category: Sample-Posts
tags: 
  - sample post
  - code
  - highlighting
imagefeature: 
comments: true
modified: 2016-05-31
date: 2016-05-31
share: true
---

Syntax highlighting is a feature that displays source code, in different colors and fonts according to the category of terms. This feature facilitates writing in a structured language such as a programming language or a markup language as both structures and syntax errors are visually distinct. Highlighting does not affect the meaning of the text itself; it is intended only for human readers.[^1]

[^1]: <http://en.wikipedia.org/wiki/Syntax_highlighting>

<!--summary-->

### Pygments Code Blocks

To modify styling and highlight colors edit `/assets/less/pygments.less` and compile `main.less` with your favorite preprocessor. Or edit `main.css` if that's your thing, the classes you want to modify all begin with `.highlight`.

```css
#container {
    float: left;
    margin: 0 -240px 0 0;
    width: 100%;
}
```

```html
<nav class="pagination" role="navigation">
    {% if page.previous %}
        <a href="{{ site.url }}{{ site.baseurl }}{{ page.previous.url }}" class="btn" title="{{ page.previous.title }}">Previous article</a>
    {% endif %}
    {% if page.next %}
        <a href="{{ site.url }}{{ site.baseurl }}{{ page.next.url }}" class="btn" title="{{ page.next.title }}">Next article</a>
    {% endif %}
</nav><!-- /.pagination -->
```

```ruby
module Jekyll
  class TagIndex < Page
    def initialize(site, base, dir, tag)
      @site = site
      @base = base
      @dir = dir
      @name = 'index.html'
      self.process(@name)
      self.read_yaml(File.join(base, '_layouts'), 'tag_index.html')
      self.data['tag'] = tag
      tag_title_prefix = site.config['tag_title_prefix'] || 'Tagged: '
      tag_title_suffix = site.config['tag_title_suffix'] || '&#8211;'
      self.data['title'] = "#{tag_title_prefix}#{tag}"
      self.data['description'] = "An archive of posts tagged #{tag}."
    end
  end
end
```


### Standard Code Block

  
    <nav class="pagination" role="navigation">
        {% if page.previous %}
            <a href="{{ site.url }}{{ site.baseurl }}{{ page.previous.url }}" class="btn" title="{{ page.previous.title }}">Previous article</a>
        {% endif %}
        {% if page.next %}
            <a href="{{ site.url }}{{ site.baseurl }}{{ page.next.url }}" class="btn" title="{{ page.next.title }}">Next article</a>
        {% endif %}
    </nav><!-- /.pagination -->
   


### Fenced Code Blocks

To modify styling and highlight colors edit `/assets/less/coderay.less` and compile `main.less` with your favorite preprocessor. Or edit `main.css` if that's your thing, the classes you want to modify all begin with `.coderay`. Line numbers and a few other things can be modified in `_config.yml` under `coderay`.

```css
#container {
    float: left;
    margin: 0 -240px 0 0;
    width: 100%;
}
```

```html-raw
<nav class="pagination" role="navigation">
    {% if page.previous %}
        <a href="{{ site.url }}{{ site.baseurl }}{{ page.previous.url }}" class="btn" title="{{ page.previous.title }}">Previous article</a>
    {% endif %}
    {% if page.next %}
        <a href="{{ site.url }}{{ site.baseurl }}{{ page.next.url }}" class="btn" title="{{ page.next.title }}">Next article</a>
    {% endif %}
</nav><!-- /.pagination -->
```

```ruby
module Jekyll
  class TagIndex < Page
    def initialize(site, base, dir, tag)
      @site = site
      @base = base
      @dir = dir
      @name = 'index.html'
      self.process(@name)
      self.read_yaml(File.join(base, '_layouts'), 'tag_index.html')
      self.data['tag'] = tag
      tag_title_prefix = site.config['tag_title_prefix'] || 'Tagged: '
      tag_title_suffix = site.config['tag_title_suffix'] || '&#8211;'
      self.data['title'] = "#{tag_title_prefix}#{tag}"
      self.data['description'] = "An archive of posts tagged #{tag}."
    end
  end
end
```

