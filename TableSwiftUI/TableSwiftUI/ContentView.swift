//
//  ContentView.swift
//  TableSwiftUI
//
//  Created by Sam Chutter on 4/2/25.
//

//
//  ContentView.swift
//  SanMarcosCoffee
//

//
//  ContentView.swift
//  SanMarcosRiverSpots
//

import SwiftUI
import MapKit

// Sample data placeholder (omitted as requested)
let data = [
    Item(name: "City Park", area: "Downtown", desc: "Nestled at 170 Charles Austin Dr in the heart of downtown San Marcos, City Park is a bustling hswf Spanning a lush, tree-lined stretch along the San Marcos River, this park offers easy river access via gentle slopes and a concrete launch point. Visitors can enjoy shaded picnic tables, grassy areas perfect for lounging, and a vibrant atmosphere fueled by its proximity to local eateries and shops. The clear, spring-fed waters here are ideal for a refreshing float downstream, making it a go-to spot for families and groups seeking a lively outdoor experience.", lat: 29.885790, long: -97.935095, imageName: "river1", type: "Tubing"),
    
    Item(name: "Sewell Park", area: "Texas State", desc: "Located at 630 E Hopkins St on the Texas State University campus, Sewell Park is a beloved retreat for students and locals looking to swim and unwind. This scenic riverside park features a wide, grassy expanse dotted with ancient cypress trees, offering ample shade along the San Marcos River’s crystal-clear waters. A concrete ledge provides easy entry for swimming, while the shallow, calm currents are perfect for wading or relaxing on inflatables. With its vibrant student energy, nearby parking, and occasional university events, Sewell is a quintessential spot for a laid-back day by the river.", lat: 29.888090, long: -97.934090, imageName: "river2", type: "Swimming"),
    
    Item(name: "Rio Vista Park", area: "Downtown", desc: "Situated at 555 Cheatham St, Rio Vista Park is a downtown gem renowned for its thrilling rapids and adventurous vibe. The park boasts a series of man-made chutes along the San Marcos River, created by the Rio Vista Dam, where kayakers and tubers can navigate swift currents and small drops. A sturdy platform invites daredevils to leap into the deep pool below the dam, while grassy banks and picnic areas offer spots to relax and watch the action. With its mix of excitement and natural beauty, this park is a hotspot for water sports enthusiasts and families alike.", lat: 29.878275, long: -97.934727, imageName: "river3", type: "Kayaking"),
    
    Item(name: "Spring Lake", area: "Texas State", desc: "Found at 1 Aquarena Springs Dr near the Meadows Center, Spring Lake is the pristine source of the San Marcos River, fed by hundreds of natural springs bubbling up from the Edwards Aquifer. This tranquil, glass-clear lake is a haven for snorkeling and kayaking, offering unparalleled views of underwater flora, fish, and rare Texas wild rice. Glass-bottom boat tours depart from the nearby center, while paddleboards and kayaks glide across the surface, surrounded by lush wetlands and birdlife. A serene escape on the Texas State campus, it’s perfect for nature lovers and eco-adventurers.", lat: 29.891042, long: -97.931128, imageName: "river4", type: "Kayaking"),
    
    Item(name: "Martindale Access", area: "Martindale", desc: "Tucked away near the quaint town of Martindale along TX-142, Martindale Access is a peaceful, lesser-known entry point to the San Marcos River, ideal for fishing and extended floats. This quiet spot features a gravelly riverbank shaded by towering pecans and oaks, where anglers cast for bass and catfish in the steady, clear currents. Tubers and kayakers can launch here for a serene, multi-hour journey downstream, passing rural scenery and occasional wildlife like herons and turtles. With minimal crowds and a rustic charm, it’s a hidden gem for those seeking solitude on the water.", lat: 29.849542, long: -97.857083, imageName: "river5", type: "Fishing"),
    
    Item(name: "Stokes Park", area: "North San Marcos", desc: "Located at 350 N Comanche St in North San Marcos, Stokes Park offers a tranquil riverside escape perfect for swimming and picnics. This small, shaded park features a gentle riverbank along the San Marcos River, where shallow waters and a soft current create a safe, inviting spot for wading and cooling off. Mature trees provide plenty of shade for picnic tables and blankets, while the surrounding quiet neighborhood adds to the peaceful ambiance. It’s an ideal choice for families or anyone looking for a low-key day by the water away from the downtown bustle.", lat: 29.868824, long: -97.929983, imageName: "river6", type: "Swimming"),
    
    Item(name: "Lions Club Tube Rental", area: "Downtown", desc: "Operating out of City Park at 170 Charles Austin Dr, Lions Club Tube Rental is the premier launch point for tubing adventures in downtown San Marcos. Run by the local Lions Club, this convenient service offers tube rentals, life jackets, and shuttles, making it a hassle-free starting point for floating the San Marcos River. The launch site sits along a calm, clear stretch of water shaded by cypress trees, with easy access from the park’s parking lot. Surrounded by the lively energy of City Park, it’s the go-to spot for a classic tubing experience with all the amenities.", lat: 29.886008, long: -97.935171, imageName: "river7", type: "Tubing"),
    
    Item(name: "Blanco River Confluence", area: "South San Marcos", desc: "Positioned near the I-35 bridge where the Blanco and San Marcos Rivers merge, the Blanco River Confluence is a scenic and serene fishing destination in South San Marcos. This unique spot features a wide, slow-moving pool where the two rivers blend, creating a rich habitat for largemouth bass, Guadalupe bass, and sunfish. Anglers can cast from the rocky banks or wade into the shallows, surrounded by overhanging trees and distant views of rolling hills. Its off-the-beaten-path location offers a quiet retreat for fishing enthusiasts and nature lovers exploring the area’s waterways.", lat: 29.849500, long: -97.869700, imageName: "river8", type: "Fishing"),
    
    Item(name: "Ramon Lucio Park", area: "East San Marcos", desc: "Located at 601 S CM Allen Pkwy in East San Marcos, Ramon Lucio Park is a family-friendly riverside haven perfect for swimming and outdoor gatherings. This well-maintained park features a broad, grassy area along the San Marcos River, with a gentle slope leading to shallow, clear waters ideal for kids and casual swimmers. Picnic tables, barbecue pits, and a playground make it a popular spot for cookouts and celebrations, while the nearby walking trail offers a scenic stroll along the riverbank. Its welcoming vibe and convenient amenities make it a local favorite.", lat: 29.875063, long: -97.933792, imageName: "river9", type: "Swimming"),
    
    Item(name: "Shady Grove", area: "Martindale", desc: "Situated downstream near Martindale off FM 1979, Shady Grove is a picturesque, shaded retreat along the San Marcos River, ideal for kayaking and fishing. This secluded spot features a canopy of massive oak and pecan trees overhanging the water, creating a cool, tranquil environment for paddling through gentle currents or casting lines for catfish and bass. The riverbank here is a mix of gravel and grass, offering easy launch points for kayaks and canoes. With its quiet, natural setting and proximity to rural landscapes, it’s a perfect escape for adventurers seeking a peaceful day on the river.", lat: 29.831725, long: -97.841544, imageName: "river10", type: "Kayaking")
]

