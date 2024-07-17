import { Component } from '@angular/core';
import { RouterOutlet } from '@angular/router';
import { ProductComponent } from './product/product.component';
import { AccountComponent } from './account/account.component';
import { RouterLink } from '@angular/router';
import { StudentComponent } from './student/student.component';
import { FormsModule } from '@angular/forms';
import { CommonModule } from '@angular/common';
import { CubePipe } from './cube.pipe';
import { ProductdetComponent } from './productdet/productdet.component';
import { HttpClientModule } from '@angular/common/http';
@Component({
  selector: 'app-root',
  standalone: true,
  imports: [RouterOutlet,ProductComponent,AccountComponent,StudentComponent,RouterLink, FormsModule, CommonModule, CubePipe, ProductdetComponent, HttpClientModule],
  templateUrl: './app.component.html',
  styleUrl: './app.component.css'
})
export class AppComponent {
  title = 'my-angular-app';
  DOJ = "2023-12-18";
}

