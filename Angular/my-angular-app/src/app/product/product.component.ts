import { Component } from '@angular/core';
import { product } from './product.model';
import { FormsModule } from '@angular/forms';
import { CommonModule } from '@angular/common';

@Component({
  selector: 'app-product',
  standalone: true,
  imports: [FormsModule, CommonModule],
  templateUrl: './product.component.html',
  styleUrl: './product.component.css'
})
export class ProductComponent {

  categoryInput:string="Electronics";

  products: product[] = [{productId:101, productName:"Laptop", cost:40000, category:"Electronics"},
  {productId:101, productName:"Laptop", cost:40000, category:"Electronics"},
  {productId:102, productName:"Mobile", cost:40000, category:"Electronics"},
  {productId:103, productName:"Pendrive", cost:1500, category:"Electronics"},
  {productId:104, productName:"SD card", cost:1000, category:"Electronics"},
  {productId:105, productName:"Pepsi", cost:60, category:"Beverages"},
  {productId:106, productName:"7up", cost:50, category:"Beverages"},
  {productId:107, productName:"Note", cost:60, category:"Stationary"},
  {productId:108, productName:"Book", cost:399, category:"Stationary"},
  {productId:109, productName:"Mouse", cost:3000, category:"Electronics"}
    
  ]

}
