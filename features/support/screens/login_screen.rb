class LoginScreen

    def sing_in(email, password)
        find_element(id: "io.qaninja.android.twp:id/etEmail").send_keys(email)
        find_element(id: "io.qaninja.android.twp:id/etPassword").send_keys(password)
        find_element(id: "io.qaninja.android.twp:id/btnSubmit").click
    end
end