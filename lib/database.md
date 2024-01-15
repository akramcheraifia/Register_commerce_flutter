firebase used for authentication
firestore used as database

the database contains two collections: users and forms
users collection contains documents with the following fields: name, email, phone, role, and uid
forms collection contains documents with the following fields: address, company, email, formNumber, phone, status, submissionDate, type, and uid
the status field can have one of the following values: "en attend", "Rejetée", or "Accepté"

each form document is identified by the user's uid and the form number

each user can submit only one form at a time if the form gets rejected he can submit another one
if the form gets accepted he can't submit another one