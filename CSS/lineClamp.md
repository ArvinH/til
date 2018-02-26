## multi line line-clamp (ellipsis) doesn't work in first load

I applied this class to h3 tag.

.ellipsis-2 {
  $lines: 2;
  $line-multiple: 1.3;
  $font-size: 1em;
  display: block;
  display: -webkit-box;
  max-height: $font-size * $line-multiple * $lines;
  line-height: $font-size * $line-multiple;
  text-overflow: ellipsis;
  overflow: hidden;
  word-wrap: break-word;
  -webkit-line-clamp: $lines;
  -webkit-box-orient: vertical;
}
As you saw in image, there is full lines of text and ellipsis didn't show.

But when I resize screen, ellipsis works fine.

Problem occured only the first time page rendering.

Any adivce?


Ans:

This could happen if the element with -webkit-line-clamp has it's visibility set to hidden when it first renders, either directly or by inheriting from one of its parent.
This is due to this webkit bug: -webkit-line-clamp is not respected when visibility is hidden.

You may just add a specific `visibility: visible` in related css.

