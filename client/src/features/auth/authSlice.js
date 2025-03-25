import { createSlice } from '@reduxjs/toolkit'

const initialState = {
    // vqlue 값 변경 -> useState로 관리했던 값
    isLoggedIn : false ,
    isError : false,
}

export const authSlice = createSlice({
    name: 'login',
    initialState,
    reducers: {
        setIsLoggedIn(state, action){//action -> 외부에서 넘어오는 파라미터를 받을 때
            
            if(action.payload.result_rows) {
                state.isLoggedIn = true;  // state는 내가 가지고 있는 값을 가리킴
            } else {
                state.isError = true;
            }

        },
        setIsLogout(state) { // 외부에서 넘어오는 값 없으므로 state만 받음
            state.isLoggedIn = false;
        },
        setLoginReset(state) {
            state.isError = false;
        }
    },
})

// Action creators are generated for each case reducer function
export const { setIsLoggedIn, setIsLogout, setLoginReset } = authSlice.actions

export default authSlice.reducer