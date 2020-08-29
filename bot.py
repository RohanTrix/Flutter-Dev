import os
import time
os.chdir('C:\\Users\\ROHAN\\Desktop\\Kotlin-Projects')
while(True):
    if os.system('git diff --exit-code')==0:
        print(0)
        continue
    os.system('git add-commit -m "Committed changes"')
    os.system('git push origin master -f')
    time.sleep(60)
