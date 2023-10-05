//  Movie_WS.swift
//  SeriesYPeliculas
//  Created by Moises Abraham Vazquez Perez on 28/09/23.

import Foundation

final class Movie_WS {
    //MARK: - BLOQUES
    
    public typealias blkPlayingNow = (NowPlayingResponse?, Error?) -> Void
    public typealias blkMostPopular = (MostPopularResponse?, Error?) -> Void
    public typealias blkTopRated = (TopRatedResponse?, Error?) -> Void
    public typealias blkUpcomingResponse = (UpcomingResponse?, Error?) -> Void
    public typealias blkSearchResponse = (SearchResponse?, Error?) -> Void

    func getNowPlayingMovies(withHandler: @escaping blkPlayingNow) {
        
        let urlNowPlaying = URL(string: "https://api.themoviedb.org/3/movie/now_playing?api_key=f6cd5c1a9e6c6b965fdcab0fa6ddd38a") ?? URL(fileURLWithPath: "")
        
        URLSession.shared.dataTask(with: urlNowPlaying) { data, response, error in
            guard let datos = data else { return }
            do {
                let decoder = JSONDecoder()
                let respuesta = try decoder.decode(NowPlayingResponse.self, from: datos)
                withHandler(respuesta, nil)
            } catch {
                withHandler(nil,error)
            }
        }.resume()
    }
    
    
    func getMostpopular(withHandler: @escaping blkMostPopular) {
        
        let urlMostPopular = URL(string: "https://api.themoviedb.org/3/movie/popular?api_key=f6cd5c1a9e6c6b965fdcab0fa6ddd38a") ?? URL(fileURLWithPath: "")
        
        URLSession.shared.dataTask(with: urlMostPopular) { data, response, error in
            guard let datos = data else { return }
            do {
                let decoder = JSONDecoder()
                let respuesta = try decoder.decode(MostPopularResponse.self, from: datos)
                withHandler(respuesta, nil)
            } catch {
                withHandler(nil,error)
            }
        }.resume()
    }
    
    
    func getTopRated(withHandler: @escaping blkTopRated) {
        
        let urlTopRated = URL(string: "https://api.themoviedb.org/3/movie/top_rated?api_key=f6cd5c1a9e6c6b965fdcab0fa6ddd38a") ?? URL(fileURLWithPath: "")
        
        URLSession.shared.dataTask(with: urlTopRated) { data, response, error in
            guard let datos = data else { return }
            do {
                let decoder = JSONDecoder()
                let respuesta = try decoder.decode(TopRatedResponse.self, from: datos)
                withHandler(respuesta, nil)
            } catch {
                withHandler(nil,error)
            }
        }.resume()
    }
    
    
    func getUpcomingResponse(withHandler: @escaping blkUpcomingResponse) {
        
        let urlUpcomingResponse = URL(string: "https://api.themoviedb.org/3/movie/upcoming?api_key=f6cd5c1a9e6c6b965fdcab0fa6ddd38a") ?? URL(fileURLWithPath: "")
        
        URLSession.shared.dataTask(with: urlUpcomingResponse) { data, response, error in
            guard let datos = data else { return }
            do {
                let decoder = JSONDecoder()
                let respuesta = try decoder.decode(UpcomingResponse.self, from: datos)
                withHandler(respuesta, nil)
            } catch {
                withHandler(nil,error)
            }
        }.resume()
    }
    
    
    func getSearchResponse(withHandler: @escaping blkSearchResponse) {
        
        let urlSearchResponse = URL(string: "https://api.themoviedb.org/3/search/movie?api_key=f6cd5c1a9e6c6b965fdcab0fa6ddd38a&query=") ?? URL(fileURLWithPath: "")
        
        URLSession.shared.dataTask(with: urlSearchResponse) { data, response, error in
            guard let datos = data else { return }
            do {
                let decoder = JSONDecoder()
                let respuesta = try decoder.decode(SearchResponse.self, from: datos)
                withHandler(respuesta, nil)
            } catch {
                withHandler(nil, error)
            }
        }.resume()
    }
    
    
    
    
}
