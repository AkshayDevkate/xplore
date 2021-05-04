import Cocoa

public struct xplore {
    
  public func xplore(Api_Key: String, find: String) -> String{
      
      
      // Code to scrape JSON data from xplore
      var ans: String = ""
      
      
      let urlString =  "http://ieeexploreapi.ieee.org/api/v1/search/articles?abstract=\(find)&apikey=\(Api_Key) "
      let url = URL(string: urlString)

      let session = URLSession.shared
      let dataTask = session.dataTask(with: url!){ ( data, response, error) in

          
          if error == nil && data != nil {
              
              // parse JSON
              
              let decoder = JSONDecoder()
              do{
                  let Search = try decoder.decode(First.self, from: data!)
                 
                  ans = Search as! String
                  
                 
                  
              } catch {
                  ans = error as! String
              }
          }


      struct First: Codable{

          var  total_records : Int = 0
          var  total_searched : Int = 0
         var articles: [Article]
      }

      struct Article : Codable{
         var pdf_url: String
          var title: String
          var abstract: String
          
          
      }
       
          
      }
      dataTask.resume()
      
      
      return ans
      
      
  }
         
    
}

