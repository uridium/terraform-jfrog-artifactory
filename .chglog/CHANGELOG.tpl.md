# CHANGELOG

{{ range .Versions }}
## {{ if .Tag.Previous }}[{{ .Tag.Name }}]{{ else }}{{ .Tag.Name }}{{ end }} - {{ datetime "2006-01-02" .Tag.Date }}
{{ if .CommitGroups -}}
{{ range .CommitGroups -}}
### {{ .Title }}
{{ range .Commits -}}
{{/* SKIPPING RULES - START */ -}}
{{- if not (contains .Subject "[ci skip]") -}}
{{- if not (contains .Subject "[skip ci]") -}}
{{- /* SKIPPING RULES - END */ -}}
- {{ .Subject }}
{{/* SKIPPING RULES - START */ -}}
{{ end -}}
{{ end -}}
{{/* SKIPPING RULES - END */ -}}
{{ end }}
{{ end -}}
{{ else }}
{{ range .Commits -}}
{{/* SKIPPING RULES - START */ -}}
{{- if not (contains .Subject "[ci skip]") -}}
{{- if not (contains .Subject "[skip ci]") -}}
{{- /* SKIPPING RULES - END */ -}}
- {{ .Subject }}
{{/* SKIPPING RULES - START */ -}}
{{ end -}}
{{ end -}}
{{/* SKIPPING RULES - END */ -}}
{{ end }}
{{ end -}}
{{ end -}}
