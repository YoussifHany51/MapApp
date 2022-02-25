//
//  LocationsDataService.swift
//  MapTest
//
//  Created by Nick Sarno on 11/26/21.
//

import Foundation
import MapKit

class LocationsDataService {
    
    static let locations: [Location] = [
        
//        Location(
//            name: "26th july axis road",
//            cityName: "6 October city",
//            coordinates: CLLocationCoordinate2D(latitude:30.00908 , longitude:30.98528),//done
//            description: "Pothole in the middle of the road.",
//            imageName: [
//             "pothole1"
//            ]
//        ),
//
//        Location(
//            name: "Waslet Dahshur Road",
//            cityName: "Sheikh Zayed City",
//            coordinates: CLLocationCoordinate2D(latitude:30.01520 , longitude:30.97636),//done
//            description: "Pothole in the rigth side of the road.",
//            imageName: [
//             "pothole2"
//            ]
//        ),
//
//        Location(
//            name: "Gamal Abd Al Nasser Street",
//            cityName: "6 October city",
//            coordinates: CLLocationCoordinate2D(latitude:30.00620 , longitude:30.96839),//done
//            description: "Pothole in the middle of the road.",
//            imageName: [
//             "pothole3"
//            ]
//        ),
//
//        Location(
//            name: "Al Wahat Road",
//            cityName: "6 October city",
//            coordinates: CLLocationCoordinate2D(latitude:29.97262 , longitude:31.00669),//done
//            description: "Pothole in the left side of the road.",
//            imageName: [
//             "pothole4"
//            ]
//        ),
//
//        Location(
//            name: "26th july axis Rd",
//            cityName: "6 October city",
//            coordinates: CLLocationCoordinate2D(latitude:30.00866 , longitude:30.99187),//done
//            description: "Cracks in the left side of the road.",
//            imageName: [
//             "crack1"
//            ]
//        ),
//
//        Location(
//            name: "Waslet Dahshur Rd",
//            cityName: "Sheikh Zayed City",
//            coordinates: CLLocationCoordinate2D(latitude:30.02976 , longitude:30.96388),//done
//            description: "Cracks in the rigth side of the road.",
//            imageName: [
//             "crack2"
//            ]
//        ),
//
//        Location(
//            name: "Gamal Abd Al Nasser St",
//            cityName: "6 October city",
//            coordinates: CLLocationCoordinate2D(latitude:30.00379 , longitude:30.96491),//done
//            description: "Cracks in the middle of the road.",
//            imageName: [
//             "crack3"
//            ]
//        ),
//
//        Location(
//            name: "Al Wahat Rd",
//            cityName: "6 October city",
//            coordinates: CLLocationCoordinate2D(latitude:29.96919 , longitude:31.01779),
//            description: "Cracks in the right side of the road.",
//            imageName: [
//             "crack4"
//            ]
//        ),
        
        Location(
            name: "Pyramids",
            cityName: "Giza",
            coordinates: CLLocationCoordinate2D(latitude:29.9773 , longitude:31.1325),
            description: "Pyramid, in architecture, a monumental structure constructed of or faced with stone or brick and having a rectangular base and four sloping triangular (or sometimes trapezoidal) sides meeting at an apex.",
            imageName: [
             "pyramids"
            ]
        ),

        Location(
            name:"Sphinx",
            cityName: "Giza",
            coordinates: CLLocationCoordinate2D(latitude: 29.9753, longitude: 31.1376),
            description: "A sphinx (or sphynx) is a creature with the body of a lion and the head of a human, with some variations. ... In ancient Egypt, the sphinx was a spiritual guardian and most often depicted as a male with a pharaoh headdress—as is the Great Sphinx—and figures of the creatures were often included in tomb and temple complexes.",
            imageName: [
            "sphinx"
            ]
        ),

        Location(
            name:"The Egyptian Museum",
            cityName: "Cairo",
            coordinates: CLLocationCoordinate2D(latitude: 30.0478, longitude: 31.2336),
            description: "The Egyptian Museum was founded in 1858 at Būlāq, moved to Al-Jīzah (Giza), and settled in its present site in downtown Cairo in 1897–1902. ... The museum is unique in its presentation of the whole history of Egyptian civilization, especially of antiquities of the Pharaonic and Greco-Roman periods.",
            imageName: [
            "egymuseum"
            ]
        ),

        Location(
            name:"Abu Simbel",
            cityName: "Aswan",
            coordinates: CLLocationCoordinate2D(latitude: 22.3372, longitude: 31.6258),
            description: "Abu Simbel is a temple built by Ramesses II (c. 1279-1213 B.C.E.) in ancient Nubia, where he wished to demonstrate his power and his divine nature. ... This temple faces the east, and Re-Horakhty, one manifestation of the sun god, is shown inside the niche directly above the entrance.",
            imageName: [
            "abuSimbel"
            ]
        ),

        Location(
            name:"Mortuary Temple of Hatshepsut",
            cityName: "Luxor",
            coordinates: CLLocationCoordinate2D(latitude: 25.7382, longitude: 32.6066),
            description: "The Temple of Hatshepsut (Egyptian: Ḏsr-ḏsrw meaning Holy of Holies) is a mortuary temple built during the reign of Pharaoh Hatshepsut of the Eighteenth Dynasty of Egypt. Located opposite the city of Luxor, it is considered to be a masterpiece of ancient architecture.",
            imageName: [
            "hatshpsut"
            ]
        ),

        Location(
            name: "Colosseum",
            cityName: "Rome",
            coordinates: CLLocationCoordinate2D(latitude: 41.8902, longitude: 12.4922),
            description: "The Colosseum is an oval amphitheatre in the centre of the city of Rome, Italy, just east of the Roman Forum. It is the largest ancient amphitheatre ever built, and is still the largest standing amphitheatre in the world today, despite its age.",
            imageName: [
                "rome-colosseum-1",
                "rome-colosseum-2",
                "rome-colosseum-3",
            ]
            ),
        Location(
            name: "Pantheon",
            cityName: "Rome",
            coordinates: CLLocationCoordinate2D(latitude: 41.8986, longitude: 12.4769),
            description: "The Pantheon is a former Roman temple and since the year 609 a Catholic church, in Rome, Italy, on the site of an earlier temple commissioned by Marcus Agrippa during the reign of Augustus.",
            imageName: [
                "rome-pantheon-1",
                "rome-pantheon-2",
                "rome-pantheon-3",
            ]
        ),
        Location(
            name: "Trevi Fountain",
            cityName: "Rome",
            coordinates: CLLocationCoordinate2D(latitude: 41.9009, longitude: 12.4833),
            description: "The Trevi Fountain is a fountain in the Trevi district in Rome, Italy, designed by Italian architect Nicola Salvi and completed by Giuseppe Pannini and several others. Standing 26.3 metres high and 49.15 metres wide, it is the largest Baroque fountain in the city and one of the most famous fountains in the world.",
            imageName: [
                "rome-trevifountain-1",
                "rome-trevifountain-2",
                "rome-trevifountain-3",
            ]
        ),
        Location(
            name: "Eiffel Tower",
            cityName: "Paris",
            coordinates: CLLocationCoordinate2D(latitude: 48.8584, longitude: 2.2945),
            description: "The Eiffel Tower is a wrought-iron lattice tower on the Champ de Mars in Paris, France. It is named after the engineer Gustave Eiffel, whose company designed and built the tower. Locally nicknamed 'La dame de fer', it was constructed from 1887 to 1889 as the centerpiece of the 1889 World's Fair and was initially criticized by some of France's leading artists and intellectuals for its design, but it has become a global cultural icon of France and one of the most recognizable structures in the world.",
            imageName: [
                "paris-eiffeltower-1",
                "paris-eiffeltower-2",
            ]
        ),
        Location(
            name: "Louvre Museum",
            cityName: "Paris",
            coordinates: CLLocationCoordinate2D(latitude: 48.8606, longitude: 2.3376),
            description: "The Louvre, or the Louvre Museum, is the world's most-visited museum and a historic monument in Paris, France. It is the home of some of the best-known works of art, including the Mona Lisa and the Venus de Milo. A central landmark of the city, it is located on the Right Bank of the Seine in the city's 1st arrondissement.",
            imageName: [
                "paris-louvre-1",
                "paris-louvre-2",
                "paris-louvre-3",
            ]
        ),
    ]
    
}
