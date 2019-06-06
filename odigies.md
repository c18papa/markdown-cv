Setting the GitHub token #
You’ll need to generate a personal access token with the public_repo or repo scope (repo is required for private repositories). Since the token should be private, you’ll want to pass it to Travis securely in your repository settings or via encrypted variables in .travis.yml.

https://docs.travis-ci.com/user/deployment/pages/

https://docs.travis-ci.com/user/deployment/pages/#setting-the-github-token




https://help.github.com/en/articles/creating-a-personal-access-token-for-the-command-line

https://docs.travis-ci.com/user/environment-variables#defining-variables-in-repository-settings

---
Αρχικά πραγματοποιήθηκε fork του αποθετηρίου https://github.com/davewhipp/markdown-cv. Στη συνέχεια έγινε επεξεργασία του αρχείου index.md για τη συμπλήρωση των στοιχείων του βιογραφικού.

Για την αυτόματη δημιουργία και τοποθέτηση του βιογραφικού σε μορφή PDF με χρήση Continuous Integration έγιναν οι παρακάτω ενέργειες:

* Εγγραφή στη σελίδα Travis CI
* Ενεργοποίηση integration για το αποθετήριο του βιογραφικού σύμφωνα με τις [οδηγίες](https://travis-ci.org/getting_started)
* Δημιουργία αρχείου [travis.yml](https://github.com/c18papa/markdown-cv-c18papa/blob/master/.travis.yml) - οδηγιών για το Travis (τι βήματα να εκτελέσει)
* Δημιουργία αρχείου [deploy.sh](https://github.com/c18papa/markdown-cv-c18papa/blob/master/deploy.sh) που περιέχει την εντολή για τη δημιουργία Pdf.
* Δημιουργία αρχείου [push.sh](https://github.com/c18papa/markdown-cv-c18papa/blob/master/push.sh) που περιέχει οδηγίες τι να εκτελεστεί μετά τη δημιουργία του Pdf. Πρακτικά τοποθετεί το Pdf αρχείο στο αποθετήριο. Επιπλέον προσθήκη της οδηγίας skip στο commit message για αποφυγή ατέρμονων builds σύμφωνα με τις [οδηγίες](https://docs.travis-ci.com/user/customizing-the-build/#skipping-a-build).
- Διασύνδεση Travis με GitHub ώστε να μπορεί να κάνει push στο αποθετήριο σύμφωνα με τις [οδηγίες](https://docs.travis-ci.com/user/deployment/pages/#setting-the-github-token)
   - Δημιουργία personal access token  σύμφωνα με τις [οδηγίες](https://help.github.com/articles/creating-an-access-token-for-command-line-use/)
   - Προσθήκη του token στη μεταβλητή GITHUB_TOKEN  σύμφωνα με τις [οδηγίες](https://docs.travis-ci.com/user/environment-variables#defining-variables-in-repository-settings)


*  [Η σελίδα του βιογραφικού](https://c18papa.github.io/markdown-cv-c18papa/)
*  [Αποθετήριο του κώδικα του βιογραφικού](https://github.com/c18papa/markdown-cv-c18papa)
*  [Αποθετήριο στο Travis](https://travis-ci.org/c18papa/markdown-cv-c18papa) [![Build Status](https://travis-ci.org/c18papa/markdown-cv-c18papa.svg?branch=master)](https://travis-ci.org/c18papa/markdown-cv-c18papa)

