import { PrettyChatWindow} from 'react-chat-engine-pretty'// To change the background of the website

const ChatsPage = (props) => {
    return (
        <div style={{ height: '100vh'}}>
            <PrettyChatWindow // The window to link to
                projectId='5ed216cc-97ba-48a3-ab50-a5adec38058c'// Chat engine username id
                username={props.user.username}// Can put any name in the username
                secret={props.user.secret}
                style={{ height: '100%'}}// The height's position
            />
          
        </div>
    )

}

export default ChatsPage