struct Item: Identifiable {
    let id = UUID()
    let name: String
    let area: String
    let desc: String
    let lat: Double
    let long: Double
    let imageName: String
    let type: String
}

struct ContentView: View {
    @State private var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: 29.8833, longitude: -97.9414),
        span: MKCoordinateSpan(latitudeDelta: 0.07, longitudeDelta: 0.07)
    )
    @State private var selectedType = "All"
    let filterOptions = ["All", "Tubing", "Swimming", "Kayaking", "Fishing"]
    
    var filteredData: [Item] {
        if selectedType == "All" {
            return data
        } else {
            return data.filter { $0.type == selectedType }
        }
    }
    
    var body: some View {
        NavigationView {
            VStack(spacing: 0) {
                // Header
                Text("San Mo's Best Rivers")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding(.top, 10)
                    .padding(.bottom, 5)
                    .frame(maxWidth: .infinity)
                    .background(Color(.systemGray6))
                
                // Map with shadow
                Map(coordinateRegion: $region, annotationItems: filteredData) { item in
                    MapAnnotation(coordinate: CLLocationCoordinate2D(latitude: item.lat, longitude: item.long)) {
                        Image(systemName: pinIcon(for: item.type))
                            .foregroundColor(pinColor(for: item.type))
                            .font(.title)
                            .overlay(
                                Text(item.name)
                                    .font(.caption)
                                    .foregroundColor(.black)
                                    .fixedSize(horizontal: true, vertical: false)
                                    .offset(y: 20)
                            )
                    }
                }
                .frame(height: 200)
                .clipShape(RoundedRectangle(cornerRadius: 10))
                .shadow(radius: 3)
                .padding(.horizontal, 10)
                
                // Segmented Picker
                Picker("Filter by Activity", selection: $selectedType) {
                    ForEach(filterOptions, id: \.self) { option in
                        Text(option)
                    }
                }
                .pickerStyle(SegmentedPickerStyle())
                .padding()
                .background(Color(.systemGray6))
                .cornerRadius(8)
                .padding(.horizontal, 10)
                
                // List without bubble-like border
                List(filteredData, id: \.name) { item in
                    NavigationLink(destination: DetailView(item: item)) {
                        HStack(spacing: 15) {
                            Image(item.imageName)
                                .resizable()
                                .scaledToFill()
                                .frame(width: 60, height: 60)
                                .cornerRadius(12)
                            VStack(alignment: .leading, spacing: 5) {
                                Text(item.name)
                                    .font(.headline)
                                Text(item.area)
                                    .font(.subheadline)
                                    .foregroundColor(.gray)
                            }
                        }
                        .padding(.vertical, 8)
                        // Removed .background(Color.white), .cornerRadius(10), and .shadow(radius: 2)
                    }
                    .listRowBackground(Color.clear)
                    .listRowSeparator(.hidden)
                }
                .listStyle(PlainListStyle())
                .animation(.easeInOut, value: selectedType) // Smooth filter transition
            }
            .background(Color(.systemBackground))
        }
    }
    
    // Helper functions for custom pins
    func pinIcon(for type: String) -> String {
        switch type {
        case "Tubing": return "circle.fill"
        case "Swimming": return "drop.fill"
        case "Kayaking": return "paddle.fill" // Custom icon (requires SF Symbols 5+)
        case "Fishing": return "fish.fill"
        default: return "mappin.circle.fill"
        }
    }
    
    func pinColor(for type: String) -> Color {
        switch type {
        case "Tubing": return .orange
        case "Swimming": return .blue
        case "Kayaking": return .green
        case "Fishing": return .purple
        default: return .red
        }
    }
}

