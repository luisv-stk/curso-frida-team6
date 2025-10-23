<tasks>
  <task>
    <task_name>Implement drag-and-drop file upload UI</task_name>
    <subtasks>
      <subtask>
        <id>1</id>
        <name>Replace static file display with upload zone</name>
        <description>Remove the existing photo_camera icon and static file info, and insert a drag-and-drop area with a file input element accepting PNG files.</description>
        <completed>true</completed>
      </subtask>
      <subtask>
        <id>2</id>
        <name>Style the upload area</name>
        <description>Apply CSS classes and drag-over feedback for the upload box, including visual cues for dragging files and listing selected files.</description>
        <completed>true</completed>
      </subtask>
    </subtasks>
  </task>
  <task>
    <task_name>Implement file selection logic and button state management</task_name>
    <subtasks>
      <subtask>
        <id>3</id>
        <name>Add file selection handling in component</name>
        <description>Update the component TypeScript to track selected files, enforce a maximum of 5 PNG files, and update the template with selected file names.</description>
        <completed>true</completed>
      </subtask>
      <subtask>
        <id>4</id>
        <name>Enable and disable action buttons</name>
        <description>Bind the upload and delete buttons to the file selection state so they are disabled when no files are selected, and implement handlers to upload or clear the files.</description>
        <completed>true</completed>
      </subtask>
    </subtasks>
  </task>
</tasks>