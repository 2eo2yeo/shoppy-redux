import { setIsLoggedIn, setIsLogout, setLoginReset } from '../features/auth/authSlice.js'
import { axiosPost } from './api.js'; // axios 바로 호출  x 이 파일을 통해서 호출하기

export const getLoginReset = () =>  (dispatch) => {
    dispatch(setLoginReset()); //dispatch로 받기=
}



export const getLogout = () => (dispatch) => { // 비동기처리 안하므로 아무것도 안붙임
    // localStorage.removeItem("token");
    // localStorage.removeItem("user_id");
    localStorage.clear();
    dispatch(setIsLogout());
}


// handle submit 함수 수정 및 여기서 처리 
// 여기서는 처리만 하고 authslice에서 호출을 함
// dispatch로 호출 -> dispatch로 받아야함
// 아래처럼 받는 것과, 함수안에 콜백을 만들어서 쓰는 방법 등 자유롭게 사용 가능
// dispatch로 넘긴 것 안에는 비동기가 있다는 뜻
export const getLogin = (formData) => async (dispatch) => {

    const url = 'http://43.200.183.25:9000/member/login';
    const data = formData;

    const loginResult = await axiosPost({url, data});
    const result_rows = loginResult.result_rows;

    if (result_rows) {
        // 성공 : 1로 받음
        localStorage.setItem("token", loginResult.token); // res.data 를 loginResult로 받았기 때문에
        localStorage.setItem("user_id", formData.id);
        dispatch(setIsLoggedIn({ result_rows })); // 리듀서(슬라이스)의 함수 호출 // {res.data.result_rows} 로는 못쓰고 객체인식을 못하므로 변수형태로 만들어야함
    } else {
        // 실패
        dispatch(setIsLoggedIn({ result_rows })); // 리듀서(슬라이스)의 함수 호출

    }
}