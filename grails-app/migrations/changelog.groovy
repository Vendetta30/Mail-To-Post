databaseChangeLog = {

	changeSet(author: "vijay (generated)", id: "1472058380615-1") {
		createTable(tableName: "address") {
			column(autoIncrement: "true", name: "id", type: "bigint") {
				constraints(nullable: "false", primaryKey: "true", primaryKeyName: "addressPK")
			}

			column(name: "version", type: "bigint") {
				constraints(nullable: "false")
			}

			column(name: "address_line1", type: "varchar(255)") {
				constraints(nullable: "false")
			}

			column(name: "address_line2", type: "varchar(255)") {
				constraints(nullable: "false")
			}

			column(name: "city", type: "varchar(255)") {
				constraints(nullable: "false")
			}

			column(name: "contact_id", type: "bigint") {
				constraints(nullable: "false")
			}

			column(name: "date_created", type: "datetime") {
				constraints(nullable: "false")
			}

			column(name: "last_updated", type: "datetime") {
				constraints(nullable: "false")
			}

			column(name: "pincode", type: "varchar(255)") {
				constraints(nullable: "false")
			}

			column(name: "state", type: "varchar(255)") {
				constraints(nullable: "false")
			}

			column(name: "street", type: "varchar(255)") {
				constraints(nullable: "false")
			}

			column(name: "user_id", type: "bigint") {
				constraints(nullable: "false")
			}
		}
	}

	changeSet(author: "vijay (generated)", id: "1472058380615-2") {
		createTable(tableName: "address_book") {
			column(autoIncrement: "true", name: "id", type: "bigint") {
				constraints(nullable: "false", primaryKey: "true", primaryKeyName: "address_bookPK")
			}

			column(name: "version", type: "bigint") {
				constraints(nullable: "false")
			}

			column(name: "address_book_name", type: "varchar(255)") {
				constraints(nullable: "false")
			}

			column(name: "date_created", type: "datetime") {
				constraints(nullable: "false")
			}

			column(name: "last_updated", type: "datetime") {
				constraints(nullable: "false")
			}

			column(name: "user_id", type: "bigint") {
				constraints(nullable: "false")
			}
		}
	}

	changeSet(author: "vijay (generated)", id: "1472058380615-3") {
		createTable(tableName: "admin_setting") {
			column(autoIncrement: "true", name: "id", type: "bigint") {
				constraints(nullable: "false", primaryKey: "true", primaryKeyName: "admin_settingPK")
			}

			column(name: "version", type: "bigint") {
				constraints(nullable: "false")
			}

			column(name: "date_created", type: "datetime") {
				constraints(nullable: "false")
			}

			column(name: "last_updated", type: "datetime") {
				constraints(nullable: "false")
			}
		}
	}

	changeSet(author: "vijay (generated)", id: "1472058380615-4") {
		createTable(tableName: "attachments") {
			column(autoIncrement: "true", name: "id", type: "bigint") {
				constraints(nullable: "false", primaryKey: "true", primaryKeyName: "attachmentsPK")
			}

			column(name: "version", type: "bigint") {
				constraints(nullable: "false")
			}

			column(name: "attachment_content_type", type: "varchar(255)")

			column(name: "attachment_name", type: "varchar(255)")

			column(name: "attachment_path_name", type: "varchar(255)")

			column(name: "date_created", type: "datetime") {
				constraints(nullable: "false")
			}

			column(name: "email_id", type: "bigint") {
				constraints(nullable: "false")
			}

			column(name: "last_updated", type: "datetime") {
				constraints(nullable: "false")
			}
		}
	}

	changeSet(author: "vijay (generated)", id: "1472058380615-5") {
		createTable(tableName: "contacts") {
			column(autoIncrement: "true", name: "id", type: "bigint") {
				constraints(nullable: "false", primaryKey: "true", primaryKeyName: "contactsPK")
			}

			column(name: "version", type: "bigint") {
				constraints(nullable: "false")
			}

			column(name: "address_book_id", type: "bigint") {
				constraints(nullable: "false")
			}

			column(name: "date_created", type: "datetime") {
				constraints(nullable: "false")
			}

			column(name: "email_id", type: "varchar(255)") {
				constraints(nullable: "false")
			}

			column(name: "last_updated", type: "datetime") {
				constraints(nullable: "false")
			}
		}
	}

	changeSet(author: "vijay (generated)", id: "1472058380615-6") {
		createTable(tableName: "email") {
			column(autoIncrement: "true", name: "id", type: "bigint") {
				constraints(nullable: "false", primaryKey: "true", primaryKeyName: "emailPK")
			}

			column(name: "version", type: "bigint") {
				constraints(nullable: "false")
			}

			column(name: "checked", type: "bit") {
				constraints(nullable: "false")
			}

			column(name: "date_created", type: "datetime") {
				constraints(nullable: "false")
			}

			column(name: "email_type_id", type: "bigint")

			column(name: "last_updated", type: "datetime") {
				constraints(nullable: "false")
			}

			column(name: "messag_id", type: "varchar(255)") {
				constraints(nullable: "false")
			}

			column(name: "message_body", type: "longtext")

			column(name: "message_sent_date", type: "varchar(255)") {
				constraints(nullable: "false")
			}

			column(name: "message_subject", type: "longtext")

			column(name: "sender_email", type: "varchar(255)") {
				constraints(nullable: "false")
			}

			column(name: "sender_name", type: "varchar(255)") {
				constraints(nullable: "false")
			}

			column(name: "user_id", type: "bigint") {
				constraints(nullable: "false")
			}
		}
	}

	changeSet(author: "vijay (generated)", id: "1472058380615-7") {
		createTable(tableName: "email_type") {
			column(autoIncrement: "true", name: "id", type: "bigint") {
				constraints(nullable: "false", primaryKey: "true", primaryKeyName: "email_typePK")
			}

			column(name: "version", type: "bigint") {
				constraints(nullable: "false")
			}

			column(name: "date_created", type: "datetime") {
				constraints(nullable: "false")
			}

			column(name: "last_updated", type: "datetime") {
				constraints(nullable: "false")
			}

			column(name: "name", type: "varchar(255)") {
				constraints(nullable: "false")
			}

			column(name: "priority", type: "varchar(255)") {
				constraints(nullable: "false")
			}
		}
	}

	changeSet(author: "vijay (generated)", id: "1472058380615-8") {
		createTable(tableName: "letter") {
			column(autoIncrement: "true", name: "id", type: "bigint") {
				constraints(nullable: "false", primaryKey: "true", primaryKeyName: "letterPK")
			}

			column(name: "version", type: "bigint") {
				constraints(nullable: "false")
			}

			column(name: "date_created", type: "datetime") {
				constraints(nullable: "false")
			}

			column(name: "email_id", type: "bigint") {
				constraints(nullable: "false")
			}

			column(name: "last_updated", type: "datetime") {
				constraints(nullable: "false")
			}

			column(name: "letter_footer", type: "varchar(255)")

			column(name: "letter_from", type: "varchar(255)") {
				constraints(nullable: "false")
			}

			column(name: "letter_header", type: "varchar(255)")

			column(name: "letter_matter", type: "varchar(255)") {
				constraints(nullable: "false")
			}

			column(name: "letter_to", type: "varchar(255)") {
				constraints(nullable: "false")
			}
		}
	}

	changeSet(author: "vijay (generated)", id: "1472058380615-9") {
		createTable(tableName: "letter_post") {
			column(autoIncrement: "true", name: "id", type: "bigint") {
				constraints(nullable: "false", primaryKey: "true", primaryKeyName: "letter_postPK")
			}

			column(name: "version", type: "bigint") {
				constraints(nullable: "false")
			}

			column(name: "color_for_envelope", type: "varchar(255)") {
				constraints(nullable: "false")
			}

			column(name: "date_created", type: "datetime") {
				constraints(nullable: "false")
			}

			column(name: "envelope_quality", type: "varchar(255)") {
				constraints(nullable: "false")
			}

			column(name: "last_updated", type: "datetime") {
				constraints(nullable: "false")
			}

			column(name: "letter_id", type: "bigint") {
				constraints(nullable: "false")
			}

			column(name: "paper_quality", type: "varchar(255)") {
				constraints(nullable: "false")
			}
		}
	}

	changeSet(author: "vijay (generated)", id: "1472058380615-10") {
		createTable(tableName: "notification") {
			column(autoIncrement: "true", name: "id", type: "bigint") {
				constraints(nullable: "false", primaryKey: "true", primaryKeyName: "notificationPK")
			}

			column(name: "version", type: "bigint") {
				constraints(nullable: "false")
			}

			column(name: "date_created", type: "datetime") {
				constraints(nullable: "false")
			}

			column(name: "last_updated", type: "datetime") {
				constraints(nullable: "false")
			}

			column(name: "message", type: "varchar(255)") {
				constraints(nullable: "false")
			}

			column(name: "notification_type", type: "varchar(255)") {
				constraints(nullable: "false")
			}

			column(name: "status_of_notification", type: "varchar(255)") {
				constraints(nullable: "false")
			}

			column(name: "user_id", type: "bigint") {
				constraints(nullable: "false")
			}
		}
	}

	changeSet(author: "vijay (generated)", id: "1472058380615-11") {
		createTable(tableName: "role") {
			column(autoIncrement: "true", name: "id", type: "bigint") {
				constraints(nullable: "false", primaryKey: "true", primaryKeyName: "rolePK")
			}

			column(name: "version", type: "bigint") {
				constraints(nullable: "false")
			}

			column(name: "authority", type: "varchar(255)") {
				constraints(nullable: "false")
			}
		}
	}

	changeSet(author: "vijay (generated)", id: "1472058380615-12") {
		createTable(tableName: "user") {
			column(autoIncrement: "true", name: "id", type: "bigint") {
				constraints(nullable: "false", primaryKey: "true", primaryKeyName: "userPK")
			}

			column(name: "version", type: "bigint") {
				constraints(nullable: "false")
			}

			column(name: "account_expired", type: "bit") {
				constraints(nullable: "false")
			}

			column(name: "account_locked", type: "bit") {
				constraints(nullable: "false")
			}

			column(name: "admin_setting_id", type: "bigint")

			column(name: "enabled", type: "bit") {
				constraints(nullable: "false")
			}

			column(name: "first_name", type: "varchar(255)") {
				constraints(nullable: "false")
			}

			column(name: "last_name", type: "varchar(255)") {
				constraints(nullable: "false")
			}

			column(name: "password", type: "varchar(255)") {
				constraints(nullable: "false")
			}

			column(name: "password_expired", type: "bit") {
				constraints(nullable: "false")
			}

			column(name: "username", type: "varchar(255)") {
				constraints(nullable: "false")
			}
		}
	}

	changeSet(author: "vijay (generated)", id: "1472058380615-13") {
		createTable(tableName: "user_role") {
			column(name: "user_id", type: "bigint") {
				constraints(nullable: "false")
			}

			column(name: "role_id", type: "bigint") {
				constraints(nullable: "false")
			}
		}
	}

	changeSet(author: "vijay (generated)", id: "1472058380615-14") {
		addPrimaryKey(columnNames: "user_id, role_id", constraintName: "user_rolePK", tableName: "user_role")
	}

	changeSet(author: "vijay (generated)", id: "1472058380615-28") {
		createIndex(indexName: "FK_7rod8a71yep5vxasb0ms3osbg", tableName: "address") {
			column(name: "user_id")
		}
	}

	changeSet(author: "vijay (generated)", id: "1472058380615-29") {
		createIndex(indexName: "FK_891kjfcuawa7kebtjg91sywf1", tableName: "address") {
			column(name: "contact_id")
		}
	}

	changeSet(author: "vijay (generated)", id: "1472058380615-30") {
		createIndex(indexName: "contact_id_uniq_1472058380535", tableName: "address", unique: "true") {
			column(name: "contact_id")
		}
	}

	changeSet(author: "vijay (generated)", id: "1472058380615-31") {
		createIndex(indexName: "FK_9q38p9juil31vn58ifjq0cdj0", tableName: "address_book") {
			column(name: "user_id")
		}
	}

	changeSet(author: "vijay (generated)", id: "1472058380615-32") {
		createIndex(indexName: "FK_2512b6p0n3qo05b5emxrw9p2i", tableName: "attachments") {
			column(name: "email_id")
		}
	}

	changeSet(author: "vijay (generated)", id: "1472058380615-33") {
		createIndex(indexName: "FK_cid1mcif92bemet4j2xoyk3oc", tableName: "contacts") {
			column(name: "address_book_id")
		}
	}

	changeSet(author: "vijay (generated)", id: "1472058380615-34") {
		createIndex(indexName: "FK_pd9p1i2b3xvks7pyenbnfnsir", tableName: "email") {
			column(name: "email_type_id")
		}
	}

	changeSet(author: "vijay (generated)", id: "1472058380615-35") {
		createIndex(indexName: "FK_qcesbut8qtn9jih0mrh93qxj6", tableName: "email") {
			column(name: "user_id")
		}
	}

	changeSet(author: "vijay (generated)", id: "1472058380615-36") {
		createIndex(indexName: "FK_f66v8q1w8y5e56pm4xtbnvvc6", tableName: "letter") {
			column(name: "email_id")
		}
	}

	changeSet(author: "vijay (generated)", id: "1472058380615-37") {
		createIndex(indexName: "FK_cvf4ddgked6c6vq787kvqygqj", tableName: "letter_post") {
			column(name: "letter_id")
		}
	}

	changeSet(author: "vijay (generated)", id: "1472058380615-38") {
		createIndex(indexName: "letter_id_uniq_1472058380558", tableName: "letter_post", unique: "true") {
			column(name: "letter_id")
		}
	}

	changeSet(author: "vijay (generated)", id: "1472058380615-39") {
		createIndex(indexName: "FK_1urdwwsh2ti15ta6f6p5dbdcp", tableName: "notification") {
			column(name: "user_id")
		}
	}

	changeSet(author: "vijay (generated)", id: "1472058380615-40") {
		createIndex(indexName: "authority_uniq_1472058380561", tableName: "role", unique: "true") {
			column(name: "authority")
		}
	}

	changeSet(author: "vijay (generated)", id: "1472058380615-41") {
		createIndex(indexName: "FK_nsybal38vwu6xbg07me2639ac", tableName: "user") {
			column(name: "admin_setting_id")
		}
	}

	changeSet(author: "vijay (generated)", id: "1472058380615-42") {
		createIndex(indexName: "username_uniq_1472058380563", tableName: "user", unique: "true") {
			column(name: "username")
		}
	}

	changeSet(author: "vijay (generated)", id: "1472058380615-43") {
		createIndex(indexName: "FK_apcc8lxk2xnug8377fatvbn04", tableName: "user_role") {
			column(name: "user_id")
		}
	}

	changeSet(author: "vijay (generated)", id: "1472058380615-44") {
		createIndex(indexName: "FK_it77eq964jhfqtu54081ebtio", tableName: "user_role") {
			column(name: "role_id")
		}
	}

	changeSet(author: "vijay (generated)", id: "1472058380615-15") {
		addForeignKeyConstraint(baseColumnNames: "contact_id", baseTableName: "address", constraintName: "FK_891kjfcuawa7kebtjg91sywf1", deferrable: "false", initiallyDeferred: "false", referencedColumnNames: "id", referencedTableName: "contacts", referencesUniqueColumn: "false")
	}

	changeSet(author: "vijay (generated)", id: "1472058380615-16") {
		addForeignKeyConstraint(baseColumnNames: "user_id", baseTableName: "address", constraintName: "FK_7rod8a71yep5vxasb0ms3osbg", deferrable: "false", initiallyDeferred: "false", referencedColumnNames: "id", referencedTableName: "user", referencesUniqueColumn: "false")
	}

	changeSet(author: "vijay (generated)", id: "1472058380615-17") {
		addForeignKeyConstraint(baseColumnNames: "user_id", baseTableName: "address_book", constraintName: "FK_9q38p9juil31vn58ifjq0cdj0", deferrable: "false", initiallyDeferred: "false", referencedColumnNames: "id", referencedTableName: "user", referencesUniqueColumn: "false")
	}

	changeSet(author: "vijay (generated)", id: "1472058380615-18") {
		addForeignKeyConstraint(baseColumnNames: "email_id", baseTableName: "attachments", constraintName: "FK_2512b6p0n3qo05b5emxrw9p2i", deferrable: "false", initiallyDeferred: "false", referencedColumnNames: "id", referencedTableName: "email", referencesUniqueColumn: "false")
	}

	changeSet(author: "vijay (generated)", id: "1472058380615-19") {
		addForeignKeyConstraint(baseColumnNames: "address_book_id", baseTableName: "contacts", constraintName: "FK_cid1mcif92bemet4j2xoyk3oc", deferrable: "false", initiallyDeferred: "false", referencedColumnNames: "id", referencedTableName: "address_book", referencesUniqueColumn: "false")
	}

	changeSet(author: "vijay (generated)", id: "1472058380615-20") {
		addForeignKeyConstraint(baseColumnNames: "email_type_id", baseTableName: "email", constraintName: "FK_pd9p1i2b3xvks7pyenbnfnsir", deferrable: "false", initiallyDeferred: "false", referencedColumnNames: "id", referencedTableName: "email_type", referencesUniqueColumn: "false")
	}

	changeSet(author: "vijay (generated)", id: "1472058380615-21") {
		addForeignKeyConstraint(baseColumnNames: "user_id", baseTableName: "email", constraintName: "FK_qcesbut8qtn9jih0mrh93qxj6", deferrable: "false", initiallyDeferred: "false", referencedColumnNames: "id", referencedTableName: "user", referencesUniqueColumn: "false")
	}

	changeSet(author: "vijay (generated)", id: "1472058380615-22") {
		addForeignKeyConstraint(baseColumnNames: "email_id", baseTableName: "letter", constraintName: "FK_f66v8q1w8y5e56pm4xtbnvvc6", deferrable: "false", initiallyDeferred: "false", referencedColumnNames: "id", referencedTableName: "email", referencesUniqueColumn: "false")
	}

	changeSet(author: "vijay (generated)", id: "1472058380615-23") {
		addForeignKeyConstraint(baseColumnNames: "letter_id", baseTableName: "letter_post", constraintName: "FK_cvf4ddgked6c6vq787kvqygqj", deferrable: "false", initiallyDeferred: "false", referencedColumnNames: "id", referencedTableName: "letter", referencesUniqueColumn: "false")
	}

	changeSet(author: "vijay (generated)", id: "1472058380615-24") {
		addForeignKeyConstraint(baseColumnNames: "user_id", baseTableName: "notification", constraintName: "FK_1urdwwsh2ti15ta6f6p5dbdcp", deferrable: "false", initiallyDeferred: "false", referencedColumnNames: "id", referencedTableName: "user", referencesUniqueColumn: "false")
	}

	changeSet(author: "vijay (generated)", id: "1472058380615-25") {
		addForeignKeyConstraint(baseColumnNames: "admin_setting_id", baseTableName: "user", constraintName: "FK_nsybal38vwu6xbg07me2639ac", deferrable: "false", initiallyDeferred: "false", referencedColumnNames: "id", referencedTableName: "admin_setting", referencesUniqueColumn: "false")
	}

	changeSet(author: "vijay (generated)", id: "1472058380615-26") {
		addForeignKeyConstraint(baseColumnNames: "role_id", baseTableName: "user_role", constraintName: "FK_it77eq964jhfqtu54081ebtio", deferrable: "false", initiallyDeferred: "false", referencedColumnNames: "id", referencedTableName: "role", referencesUniqueColumn: "false")
	}

	changeSet(author: "vijay (generated)", id: "1472058380615-27") {
		addForeignKeyConstraint(baseColumnNames: "user_id", baseTableName: "user_role", constraintName: "FK_apcc8lxk2xnug8377fatvbn04", deferrable: "false", initiallyDeferred: "false", referencedColumnNames: "id", referencedTableName: "user", referencesUniqueColumn: "false")
	}
}
