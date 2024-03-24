name: Manually Triggered Branch Creation and Merge

on:
  # Allow manual trigger from GitHub UI
  workflow_dispatch:

jobs:
  create_and_merge_branch:
    runs-on: ubuntu-latest

    steps:
      # Checks-out your repository under $GITHUB_WORKSPACE, so your job can access it
      - uses: actions/checkout@v2

      # Configure git user
      - name: Configure Git
        run: |
          git config user.name "github-actions[bot]"
          git config user.email "<>"

      # Create new branch
      - name: Create new branch
        run: |
          git branch new-branch
          git checkout new-branch

      # Add a dummy file
      - name: Add dummy file
        run: |
          echo "This is a dummy file" > lib/dummy.txt
          git add lib/dummy.txt
          git commit -m "Add dummy file"

      # Push the new branch
      - name: Push new branch
        run: |
          git push --set-upstream origin new-branch

      # Merge new branch into main
      - name: Merge new branch into main
        run: |
          git checkout main
          git merge new-branch
          git push origin main
