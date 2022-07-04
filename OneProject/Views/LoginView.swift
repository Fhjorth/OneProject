import SwiftUI

struct LoginView: View {
    
    @State var email: String = "test@mail.com"
    @State var password: String = "12345678"
    @State var error = false
    @State var loading = false
    @State var isShowing: Bool = false
    @EnvironmentObject var session: SessionStore
    @ObservedObject var
        global = ControllerRegistry.global
    
    init() {
        UINavigationBar.appearance().largeTitleTextAttributes = [.foregroundColor: UIColor(Color.newPrimary)]
        UINavigationBar.appearance().titleTextAttributes = [.foregroundColor: UIColor(Color.newPrimary)]
    }
    
    func logIn() {
        self.global.updateLoadingState(isLoading: true)
        error = false
        
        session.signIn(email: email, password: password) { (result, error) in
            self.global.updateLoadingState(isLoading: false)
            if error != nil {
                self.error = true
                print("There was and error: ", error)
            } else {
                self.global.updateUserId(userId: result?.user.uid)
                self.email = ""
                self.password = ""
                self.isShowing.toggle()
                print("isShowing:", isShowing)
                print("Updated user: ", result?.user.uid )
            }
        }
    }
    
    var body: some View {
            VStack() {
                Text(String.localize(key: "LoginView_Title"))
                    .font(.system(size: 32, weight: .heavy))
                Text(String.localize(key: "LoginView_Subtitle"))
                    .font(.system(size: 18, weight: .medium))
                    .foregroundColor(Color("Inactive"))
                
                VStack(spacing: 18) {
                    TextField("Email", text: $email)
                        .font(.system(size: 14))
                        .padding(12)
                        .background(RoundedRectangle(cornerRadius: 5).strokeBorder(Color(.black), lineWidth: 1))
                    SecureField("Password", text: $password)
                        .font(.system(size: 14))
                        .padding(12)
                        .background(RoundedRectangle(cornerRadius: 5).strokeBorder(Color(.black), lineWidth: 1))
                }
                .padding(.vertical, 64)
                
                NavigationLink(
                    destination: navbarView(),
                    isActive: $isShowing
                ) {
                    Button(action: {
                        logIn()
                    }, label: {
                        Text(String.localize(key: "LoginView_Button_Label"))
                    })
                    .buttonStyle(CustomButtton())
                }
            }
            .padding(.horizontal, 32)
            .navigationBarTitle(String.localize(key: "LoginView_NavigationBar_Title"), displayMode: .inline)
        }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView().environmentObject(SessionStore())
    }
}
