/* cart service */
// 여기있는 함수들은 carts로 바로 갈 수 없음

import { axiosPost, axiosPut, axiosDelete } from "./api";
import { setCartCount, clearCartCount, setCartList, cartListReset, setTotalPrice, setIsAdded, setIsAddedReset } from '../features/cart/cartSlice.js'

/**
 * 장바구니 전체 삭제
 */
export const clearCart = () => async(dispatch) => {
    const id = localStorage.getItem("user_id");
    const url = 'http://localhost:9000/cart/clear';
    const data = {"id": id};

    const result = await axiosDelete({url, data});
    result.result_rows && dispatch(getCartList());
}


/** */
export const clearAdded = () => (dispatch) => {
    dispatch(setIsAddedReset());
}        


    /** 
     * 장바구니 새로운 아이템 저장
     */
    export const saveToCartList = (cartItem) => async(dispatch) => {
        const id = localStorage.getItem("user_id");
        const url = 'http://localhost:9000/cart/add';
        const data = { id: id, cartList: [cartItem] }

        
        const result = await axiosPost({url, data});  
        if(result.result_rows) {
            const result_rows = result.result_rows;
            dispatch(setIsAdded({result_rows}));
            dispatch(getCount());
            dispatch(getCartList());
        }
    }



    /**
     * 장바구니 아이템 삭제
     */
    export const deleteCartItem = (cid) => async(dispatch) => {

        const url = 'http://localhost:9000/cart/deleteItem';
        const data = {"cid": cid};

        const result = await axiosDelete({url, data});
        if (result.result_rows) {
            dispatch(getCartList());
            dispatch(getCount());
        } 
    }




    /** 
     * 장바구니 아이템 수량 업데이트
     */
    
    export const updateCartList = (cid, type) => async(dispatch) => {  
        
        const url = 'http://localhost:9000/cart/updateQty';
        const data = {"cid":cid, "type": type};
        

        const result = await axiosPut({url, data}); // api.js 에서 넘어온 것
        // 수량이 업데이트 성공하면 -> cartList 다시 가져오기 
        result.result_rows && dispatch(getCartList());  
                            // 밑의 getCartList를 dispatch를 이용해 getCartList 호출
    }



/* 장바구니 리셋  */

export const clearCartList = () => (dispatch) => {
    dispatch(cartListReset());
}

/** 장바구니 전체 리스트 조회 */

export const getCartList = () => async (dispatch) => {
    const id = localStorage.getItem("user_id");
    const url = 'http://localhost:9000/cart/items';
    const data = { "id": id };

    const result = await axiosPost({url, data});
    dispatch(setCartList({result}));  //{result : result} 형태로 넘겨주는 것
    dispatch(setTotalPrice({result}));
    // setCartCount(result.data.length);
    // calculateTotalPrice(result.data);
}



/* 장바구니 전체 카운트 조회 */
// cartCount 가 리듀서로 등록되어있으므로 dispatch로 받아서 처리한다.
//useCart의 함수를 가져와서 변형후 export
export const getCount = () => async (dispatch) => {
    const id = localStorage.getItem("user_id");
    const url = 'http://localhost:9000/cart/count';
    const data = { "id": id };


    const result = await axiosPost({ url, data }) // url, data 이름 그대로 써야함
    const resultCount = result.count; //  아래에 변수명으로만 넣을 수 있기 때문ㅇ
    dispatch(setCartCount({ resultCount })); //블레이스로 묶어줌
}


/* 장바구니 카운트 초기화 */
// 단방향이라 비동기식 처리 필요 x 
export const clearCount = () => (dispatch) => {
    dispatch(clearCartCount());
}

