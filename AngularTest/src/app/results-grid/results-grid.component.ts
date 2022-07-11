import { Component, Input, OnInit } from '@angular/core';
import { User } from '../login/user';

@Component({
  selector: 'app-results-grid',
  templateUrl: './results-grid.component.html',
  styleUrls: ['./results-grid.component.css']
})
export class ResultsGridComponent implements OnInit {
  @Input() user: User;
  @Input() results: any[];
  regEvent: any;

  constructor()
  {
  }

  ngOnInit() {
  }

}
