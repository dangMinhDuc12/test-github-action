const core = require('@actions/core');

async function run() {
  try {
    // Get the input 'username' defined in action.yml
    const username = core.getInput('username');

    // Generate the greeting message
    const greeting = `Hello, ${username}!`;

    // Set the greeting as the action's output
    core.setOutput('greeting', greeting);

    console.log(greeting);
  } catch (error) {
    core.setFailed(error.message);
  }
}

run();
