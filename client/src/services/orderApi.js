import { axiosPost } from "./api";
import { setOrderList, setMember, setIsSaveSuccess } from '../features/order/orderSlice.js'



/** useContext로 관리되는 객체들의 CRUD 함수 정의 */
/**
 * 결제 완료 후 주문테이블 저장 : saveToOrder
 */
export const saveToOrder = (orderList, totalPrice) => async (dispatch) => {
    const id = localStorage.getItem("user_id");
    const tid = localStorage.getItem("tid");
    const type = "KAKAO_PAY";
    let result_rows = 0;

    const url = 'http://43.200.183.25:9000/order/add';
    const data = {
        "id": id,
        tid: tid,
        type: type,
        totalPrice: totalPrice,
        orderList: orderList
    };


    try {
        const result = await axiosPost({url,data});

        if (result.result_rows) {
        
            const result_rows = result.result_rows;
            console.log('주문테이블 저장 성공!!');
            dispatch(setIsSaveSuccess({result_rows}));

        }
    } catch (error) {
        console.error("주문테이블 저장 실패:", error);
    }

}//saveToOrder


/**
 * 전체 주문정보 가져오기 : getOrderList
 */
// 인터뷰 참고 : 이것이 표준 api 개발임 axios를 공통으로 개발하는 api을 하는 것
// 외부 api는 카카오 페이 -> 외부형식을 따름

// 슬라이스 객체에서 dispatch를 받기위해 이 과정을 거침
export const getOrderList = () => async (dispatch) => {
    const id = localStorage.getItem("user_id");

    const url = 'http://43.200.183.25:9000/order/all';
    const data = { "id": id };


    const result = await axiosPost({ url, data })
    const member = result[0];
    dispatch(setOrderList({ result })); //result를 객체형태로 넘김
    dispatch(setMember({ member })); //객체형태로 보낼때 변수로 보내야함
    // calculateTotalPrice(result.data);
}




/**
 * 카카오페이 결제 요청 : paymentKakaoPay
 */
export const paymentKakaoPay = (totalPrice, orderList) => async (dispatch) => {
    const id = localStorage.getItem("user_id");

    const type = "KAKAO_PAY";
    const pname = orderList[0].pname.concat("외");
    const url = 'http://43.200.183.25:9000/payment/qr';
    const data = {
        id: id,
        item_name: pname,
        total_amount: totalPrice, // 결제 금액 (KRW)
        formData: {
            id: id,
            type: type,
            totalPrice: totalPrice,
            orderList: orderList
        }
    };
    const response = await axiosPost({ url, data })
    if ( response.next_redirect_pc_url) {
        console.error("API 응답이 올바르지 않습니다:", response);
        response.tid && localStorage.setItem("tid", response.tid);
        window.location.href = response.next_redirect_pc_url;
    }

}//paymentKakaoPay
