# How to add an image to a gist

1. Create a [gist](https://gist.github.com) if you haven't already.
2. Clone your gist:
    ```sh
    # make sure to replace `<hash>` with your gist's hash
    git clone https://gist.github.com/<hash>.git # with https
    git clone git@gist.github.com:<hash>.git     # or with ssh
    ```

3. Add your image to your gist's repository:
    ```sh
    git add your-image.jpg
    ```

4. Commit the image:
    ```sh
    git commit -m "Add image"
    ```

5. Update gist:
    ```sh
    git push origin master
    ```
