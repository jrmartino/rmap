CREATE TABLE ApiKeys (
  apiKeyId INT NOT NULL GENERATED BY DEFAULT AS IDENTITY,
  accessKey VARCHAR(256) DEFAULT NULL,
  secret VARCHAR(1024) DEFAULT NULL,
  keyUri VARCHAR(128) DEFAULT NULL,
  label VARCHAR(128) DEFAULT NULL,
  note VARCHAR(1024) DEFAULT NULL,
  keyStatus VARCHAR(32) DEFAULT NULL,
  includeInEvent BOOLEAN DEFAULT NULL,
  startDate TIMESTAMP DEFAULT NULL,
  endDate TIMESTAMP DEFAULT NULL,
  createdDate TIMESTAMP DEFAULT NULL,
  lastModifiedDate TIMESTAMP DEFAULT NULL,
  revokedDate TIMESTAMP DEFAULT NULL,
  userId INT DEFAULT NULL,
  PRIMARY KEY (apiKeyId)
);

CREATE TABLE UserIdentityProviders (
  userIdentityProviderId INT NOT NULL GENERATED BY DEFAULT AS IDENTITY,
  identityProvider VARCHAR(128) DEFAULT NULL,
  providerAccountId VARCHAR(256) DEFAULT NULL,
  providerAccountPublicId VARCHAR(45) DEFAULT NULL,
  providerAccountDisplayName VARCHAR(45) DEFAULT NULL,
  providerAccountProfileUrl VARCHAR(512) DEFAULT NULL,
  lastAuthenticatedDate TIMESTAMP DEFAULT NULL,
  createdDate TIMESTAMP DEFAULT NULL,
  userId INT NOT NULL,
  PRIMARY KEY (userIdentityProviderId)
);


CREATE TABLE Users (
  userId INT NOT NULL GENERATED BY DEFAULT AS IDENTITY,
  name VARCHAR(256) NOT NULL,
  email VARCHAR(128) NOT NULL,
  isActive BOOLEAN NOT NULL,
  rmapAgentUri VARCHAR(128) DEFAULT NULL,
  authKeyUri VARCHAR(256) DEFAULT NULL,
  createdDate TIMESTAMP NOT NULL,
  lastAccessedDate TIMESTAMP DEFAULT NULL,
  cancellationDate TIMESTAMP DEFAULT NULL,
  rmapDiSCOUri VARCHAR(45) DEFAULT NULL,
  doRMapAgentSync BOOLEAN NOT NULL,
  PRIMARY KEY (userId)
);