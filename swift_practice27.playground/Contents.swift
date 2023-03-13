class MediaItem {
    var name: String
    init(name: String) {
        self.name = name
    }
}

class Movie: MediaItem {
    var director: String
    init(name: String, director: String) {
        self.director = director
        super.init(name: name)
    }
}

class Song: MediaItem {
    var artist: String
    init(name: String, artist: String) {
        self.artist = artist
        super.init(name: name)
    }
}

//MediaItem을 상속받는 Movie와 Song타입 인스턴스들을 넣어줍니다.
//자연스럽게 library라는 배열은 MediaItem타입의 배열이 되게됩니다.
let library = [
    Movie(name: "죽은 시인의 사회", director: "피터 위어"),
    Song(name: "창공", artist: "김준석"),
    Movie(name: "인터스텔라", director: "크리스토퍼 놀란"),
    Movie(name: "공범자들", director: "최승호")
]


// library는 MediaItem타입 배열이고, 안의 인스턴스들은 MediaItem의 서브클래스들인 Movie와 Song이다
for item in library { // item은 MediaItem인스턴스 이기때문에, Movie일수도 있고, Song일 수도 있는 것
    if let movie = item as? Movie {
        print("Movie: \(movie.name), dir. \(movie.director)")
    } else if let song = item as? Song {
        print("Song: \(song.name), by \(song.artist)")
   }
}
// MediaItem이 슈퍼클래스였고, 지금 Movie와 Song클래스는 MediaItem의 서브클래스(자식클래스)이므로,
// 다운캐스팅이 가능한 건 당연하겠죠? 그걸 as로 해주는거에요!!

/*
Movie: 죽은 시인의 사회, dir. 피터 위어
Song: 창공, by 김준석
Movie: 인터스텔라, dir. 크리스토퍼 놀란
Movie: 공범자들, dir. 최승호
 */

// ============================================

class Human {
    let name: String
    init(name: String){
        self.name = name
    }
}

class Man:Human{}
class Woman:Human{}

let people = [
    Man.init(name: "hwang"),
    Woman.init(name: "cho"),
    Man(name: "park")
]

let human = Woman(name: "cho2") as Human

if let hohogirl: Woman = human as? Woman {
    print("다운캐스팅 성공,")
} else {
    print("다운캐스팅 실패")
}
