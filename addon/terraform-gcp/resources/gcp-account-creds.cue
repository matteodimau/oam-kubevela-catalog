import "strings"

output: {
        type: "raw"
        properties: {
                apiVersion: "v1"
                kind:       "Secret"
                metadata: {
                        name:      "gcp-account-creds"
                        namespace: "vela-system"
                }
                type: "Opaque"
                stringData: credentials: strings.Join([creds1, creds2], "\n")
        }
}

creds1: "gcpCredentialsJSON: " + paremeter.GCP_CREDS_JSON
creds2: "gcpProject: " + paremeter.GCP_PROJECT

