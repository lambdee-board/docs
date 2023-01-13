---
# Feel free to add content and custom Front Matter to this file.
# To modify the layout, see https://jekyllrb.com/docs/themes/#overriding-theme-defaults

layout: default
title: Scripting API
nav_order: 3
---

# Scripting API

Lambdee's scripting API currently only supports the [Ruby](https://www.ruby-lang.org/) Programming Language.
There are plans for adding support for JavaScript through [Node.js](https://nodejs.org/en/) or [Python](https://www.python.org/)
in the future.

## Models

There are classes which represent certain types of objects (or database tables) in the
Lambdee Agile Board, like workspaces, boards, lists, tasks, users etc.

We call them "Models".

All Model classes live under the `DB` namespace like `DB::User`, `DB::Task`, `DB::Workspace` etc.

### Reflection methods

There are certain reflection methods which let you ask the model classes
how they are associated with other models or what
kind of attributes they can store.

#### Attributes

```rb
DB::Task.attributes #=> [:name, :description, :pos, :created_at, :updated_at]
```
