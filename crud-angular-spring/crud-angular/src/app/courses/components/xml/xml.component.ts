import { Component, OnInit } from '@angular/core';
import { XmlService } from './xml.service';

@Component({
  selector: 'app-xml',
  template: <pre>{{ xmlData }}</pre>,
  templateUrl: './xml.component.html',
  styleUrls: ['./xml.component.scss'],
})
export class XmlComponent implements OnInit {
  xmlData: string | undefined;

  constructor(private xmlService: XmlService) {}

  ngOnInit() {
    this.xmlService.getXmlData().subscribe((data:string) => {
      this.xmlData = data;
    });
  }
}
