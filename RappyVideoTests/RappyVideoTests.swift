//
//  RappyVideoTests.swift
//  RappyVideoTests
//
//  Created by MacBook Pro on 25/9/21.
//

import XCTest
@testable import RappyVideo

class RappyVideoTests: XCTestCase {
    
    override func setUp() {
        
       
        
    }
    
    func testLoadMovie(){
        let vcmovie = MovieRouter.createMovieModule()
        let _ = vcmovie.view
        vcmovie.moviePresenter?.interactor?.fetchMovie(type: Config.popular)
        XCTAssertNotNil( vcmovie.arrayMovies,"Error en Carga de Datos")
    }
    
    func testLoadVideo(){
        let vcvideo = VideoRouter.createVideoModule()
        let _ = vcvideo.view
        vcvideo.videoPresenter?.interactor?.getUrlVideo(id: "1221")
        XCTAssertNotNil(vcvideo.array)
    }

   

}
