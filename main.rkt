#lang at-exp racket

(require (except-in website-js log table)
	 codespells-runes
	 (only-in codespells require-mod))

(require-mod fire-particles)
(require-mod ice-particles)
(require-mod rocks)
(require-mod hierarchy)
(require-mod spawners)
(require-mod triggers)
(require-mod cabin-items)

(define (video-embed name)
  (video 'autoplay: #f 'loop: #f 'muted: #t width: "100%"
         'controls: #t
         (source src: (prefix/pathify (list "videos" name))
                 type: "video/webm")
         "Sorry, your browser doesn't support video embeds"))

(define flames-video
  (page videos/flames.mp4
   (build-path "videos" "cut" "flames.mp4")))

(define rocks2-video
  (page videos/rocks2.mp4
   (build-path "videos" "cut" "rocks2.mp4")))

(define apples-video
  (page videos/apples.mp4
   (build-path "videos" "cut" "apples.mp4")))

(define flaming-rocks-video
  (page videos/flaming-rocks.mp4
   (build-path "videos" "cut" "flaming-rocks.mp4")))

(define enchanted-apples-video
  (page videos/enchanted-apples.mp4
   (build-path "videos" "cut" "enchanted-apples.mp4")))

(define wizards-chair-video
  (page videos/wizards-chair.mp4
   (build-path "videos" "cut" "wizards-chair.mp4")))

(define explosion-spawner-video
  (page videos/explosion-spawner.mp4
   (build-path "videos" "cut" "explosion-spawner.mp4")))

(define rock-spawner-video
  (page videos/rock-spawner.mp4
   (build-path "videos" "cut" "rock-spawner.mp4")))

(define apple-spawner-video
  (page videos/apple-spawner.mp4
   (build-path "videos" "cut" "apple-spawner.mp4")))

(define explosion-trap-video
  (page videos/explosion-trap.mp4
   (build-path "videos" "cut" "explosion-trap.mp4")))

(define rock-trap-video
  (page videos/rock-trap.mp4
   (build-path "videos" "cut" "rock-trap.mp4")))

(define apple-trap-video
  (page videos/apple-trap.mp4
   (build-path "videos" "cut" "apple-trap.mp4")))

(define endlessly-exploding-rock-video
  (page videos/endlessly-exploding-rock.mp4
   (build-path "videos" "cut" "endlessly-exploding-rock.mp4")))

(define flaming-rock-spawner-video
  (page videos/flaming-rock-spawner.mp4
   (build-path "videos" "cut" "flaming-rock-spawner.mp4")))

(define enchanted-apple-that-spawns-apples-video
  (page videos/enchanted-apple-that-spawns-apples.mp4
   (build-path "videos" "cut" "enchanted-apple-that-spawns-apples.mp4")))

(define flaming-barrel-trap-video
  (page videos/flaming-barrel-trap.mp4
   (build-path "videos" "cut" "flaming-barrel-trap.mp4")))

(define apple-apocalypse-video
  (page videos/apple-apocalypse.mp4
   (build-path "videos" "cut" "apple-apocalypse.mp4")))


(define (videos)
  (list
   flames-video
   rocks2-video
   apples-video
   flaming-rocks-video
   enchanted-apples-video
   wizards-chair-video
   explosion-spawner-video
   rock-spawner-video
   apple-spawner-video
   explosion-trap-video
   rock-trap-video
   apple-trap-video
   endlessly-exploding-rock-video
   flaming-rock-spawner-video
   enchanted-apple-that-spawns-apples-video
   flaming-barrel-trap-video
   apple-apocalypse-video))

(define demo-lang
  (append-rune-langs 
    (fire-particles:my-mod-lang #:with-paren-runes? #t)
    (ice-particles:my-mod-lang)
    (rocks:my-mod-lang)
    (hierarchy:my-mod-lang)
    (spawners:my-mod-lang)
    (triggers:my-mod-lang)
    (cabin-items:my-mod-lang)))

(define (index)
  (page index.html
        @md{
 # Novice Expressions
	  
 @h2{Flames}

 Cave

 @(typeset-runes-block demo-lang flames)

 @(video-embed "flames.mp4")
	  
 @h2{Rock}
	  
 Temple

 @(typeset-runes-block demo-lang gnarly-rock)

 @(video-embed "rocks2.mp4")
	  
	  
 @h2{Apple}
	  
 Forest

 @(typeset-runes-block demo-lang apple)
 
 @(video-embed "apples.mp4")
	  
	  
 @h1{Intermediate-Novice Expressions}
	  
 @h2{Flaming Rock}

 Polar Facility

 @(typeset-runes-block demo-lang (parentify gnarly-rock flames))

  @(video-embed "flaming-rocks.mp4")
	  
 @h2{Enchanted Apple}
	  
 Village

 @(typeset-runes-block demo-lang (parentify apple ice-ball))

 @(video-embed "enchanted-apples.mp4")
	  
 @h2{Wizard's Chair}
	  
 Cabin

 @(typeset-runes-block demo-lang (parentify armchair ice-aura))

 @(video-embed "wizards-chair.mp4")
	  
 @h2{Explosion Spawner}
	  
 Voxel

 @(typeset-runes-block demo-lang (spawner explosion))

 @(video-embed "explosion-spawner.mp4")
	  
 @h2{Rock Spawner}
	  
 Arena

 @(typeset-runes-block demo-lang (spawner gnarly-rock))

 @(video-embed "rock-spawner.mp4")
	  
 @h2{Apple Spawner}
	  
 Cave 

 @(typeset-runes-block demo-lang (spawner apple))

 @(video-embed "apple-spawner.mp4")
	  
 @h2{Explosion Trap}
	  
 Village

 @(typeset-runes-block demo-lang (trigger explosion))

 @(video-embed "explosion-trap.mp4")
	  
 @h2{Rock Trap}
	  
 Forest

 @(typeset-runes-block demo-lang (trigger gnarly-rock))

 @(video-embed "rock-trap.mp4")
	  
 @h2{Apple Trap}
	  
 Temple

 @(typeset-runes-block demo-lang (trigger apple))
 
 @(video-embed "apple-trap.mp4")
	  
 @(h1 "Advanced-Novice Expressions")
	  
 @h2{Endlessly Exploding Rock}
	  
 Voxel

 @(typeset-runes-block demo-lang (parentify gnarly-rock 
                                            (spawner explosion)))

  @(video-embed "endlessly-exploding-rock.mp4")
	  
 @h2{Flaming Rock Spawner}
	  
 Arena

 @(typeset-runes-block demo-lang (spawner 
                                  (parentify gnarly-rock flames)))

 @(video-embed "flaming-rock-spawner.mp4")
	  
 @h2{Enchanted Apple That Spawns Apples}
	  
 Polar Facility

 @(typeset-runes-block demo-lang (parentify apple ice-ball 
                                            (spawner apple)))

 @(video-embed "enchanted-apple-that-spawns-apples.mp4")
	  
 @h2{Flaming Barrel Trap}
	  
 Cave

 @(typeset-runes-block demo-lang (trigger 
                                  (parentify barrel flames)))

 @(video-embed "flaming-barrel-trap.mp4")
	  
 @h2{Apple Apocalpyse Trap}
	  
 Arena

 @(typeset-runes-block demo-lang (trigger 
                                  (spawner apple)))

 @(video-embed "apple-apocalypse.mp4")
}))

(define (site)
  (list
   (videos)
   (index)))

(render #:to "out"
	(site))
