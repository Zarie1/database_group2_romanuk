import mysql.connector


class Roles:
    def __init__(self):
        try:
            self.host = 'localhost'
            self.user = 'root'
            self.password = '83683930'
            self.db = 'mydb'

            self.connection = mysql.connector.connect(host=self.host,
                                                      user=self.user,
                                                      password=self.password,
                                                      database=self.db)

            self.cursor = self.connection.cursor(dictionary=True)
            print("Successful connection to database")
        except mysql.connector.Error as err:
            print("Failed to connect to database:", err)

    def get_all_roles(self):
        try:
            self.cursor.execute("select * from role")
            roles = self.cursor.fetchall()

            if self.cursor.rowcount == 0:
                return {"message": "No roles", "error": "Not Found", "status_code": 404}

            return roles
        except mysql.connector.Error as err:
            return {'message': 'Failed to get all roles', 'error': str(err), 'status_code': 500}

    def get_role_by_id(self, role_id):
        try:
            role_id = int(role_id)
            self.cursor.execute("select * from role where `Role.id` = %s", (role_id,))
            role = self.cursor.fetchone()

            if self.cursor.rowcount == 0:
                return {"message": f"No role with id {role_id}", "error": "Not Found", "status_code": 404}

            return role
        except mysql.connector.Error as err:
            return {'message': 'Failed to get role', 'error': str(err), 'status_code': 500}
        except ValueError:
            return {"message": "Invalid role id", "error": "Bad Request", "status_code": 400}

    def add_role(self, info):
        try:
            self.cursor.execute('start transaction')
            self.cursor.execute(f"insert into role (`Role.id`, `Role.name`)"
                                f"values {tuple([i for i in info.values()])}")
            self.connection.commit()

            if self.cursor.rowcount > 0:
                return {"message": "Role added to database", "status_code": 200}
            else:
                return {"message": "Role was not added to database", "error": "Not Acceptable", "status_code": 406}
        except mysql.connector.Error as err:
            self.connection.rollback()
            return {'message': 'Failed to add role', 'error': str(err), 'status_code': 500}

    def delete_role(self, role_id):
        try:
            role_id = int(role_id)
            self.cursor.execute('start transaction')
            rows_deleted = 0
            self.cursor.execute("delete from user where `Role_Role.id` = %s", (role_id,))
            rows_deleted += self.cursor.rowcount
            self.cursor.execute("delete from role where `Role.id` = %s", (role_id,))
            rows_deleted += self.cursor.rowcount
            self.connection.commit()
            if rows_deleted > 0:
                return {"message": f"Role {role_id} deleted from database", "status_code": 204}
            else:
                return {"message": f"Role {role_id} was not deleted from database",
                        "error": "Not Found", "status_code": 404}
        except mysql.connector.Error as err:
            self.connection.rollback()
            return {'message': 'Failed to delete role', 'error': str(err), 'status_code': 500}
        except ValueError:
            return {"message": "Invalid role id", "error": "Bad Request", "status_code": 400}

    def update_role(self, role_id, info):
        try:
            role_id = int(role_id)
            self.cursor.execute('start transaction')
            updated_rows = 0
            for i in info.items():
                self.cursor.execute(f"update role set `{i[0]}` = '{i[1]}' where `Role.id` = {role_id}")
                updated_rows += 1
            self.connection.commit()

            if updated_rows > 0:
                return {"message": f"Role {role_id} updated in database", "status_code": 200}
            else:
                return {"message": f"Role {role_id} was not updated in database",
                        "error": "Not Acceptable", "status_code": 406}
        except mysql.connector.Error as err:
            self.connection.rollback()
            return {'message': 'Failed to update role', 'error': str(err), 'status_code': 500}
        except ValueError:
            return {"message": "Invalid role id", "error": "Bad Request", "status_code": 400}