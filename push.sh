setup_git() {
  git config --global user.email "travis@travis-ci.org"
  git config --global user.name "Travis CI"
}

commit_pdf() {
  git checkout master
  git add cv.pdf
  git commit --message "[Skip Travis] - build: $TRAVIS_BUILD_NUMBER"
}

upload_files() {
  git remote remove origin
  git remote add origin https://c18papa:$GITHUB_TOKEN@github.com/c18papa/markdown-cv-c18papa.git
  git push --quiet -u origin master
}

setup_git
commit_pdf
upload_files
