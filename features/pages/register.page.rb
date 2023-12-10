class RegisterPage < SitePrism::Page
    set_url 'https://pauliceia.unifesp.br/portal/register'
    element :nameField, :xpath, "/html/body/div/section/div/div/section/div[1]/div[1]/form/div[1]/div[1]/input"
    element :emailFiled, :xpath, "/html/body/div/section/div/div/section/div[1]/div[1]/form/div[1]/div[2]/input"
    element :usernameField, :xpath, "/html/body/div/section/div/div/section/div[1]/div[1]/form/div[2]/div[1]/input"
    element :passwordField, :xpath, "/html/body/div/section/div/div/section/div[1]/div[1]/form/div[2]/div[2]/input"
    element :registerButton, :xpath, "/html/body/div/section/div/div/section/div[1]/div[1]/form/button"
    element :checkboxField, :xpath, "/html/body/div/section/div/div/section/div[1]/div[1]/form/div[3]/label[2]/span[2]"

    def userRegister (name, email, senha, username)
        nameField.set name
        emailFiled.set email
        usernameField.set username
        passwordField.set senha
    end
    def registerButton
        registerButton.click
    end
    def checkboxChecked
        checkboxField.click
        return true
    end
    def buttonRegisterDetected
        find('#btn-register', visible: :visible).click(wait: 10)
    end
    def random_string(length)
        chars = [('a'..'z'), ('A'..'Z'), ('0'..'9')].map(&:to_a).flatten
        return (0...length).map { chars[rand(chars.length)] }.join
    end
end
