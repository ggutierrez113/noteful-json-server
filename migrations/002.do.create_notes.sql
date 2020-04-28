CREATE TABLE notes (
    noteid INTEGER PRIMARY KEY GENERATED BY DEFAULT AS IDENTITY,
    note_name TEXT NOT NULL,
    modified TIMESTAMP DEFAULT now() NOT NULL,
    folderid INTEGER
            REFERENCES folders(folderid) ON DELETE CASCADE NOT NULL,
    content TEXT
);