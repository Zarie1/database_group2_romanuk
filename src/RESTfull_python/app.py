from app_init import app
import role_controller

if __name__ == "__main__":
    app.run(debug=True, port=5000, host="127.0.0.1")