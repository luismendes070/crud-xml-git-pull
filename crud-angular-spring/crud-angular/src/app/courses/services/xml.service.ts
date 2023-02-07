import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';

@Injectable({
  providedIn: 'root'
})
export class XmlService {

  // ng g s courses/services/xml
  // constructor() { } // end empty constructor

    constructor(private http: HttpClient) { }

  getXmlData() {
    return this.http.get('/api/xml', { responseType: 'text' });
  }

} // end class XmlService
