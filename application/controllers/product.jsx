import React, {Component, Fragment} from 'react'; 
import './product.css'; 

class Product extends Component { 

    render(){ 
        return( 
            <Fragment> 
                 <div className="pwrraper"> 
                    <div className="nav"> 
                        <div className="logo"> 
                            <h2>Babastudio</h2> 
                        </div> 
                        <div className="keranjang"> 
                            <img src="https://i.ibb.co/Yy4xGZp/shopping-trolley-25-910223.png"/> 
                            <div className="jumlah">2</div> 
                        </div> 
                    </div> 
                    <div className="product"> 
                        <div className="gambar-product"> 
                            <img src="https://i.ibb.co/brp7Vdq/tas.jpg" className="gambarpaket"/> 
                        </div> 
                        <p className="nama">Tas Selempang USB Port Charger</p> 
                        <p className="harga">Rp. 81,800 </p> 
                    </div> 
                    <div className="counter"> 
                        <button className="mplus">-</button> 
                        <input className="input" type="text" value={2}/> 
                        <button className="mplus">+</button> 
                    </div> 
                </div> 
            </Fragment> 
            
        ); 
    } 

} 

export default Product;


