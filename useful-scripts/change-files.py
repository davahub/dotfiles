
import os
import shutil



def file_rename():
    # folder = "/Users/dava/workspace/test"
    folder = "/Users/dava/Library/CloudStorage/Dropbox/viz/mine/READY"
    if os.path.isfile(f"{folder}/.DS_Store"):
        os.remove(f"{folder}/.DS_Store")
    i = 5
    filenames = sorted(os.listdir(folder))
    # list.reverse(filenames)
    for filename in filenames:
        name_from = f"{folder}/{filename}"

        # print(str(i).zfill(2) + filename[2:])
        
        name_to = folder + "/" + str(i).zfill(2) + filename[2:]
        os.rename(name_from, name_to)

        # print(folder + "/" + str(i).zfill(2) + filename[2:])
        i += 1 


file_rename()





