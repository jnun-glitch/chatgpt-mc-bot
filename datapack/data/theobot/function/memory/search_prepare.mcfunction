$data modify storage theobot:runtime x set from storage theobot:memory bots.$(id).x
$data modify storage theobot:runtime y set from storage theobot:memory bots.$(id).y
$data modify storage theobot:runtime z set from storage theobot:memory bots.$(id).z
function theobot:memory/search_act with storage theobot:runtime
