| myWorld item t line n |

" myWorld "
myWorld := Morph new.
myWorld extent: 1024@768;
    position: 10@80;
    color: (Color veryVeryLightGray ).
myWorld clipSubmorphs: true.

myWorld openInWorld.

" H lines "
n := 0.
[n < (myWorld extent) y] whileTrue: [ 
	n := n + 40.
   line := Morph new.
	line extent: 1024@1;
	color: (Color black);
	position: (myWorld position) + (0 @ n).
	myWorld addMorph: line.
].

" V lines "
n := 0.
[n < (myWorld extent) x] whileTrue: [ 
	n := n + 100.
   line := Morph new.
	line extent: 1@768;
	color: (Color lightGray );
	position: (myWorld position) + (n @ 0).
	myWorld addMorph: line.
].

" a block item with text "
item := Morph new.
item extent: 80@39; color: (Color lightGreen ).

myWorld addMorph: item.
item center: ((myWorld center) x) @ ((myWorld center ) y // 40 * 40 + 20).
item roundedCorners: true.

t := TextMorph new.
t contents: 'abcd'.
item addMorph: t.
t center: (item center).
