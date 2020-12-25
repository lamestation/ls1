#!/usr/bin/env python3
import argparse
import os
import re
import shutil


def explode(filename, attachments):
    print("finding", attachments, filename)
    image_path = os.path.join(os.path.dirname(filename), "images")

    re_link = re.compile(r"!\[.*?\]\((" + attachments + ".*?)(\?(.*))?\)")

    text = open(filename).read()
    matches = re_link.findall(text)

    images = set()

    for match in matches:
        images.add(
            (match[0], os.path.join(image_path, os.path.basename(match[0])),)
        )

    for image in images:
        print(image)
        os.makedirs(image_path, exist_ok=True)
        shutil.copy(image[0], image[1])
        text = text.replace(image[0], os.path.join("images", os.path.basename(image[1])))

    with open(filename, 'w') as handle:
        handle.write(text)


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument('-a', '--attachments', default="attachments/")
    parser.add_argument('files', nargs='*')
    args = parser.parse_args()

    for file in args.files:
        explode(file, args.attachments)

if __name__ == "__main__":
    main()
