# Unity Auto Format 🔎

This action can be used to auto format the scripts in your Unity project! Making it easier to work with others with different formatting. I'm active on Github so pull requests and issues are welcome!

This action is built on top of the work of others, so a big thank you to `andstor/file-existence-action@v1.0.1`, `andstor/file-existence-action@v1.0.1`, and @shiena for the inspiration!

Here's the original gist → https://gist.github.com/shiena/197f949bc513858a85883d5529730310

## Usage

```yaml
      - name: Unity Auto Format
        uses: tyirvine/Unity-Actions-Autoformat@v1.0.5
        with:
          path: './Assets/Scripts/'
```
Check out [example-workflow.yml](example-workflow.yml) for a full example of this action in use!

## What it does
It takes in the path, formats all the scripts, commits all the files, then pushes to the active branch.

## Change Log
* March 19th 2021 - Turned workflow into a single shell script! Much easier to add in now.
* March 16th 2021 - For some reason the workflow was failing, likely due to a change in another action being used. I updated the workflow for reliability. It now relies on less Actions and instead just formats using `dotnet format ./pathToScripts --folder` right in the shell, then checks for changes, and commits & pushes if so.
