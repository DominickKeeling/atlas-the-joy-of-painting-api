CREATE TABLE IF NOT EXISTS Episodes (
  id SERIAL PRIMARY KEY,
  date VARCHAR(20) NOT NULL,
  title VARCHAR(260) NOT NULL,
  painting_index INT,
  season INT,
  episode INT,
  notes TEXT,
  youtube_src VARCHAR(260),
  website_link VARCHAR(260)
);

CREATE TABLE IF NOT EXISTS colors (
  id SERIAL PRIMARY KEY,
  name VARCHAR(100) NOT NULL,
  hexcode VARCHAR(7) NOT NULL
);

CREATE TABLE IF NOT EXISTS subjects (
  id SERIAL PRIMARY KEY,
  subject_matter VARCHAR(260)
);

CREATE TABLE IF NOT EXISTS episodes_subjects (
  subject_id INT NOT NULL,
  episode_id INT NOT NULL,
  PRIMARY KEY (subject_id, episode_id),
  FOREIGN KEY (episode_id) REFERENCES episodes(id),
  FOREIGN KEY (subject_id) REFERENCES subjects(id)
);

CREATE TABLE IF NOT EXISTS Episodes_Colors (
  episode_id INT NOT NULL,
  color_id INT NOT NULL,
  PRIMARY KEY (episode_id, color_id),
  FOREIGN KEY (episode_id) REFERENCES episodes(id),
  FOREIGN KEY (color_id) REFERENCES colors(id)
);
