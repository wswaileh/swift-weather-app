//
//  WeatherManager.swift
//  brightsky
//
//  Created by Waleed Swaileh on 9/23/23.
//

import CoreLocation
import WeatherKit
import Foundation

final class WeatherManager: NSObject {
    static let shared = WeatherManager()
    
    let service = MockWeatherService()
    
    public private(set) var currentWeather: CurrentWeather?
    public private(set) var hourlyWeather: [HourWeather] = []
    public private(set) var dailyWeather: [DayWeather] = []
    
    private override init() {}
    
    public func getWeather(for location: CLLocation, completion: @escaping () -> Void) {
        Task {
            do {
                let result = try await service.weather(for: location);
                print("Current: \(result.temperature)")
                print("Hourly: \(result.conditions)")
            } catch {
                print(String(describing: error))
            }
        }
    }
}

struct Weather {
    let temperature: Double
    let conditions: String
}

enum WeatherServiceError: Error {
    case fetchFailed
}

struct MockWeatherService {
    func weather(for location: CLLocation) async throws -> Weather {
        // Simulate fetching weather data (you can customize this for your needs)
        let mockTemperature = Double.random(in: -10.0...40.0)
        let mockConditions = ["Sunny", "Cloudy", "Rainy", "Snowy"].randomElement() ?? "Unknown"
        
        // Simulate a delay to mimic network latency
        await Task.sleep(1 * 1_000_000_000) // 1 second
        let success = Bool.random()
        
        print("API Call Success: \(success)")
        
        if success {
            return Weather(temperature: mockTemperature, conditions: mockConditions)
        } else {
            throw WeatherServiceError.fetchFailed
        }
    }
}
