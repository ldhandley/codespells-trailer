#lang at-exp racket

(require "./util.rkt")

(define (shotcut . pair-paths)
	@~a{
<mlt>
  <producer id="black" in="00:00:00.000" out="00:00:32.160">
    <property name="length">00:00:32.200</property>
    <property name="eof">pause</property>
    <property name="resource">0</property>
    <property name="aspect_ratio">1</property>
    <property name="mlt_service">color</property>
    <property name="mlt_image_format">rgb24a</property>
    <property name="set.test_audio">0</property>
  </producer>
  <playlist id="background">
    <entry producer="black" in="00:00:00.000" out="00:00:32.160"/>
  </playlist>
  <producer id="producer0" in="00:00:00.000" out="00:00:17.000">
    <property name="resource">videos/cut/flames.mp4</property>
  </producer>
  <producer id="producer1" in="00:00:00.000" out="00:00:15.120">
    <property name="resource">videos/cut/rocks2.mp4</property>
  </producer>
  <playlist id="playlist0">
    <entry producer="producer0" in="0" out="00:00:17.000"/>
    <entry producer="producer1" in="0" out="00:00:15.120"/>
  </playlist>
  <producer id="producer2">
    <property name="resource">expression-pics/flames.png</property>
  </producer>
  <producer id="producer3">
    <property name="resource">expression-pics/rocks.png</property>
  </producer>
  <playlist id="playlist1">
    <entry producer="producer2" in="0" out="00:00:17.000"/>
    <entry producer="producer3" in="0" out="00:00:15.120"/>
  </playlist>
  <tractor>
    <track producer="background"/>
    <track producer="playlist0"/>
    <track producer="playlist1"/>
    <transition id="transition0">
      <property name="a_track">0</property>
      <property name="b_track">1</property>
      <property name="mlt_service">mix</property>
      <property name="always_active">1</property>
      <property name="sum">1</property>
    </transition>
    <transition id="transition1">
      <property name="a_track">0</property>
      <property name="b_track">1</property>
      <property name="version">0.9</property>
      <property name="mlt_service">frei0r.cairoblend</property>
      <property name="disable">1</property>
    </transition>
    <transition id="transition2">
      <property name="a_track">0</property>
      <property name="b_track">2</property>
      <property name="mlt_service">mix</property>
      <property name="always_active">1</property>
      <property name="sum">1</property>
    </transition>
    <transition id="transition3">
      <property name="a_track">1</property>
      <property name="b_track">2</property>
      <property name="version">0.9</property>
      <property name="mlt_service">frei0r.cairoblend</property>
      <property name="disable">0</property>
    </transition>
  </tractor>
</mlt>
		
	}
  )
