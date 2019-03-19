// Require dependencies
const path = require('path')

// Constants used throughout file
const projectName = slugify(path.basename(process.cwd()))
const projectUrl = `https://github.com/pschfr/${projectName}`

// Exported to package.json
module.exports = {
  'name': projectName,
  'author': 'Paul Schaefer <hello@paulmakesthe.net> (https://paulmakesthe.net/)',
  'version': '0.0.1',
  'license': 'MIT',
  'repository': {
    'type': 'git',
    'url': projectUrl
  },
  'bugs': {
    'url': `${projectUrl}/issues`
  },
  'homepage': projectUrl,
}

// Utility function for slugifying 
function slugify(text) {
  return text.toString().toLowerCase()
    .replace(/\s+/g, '-')           // Replace spaces with -
    .replace(/[^\w\-]+/g, '')       // Remove all non-word chars
    .replace(/\-\-+/g, '-')         // Replace multiple - with single -
    .replace(/^-+/, '')             // Trim - from start of text
    .replace(/-+$/, '')             // Trim - from end of text
}
