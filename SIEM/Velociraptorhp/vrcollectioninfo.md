# Collected tab consists of a 5 stages process

- Select Artifacts
- Configure Parameters
- Specify Resources
- Review
- Launch

- [More Details on Artifacts](<https://docs.velociraptor.app/docs/gui/artifacts/>)

## Select Artifacts

- In the search bar, type Windows.KapeFiles.Targets
  - [Info_on_kape](/KAPE/kapeinfo.md)
    - Velociraptor uses kapefiles which are community-created targets and modules for use with KAPE

- When you select the artifact, a brief description of the collector will be displayed on the right, along with a rundown of the parameters.

## Configure Parameters

- Scroll down and check Ubuntu or whatever OS you want to use
  - Next, click on Specify Resources.

## Specify Resources

- You can leave this untouched.
  - Next, click on Review.

## Review

- The output will display in JSON format and it's pretty straightforward.
  - Only one setting was enabled to collect, which was Ubuntu.

## Launch

- When you click Launch, you will be redirected to the Collected view.
  - Notice that there should be a new entry with the newly created collection.
    - In particular, notice the State.
      - It should show an hourglass which indicates the artifacts are actively being gathered for that collection.
      - Once the artifacts have been gathered, the state will change from an hourglass to a checkmark like the others.
        - As the list of collections grows, you can search for specific collections using the textfield at the top of the column.
