from flask import request, jsonify
from role_model import Roles
from app_init import app

role = Roles()


@app.route("/roles", methods=['GET'])
def get_all_roles():
    return jsonify(role.get_all_roles())


@app.route("/roles/<role_id>", methods=['GET'])
def get_role_by_id(role_id):
    return jsonify(role.get_role_by_id(role_id))


@app.route("/roles/add", methods=['POST'])
def add_role():
    url_params = request.args.to_dict()
    return jsonify(role.add_role(url_params))


@app.route("/roles/delete/<role_id>", methods=['DELETE'])
def delete_role(role_id):
    return jsonify(role.delete_role(role_id))


@app.route("/roles/update/<role_id>", methods=['PUT'])
def update_role(role_id):
    url_params = request.args.to_dict()
    return jsonify(role.update_role(role_id, url_params))