struct DetailView: View {
    @State private var region: MKCoordinateRegion
    let item: Item
    
    init(item: Item) {
        self.item = item
        _region = State(initialValue: MKCoordinateRegion(
            center: CLLocationCoordinate2D(latitude: item.lat, longitude: item.long),
            span: MKCoordinateSpan(latitudeDelta: 0.02, longitudeDelta: 0.02)
        ))
    }
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 0) {
                // Image with bolder gradient
                ZStack(alignment: .bottomLeading) {
                    Image(item.imageName)
                        .resizable()
                        .scaledToFill()
                        .frame(height: 250)
                        .clipped()
                        .cornerRadius(15, corners: [.topLeft, .topRight])
                    
                    LinearGradient(
                        gradient: Gradient(colors: [.black.opacity(0.8), .clear]),
                        startPoint: .bottom,
                        endPoint: .top
                    )
                    .frame(height: 120)
                    
                    VStack(alignment: .leading, spacing: 5) {
                        Text(item.name)
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                        Text(item.area)
                            .font(.subheadline)
                            .foregroundColor(.white.opacity(0.9))
                    }
                    .padding(.leading, 20)
                    .padding(.bottom, 15)
                }
                
                // Info Section
                VStack(alignment: .leading, spacing: 15) {
                    HStack(spacing: 20) {
                        Label(item.area, systemImage: "location.fill")
                            .font(.subheadline)
                            .foregroundColor(.gray)
                        Label(item.type, systemImage: "figure.swimming")
                            .font(.subheadline)
                            .foregroundColor(.blue)
                    }
                    
                    Divider()
                    
                    Text("About")
                        .font(.title3)
                        .fontWeight(.semibold)
                    Text(item.desc)
                        .font(.body)
                        .foregroundColor(.secondary)
                        .lineSpacing(6)
                }
                .padding(20)
                .background(Color(.systemGray6))
                .cornerRadius(15, corners: [.bottomLeft, .bottomRight])
                
                // Map
                Map(coordinateRegion: $region, annotationItems: [item]) { item in
                    MapAnnotation(coordinate: CLLocationCoordinate2D(latitude: item.lat, longitude: item.long)) {
                        Image(systemName: pinIcon(for: item.type))
                            .foregroundColor(pinColor(for: item.type))
                            .font(.title)
                            .overlay(
                                Text(item.name)
                                    .font(.caption)
                                    .foregroundColor(.black)
                                    .fixedSize(horizontal: true, vertical: false)
                                    .offset(y: 20)
                            )
                    }
                }
                .frame(height: 300)
                .clipShape(RoundedRectangle(cornerRadius: 10))
                .shadow(radius: 3)
                .padding(.top, 20)
                .padding(.horizontal, 10)
            }
        }
        .navigationBarTitleDisplayMode(.inline)
        .navigationTitle("")
        .edgesIgnoringSafeArea(.top)
    }
    
    // Reuse pin styling from ContentView
    func pinIcon(for type: String) -> String {
        switch type {
        case "Tubing": return "circle.fill"
        case "Swimming": return "drop.fill"
        case "Kayaking": return "paddle.fill"
        case "Fishing": return "fish.fill"
        default: return "mappin.circle.fill"
        }
    }
    
    func pinColor(for type: String) -> Color {
        switch type {
        case "Tubing": return .orange
        case "Swimming": return .blue
        case "Kayaking": return .green
        case "Fishing": return .purple
        default: return .red
        }
    }
}

// Custom corner radius modifier for specific corners
extension View {
    func cornerRadius(_ radius: CGFloat, corners: UIRectCorner) -> some View {
        clipShape(RoundedCorner(radius: radius, corners: corners))
    }
}

struct RoundedCorner: Shape {
    var radius: CGFloat = .infinity
    var corners: UIRectCorner = .allCorners
    
    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(
            roundedRect: rect,
            byRoundingCorners: corners,
            cornerRadii: CGSize(width: radius, height: radius)
        )
        return Path(path.cgPath)
    }
}

#Preview {
    ContentView()
}

