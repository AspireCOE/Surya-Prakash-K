import { Routes } from '@angular/router';
import { ProductComponent } from './product/product.component';
import { AccountComponent } from './account/account.component';
import { StudentComponent } from './student/student.component';
import { ProductdetComponent } from './productdet/productdet.component';

export const routes: Routes = [
    {
        path:'product',
        component:ProductdetComponent
    },
    

    {
        path:'account',
        component:AccountComponent
    },

    {
        path:'student',
        component:StudentComponent
    },

    {
        path:'',
        component:ProductComponent
    }

    
];
