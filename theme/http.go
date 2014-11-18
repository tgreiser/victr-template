package theme

import (
  "net/http"
  "github.com/tgreiser/victr/app"
  "github.com/stretchr/goweb"
  "github.com/stretchr/goweb/context"
  "github.com/stretchr/goweb/handlers"
)

func init() {
  app.Init()

  handler := handlers.NewHttpHandler(goweb.CodecService)
  handler.Map("GET", "/app", func (c context.Context) error {
    return goweb.Respond.With(c, 200, []byte("Hey app!"))
  })
  http.Handle("/app", handler)
}
