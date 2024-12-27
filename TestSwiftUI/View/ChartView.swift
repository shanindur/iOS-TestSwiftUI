//
//  ChartView.swift
//  TestSwiftUI
//
//  Created by Shanindu Rajapaksha on 2024-12-12.
//
import SwiftUI
import Charts

struct AverageTemperature: Identifiable {
    var id = UUID()
    var month: String
    var temperature: Double
}

struct ChartView: View {
    let data: [AverageTemperature] = [
        AverageTemperature(month: "January", temperature: 10),
        AverageTemperature(month: "February", temperature: 12),
        AverageTemperature(month: "March", temperature: 14),
        AverageTemperature(month: "April", temperature: 16)
        // Add more data as needed
    ]

    var body: some View {
        Chart(data) { tempData in
            LineMark(
                x: .value("Month", tempData.month),
                y: .value("Temperature", tempData.temperature)
            )
        }
        .chartXAxis {
            AxisMarks { value in
                AxisValueLabel { Text(value.as(String.self) ?? "") }
            }
        }
        .chartYAxis {
            AxisMarks { value in
                AxisValueLabel { Text("\(value.as(Double.self) ?? 0.0)") }
            }
        }
        .padding()
        .frame(height: 200)
    }
}

#Preview {
    ChartView()
}

