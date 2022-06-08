#!/usr/bin/python

import imaplib
import os
import subprocess

completed_process = subprocess.run(['gpg', '-dq', os.path.join(os.getenv('HOME'), '.local/pvt/outlook_pwd.gpg')], check=True, stdout=subprocess.PIPE, encoding="utf-8");
password = completed_process.stdout[:-1]
obj = imaplib.IMAP4_SSL('outlook.office365.com', 993)
# Only put your email address below.
obj.login('jessun.zhang@outlook.com', password)
obj.select()

print("Outlook: ", len(obj.search(None, 'unseen')[1][0].split()))
