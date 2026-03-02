#!/bin/bash
# Usage: ./add-project.sh my-project-name
PROJECT_NAME=$1
PROJECT_DIR="projects/$PROJECT_NAME"
[ -z "$PROJECT_NAME" ] && echo "Usage: ./add-project.sh <project-name>" && exit 1
mkdir -p "$PROJECT_DIR/screenshots"
cat > "$PROJECT_DIR/info.json" << 'EOF'
{
  "title": "Project Title",
  "category": "Web Design",
  "description": "Brief description of the project.",
  "tags": ["Tag1", "Tag2", "Tag3"],
  "thumbnail": "thumbnail.png",
  "screenshots": [],
  "liveUrl": "",
  "githubUrl": "",
  "date": "2026-01",
  "featured": false,
  "order": 99
}
EOF
echo "Created: $PROJECT_DIR"
echo "Edit $PROJECT_DIR/info.json"
echo "Add thumbnail.png to $PROJECT_DIR/"
echo "Add \"$PROJECT_NAME\" to projects/projects.json"
