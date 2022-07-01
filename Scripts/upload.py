from firebase_admin import initialize_app, credentials, storage
from os import path
import sys

serviceAccount = "/Users/runner/work/_temp/service-account.json"
credentials = credentials.Certificate(serviceAccount)

initialize_app(credentials, {"storageBucket": "user-printer.appspot.com"})

# Upload file

version = sys.argv[1]
uploadPath = f"PMComplitedUserPrinter/{version}/PMComplitedUserPrinter.zip"
filename = path.abspath(path.join(__file__, "../../output/PMComplitedUserPrinter.zip"))

bucket = storage.bucket()
blob = bucket.blob(uploadPath)
blob.upload_from_filename(filename)

blob.make_public()

print(blob.public_url)
