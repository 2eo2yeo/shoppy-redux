import { axiosGet, axiosPost } from "./api.js";
import { setProductList, setProduct, setImgList, setDetailImgList, setSize } from '../features/product/productSlice.js'

export const getProductList = () => async (dispatch) => {

    const url = 'http://localhost:9000/product/all';
    const result = await axiosGet({ url })

    dispatch(setProductList({ result }));
}



export const getSize = (size) => (dispatch) => {
    dispatch(setSize({size}))
}


export const getProduct = (pid) => async(dispatch) => {
    const url = 'http://localhost:9000/product/detail';
    const data = {"pid" : pid}
    
    const result = await axiosPost({ url, data })
    const product = result;
    const imgList = result.imgList; 
    const detailImgList = result.detailImgList;

        dispatch(setProduct({product}));
        dispatch(setImgList({imgList}));
        dispatch(setDetailImgList({detailImgList}))
}