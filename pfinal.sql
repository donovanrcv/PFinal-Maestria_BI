-- Eliminar tabla si existe y luego crear la tabla catálogo "airlines"
DROP TABLE IF EXISTS airlines;
CREATE TABLE airlines (
    carrier VARCHAR(45) PRIMARY KEY,
    name TEXT
);

-- Eliminar tabla si existe y luego crear la tabla catálogo "airports"
DROP TABLE IF EXISTS airports;
CREATE TABLE airports (
    faa VARCHAR(45) PRIMARY KEY,
    name TEXT,
    lat VARCHAR(45),
    lon VARCHAR(45),
    alt VARCHAR(45),
    tz VARCHAR(45),
    dst VARCHAR(45),
    tzone TEXT
);

-- Eliminar tabla si existe y luego crear la tabla catálogo "planes"
DROP TABLE IF EXISTS planes;
CREATE TABLE planes (
    tailnum VARCHAR(45) PRIMARY KEY,
    year VARCHAR(45),
    type TEXT,
    manufacturer TEXT,
    model VARCHAR(45),
    engines DECIMAL,
    seats DECIMAL,
    speed VARCHAR(45),
    engine TEXT
);

-- Eliminar tabla si existe y luego crear la tabla catálogo "weather"
DROP TABLE IF EXISTS weather;
CREATE TABLE weather (
    origin VARCHAR(45),
    year DECIMAL,
    month DECIMAL,
    day DECIMAL,
    hour DECIMAL,
    temp VARCHAR(45),
    dewp VARCHAR(45),
    humid VARCHAR(45),
    wind_dir VARCHAR(45),
    wind_speed VARCHAR(45),
    wind_gust VARCHAR(45),
    precip VARCHAR(45),
    pressure VARCHAR(45),
    visib VARCHAR(45),
    time_hour DATETIME,
    FOREIGN KEY (origin) REFERENCES airports(faa),
    PRIMARY KEY (origin, year, month, day, hour)
);

-- Eliminar tabla si existe y luego crear la tabla "flights"
DROP TABLE IF EXISTS flights;
CREATE TABLE flights (
    year DECIMAL,
    month DECIMAL,
    day DECIMAL,
    dep_time VARCHAR(45),
    sched_dep_time DECIMAL,
    dep_delay VARCHAR(45),
    arr_time VARCHAR(45),
    sched_arr_time DECIMAL,
    arr_delay VARCHAR(45),
    carrier VARCHAR(45),
    flight VARCHAR(45),
    tailnum VARCHAR(45),
    origin VARCHAR(45),
    dest VARCHAR(45),
    air_time DECIMAL,
    distance DECIMAL,
    hour DECIMAL,
    minute DECIMAL,
    time_hour DATETIME,
    FOREIGN KEY (carrier) REFERENCES airlines(carrier),
    FOREIGN KEY (tailnum) REFERENCES planes(tailnum),
    FOREIGN KEY (origin) REFERENCES airports(faa),
    FOREIGN KEY (dest) REFERENCES airports(faa)
);
