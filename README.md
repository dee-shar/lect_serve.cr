# lect_serve.cr
Web-API for www.lectserve.com a tool to provide the Church a way to quickly find lectionary readings for a given day

## Example
```cr
require "./lect_serve"

lect_serve = LectServe.new
lectionary = lect_serve.get_lectionary()
puts lectionary
```
