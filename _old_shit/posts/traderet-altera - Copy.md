---
id: 2
title: Traderet altera id subitis coeunt in haut
createdAt: "2020-05-22 5:00:00"
# image field is not mandatory
# you can skip it to keep the size of blog cards small
# image: https://images.unsplash.com/photo-1542831371-29b0f74f9713?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=3450&q=80
tags:
  - random
  - lorem
  - ipsum
category: interview
author:
  name: lloydagola
  twitter: lloydagola
  image: /images/bigheadkarngyan.png
---

# Traderet altera id subitis coeunt in haut

## Caespite veni et illos stamen pater aurum

Lorem markdownum vulneris **humum** et mihi. Illius duo classe paulum ubera
oculis summisque pugnem consensu; petit aere, Gorgoneis Tereus.

<!--more-->

## Manibus posses

Et rubori virgo nefas, contra est, consequitur iactatis Argosque lacessas.
[Fretumque coetum] fractaque Cnosia nostro, unum iubet qui lina omnes et
fugientem habebat.

## Reddunt cui ut cursum est est subit

![The San Juan Mountains are beautiful!](https://mdg.imgix.net/assets/images/san-juan-mountains.jpg?auto=format&fit=clip&q=40&w=1080 "San Juan Mountains")

Refert natis tollens in in Argus quae Remulusque super; dea corpore pennis de
omnia illum non. Amem Dixerat, cornua: felici luna *sertis et mihi* coniunx.

1. Acer non pudet dominis
2. Iugulare Gorgonis tergaque et tumidum reparabat moenibus
3. Contentique terra Echionides agmine trepidosque nulla silvas

## Est matre

    package dictionary

    type Dictionary map[string]string
    type DictionaryErr string

    const (
      ErrNotFound         = DictionaryErr("could not find the word you were looking for")
      ErrWordExists       = DictionaryErr("cannot add word because it already exists")
      ErrWordDoesNotExist = DictionaryErr("cannot update word because it does not exist")
    )

    func (dictionary Dictionary) Search(word string) (string, error) {
      definition, ok := dictionary[word]

      if !ok {
        return "", ErrNotFound
      }
      return definition, nil
    }

    func (d Dictionary) Update(word, newDefinition string) error {
      _, err := d.Search(word)

      switch err {
      case ErrNotFound:
        return ErrWordDoesNotExist
      case nil:
        d[word] = newDefinition
      default:
        return err
      }

      return nil
    }

    func (d Dictionary) Delete(word string) error {
      delete(d, word)

      return nil
    }

    func (e DictionaryErr) Error() string {
      return string(e)
    }

    func (d Dictionary) Add(word, definition string) error {
      _, err := d.Search(word)

      switch err {
      case ErrNotFound:
        d[word] = definition
      case nil:
        return ErrWordExists
      default:
        return err
      }

      return nil
    }

    func main() {

    }


[Fretumque coetum]: http://www.inmensoshuc.io/bellumcultis.php
[cera]: http://limosoque.io/decorhuius.html
[ut dedere]: http://capillisredemit.org/etet
