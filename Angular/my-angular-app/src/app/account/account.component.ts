import { Component } from '@angular/core';
import { account } from './account.model';
import { FormsModule } from '@angular/forms';

@Component({
  selector: 'app-account',
  standalone: true,
  imports: [FormsModule],
  templateUrl: './account.component.html',
  styleUrl: './account.component.css'
})
export class AccountComponent {

  AccountTypeInput:string="Savings"


  accounts: account[] = [
    {"AccountNumber": 4567890123, "AccountHolderName": "John Doe", "TypeOfAccount": "Savings", "Amount": 40000, "DOJ": "2023-07-15"},
    {"AccountNumber": 4567890124, "AccountHolderName": "Jane Smith", "TypeOfAccount": "Checking", "Amount": 40000, "DOJ": "2022-11-28"},
    {"AccountNumber": 4567890125, "AccountHolderName": "Alice Johnson", "TypeOfAccount": "Savings", "Amount": 40000, "DOJ": "2024-02-10"},
    {"AccountNumber": 4567890126, "AccountHolderName": "Bob Brown", "TypeOfAccount": "Investment", "Amount": 1500, "DOJ": "2023-09-03"},
    {"AccountNumber": 4567890127, "AccountHolderName": "Emily Davis", "TypeOfAccount": "Checking", "Amount": 1000, "DOJ": "2022-06-20"},
    {"AccountNumber": 4567890128, "AccountHolderName": "Michael Wilson", "TypeOfAccount": "Savings", "Amount": 60, "DOJ": "2024-04-05"},
    {"AccountNumber": 4567890129, "AccountHolderName": "Sarah Martinez", "TypeOfAccount": "Checking", "Amount": 50, "DOJ": "2023-12-18"},
    {"AccountNumber": 4567890130, "AccountHolderName": "David Anderson", "TypeOfAccount": "Investment", "Amount": 60, "DOJ": "2022-10-30"},
    {"AccountNumber": 4567890131, "AccountHolderName": "Jessica Taylor", "TypeOfAccount": "Savings", "Amount": 399, "DOJ": "2024-01-22"},
    {"AccountNumber": 4567890132, "AccountHolderName": "Christopher Thomas", "TypeOfAccount": "Checking", "Amount": 3000, "DOJ": "2023-03-08"}
]

}
