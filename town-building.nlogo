breed [workers worker]
breed [resources resource]
breed [buildings building]

workers-own [
  resource-count
]

to setup
  clear-all
  ask patches [set pcolor 64]

  create-workers num-workers [
    setxy random-xcor random-ycor
    set color 29
    set shape "person"
    set size 2.5
    set resource-count 0
  ]

  create-resources num-resources [
    setxy random-xcor random-ycor
    set color 52
    set shape "tree"
    set size 2.5
  ]

  reset-ticks
end

to go
  if count resources = 0 [
    stop
  ]
  ask workers [
    move
    gather-resources
    build-structures
  ]
  tick
end

to move
  rt random 360
  fd 1
end

to gather-resources
  let nearby-resource one-of resources-at-patch
  if nearby-resource != nobody [
    set resource-count resource-count + 1
    ask nearby-resource [ die ]
  ]
end

to build-structures
  if resource-count >= resource-threshold [
    set resource-count resource-count - resource-threshold
    hatch-buildings 1 [
      set color 126
      set shape "house"
      set size 3
      setxy [xcor] of myself [ycor] of myself
    ]
  ]
end

to-report resources-at-patch
  report resources-here
end
