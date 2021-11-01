# PowerShell function to create random passwords
```
def generate_password(username):

    # Generate password
    min = 12
    max = 16    
    string_format = ascii_letters
    password_salt = "".join(choice(string_format) for x in range(randint(min, max)))    
    password_string = subprocess.run(['/usr/bin/openssl', 'passwd', '-salt', password_salt, password_salt], capture_output=True, text=True)    
    password = (password_string.stdout).rstrip()
    return(password, password_salt)
```
