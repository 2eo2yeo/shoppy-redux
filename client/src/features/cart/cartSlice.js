import { createSlice } from '@reduxjs/toolkit'

const initialState = {
    // cartContext의 변수의 이름만 끌고옴
    cartList : [],
    cartCount : 0,
    totalPrice : 0,
    isAdded : false
}


export const cartSlice = createSlice({
    name: 'cart',
    initialState,
    reducers: {       // state: ? , action : 파라미터로 넘어오는 값
        setCartCount(state, action){
            state.cartCount = action.payload.resultCount; 
        },
        clearCartCount(state){ // api에서 넘어오는 값이 없어서 action x
            state.cartCount = 0; 
        },
        setCartList(state, action) {
                //payload 뒤에는  api에서 넘긴 이름으로 들어와야함
            state.cartList = action.payload.result; // {result : [cartList]}
        },
        cartListReset(state){
            state.cartList = [];
        },
        setTotalPrice(state, action){
            const list = action.payload.result;
            state.totalPrice = list.reduce((sum, item) => sum + item.price * item.qty, 0);
        },
        setIsAdded(state, action){
            if(action.payload.result_rows) state.isAdded = true;
        },
        setIsAddedReset(state){
            state.isAdded = false;
        }
    },
})

// Action creators are generated for each case reducer function
export const { 
                    setCartCount, 
                    clearCartCount, 
                    setCartList, 
                    cartListReset, 
                    setTotalPrice,
                    setIsAdded,
                    setIsAddedReset
                    } = cartSlice.actions

export default cartSlice.reducer