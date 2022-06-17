from distutils.command.upload import upload
from firebase_admin import credentials, storage, initialize_app
from os import path
import sys

service_acount = "/Users/runner/work/_temp/service-account-key.json"
credentials = credentials.Certificate(service_acount)

initialize_app(credentials, {"storageBucket": "denandreychuk-a9aa5.appspot.com"})

version = sys.argv[1]
upload_path = f"PMComplitedUserPrinter/{version}/PMComplitedUserPrinter.zip"
filename = path.abspath(path.join(__file__, "../../output/PMComplitedUserPrinter.zip"))

# Upload

bucket = storage.bucket()
blob = bucket.blob(upload_path)
blob.upload_from_filename(filename)
blob.make_public()

print(blob.public_url)
