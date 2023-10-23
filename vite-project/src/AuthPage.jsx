import axios from 'axios'

const AuthPage = (props) => {
    const onSubmit = (e) => {
      e.preventDefault();
      const { value } = e.target[0];
      axios.post(
        'http://localhost:3001/authenticate',
        {username: value}
        )// adding the link addres of the website to link to
        .then(r => props.onAuth({ ...r.data, secret: value}))
        .catch(e => console.logo('error', e))
    };
  
    return (
      <div className="background">
        <form onSubmit={onSubmit} className="form-card">
          <div className="form-title">Welcome 👨‍💻</div>
  
          <div className="form-subtitle">Create a username or select an existing username to chat with friends 👥</div>
                     
          <div className="auth">
            <div className="auth-label">Username</div>
            <input className="auth-input" name="username" />
            <button className="auth-button" type="submit">
              Enter
            </button>
          </div>
        </form>
      </div>
    );
  };// To show the username and the enter button of the website
  
  export default AuthPage;
  