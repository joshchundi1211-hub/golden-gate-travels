import AppKit
import CoreGraphics
import Foundation

struct Variant {
  let fileName: String
  let skyTop: NSColor
  let skyBottom: NSColor
  let waterTop: NSColor
  let waterBottom: NSColor
  let sun: NSColor
  let beach: NSColor
  let palmLeaf: NSColor
  let palmTrunk: NSColor
  let sunCenter: CGPoint
  let sunRadius: CGFloat
  let horizonY: CGFloat
  let beachInset: CGFloat
  let shimmerOffset: CGFloat
}

let width = 1920
let height = 1080
let canvas = CGSize(width: width, height: height)

let variants: [Variant] = [
  Variant(
    fileName: "hero.jpg",
    skyTop: NSColor(calibratedRed: 0.96, green: 0.78, blue: 0.53, alpha: 1),
    skyBottom: NSColor(calibratedRed: 0.50, green: 0.82, blue: 0.93, alpha: 1),
    waterTop: NSColor(calibratedRed: 0.17, green: 0.72, blue: 0.78, alpha: 1),
    waterBottom: NSColor(calibratedRed: 0.05, green: 0.40, blue: 0.48, alpha: 1),
    sun: NSColor(calibratedRed: 1.0, green: 0.89, blue: 0.67, alpha: 1),
    beach: NSColor(calibratedRed: 0.96, green: 0.90, blue: 0.74, alpha: 1),
    palmLeaf: NSColor(calibratedRed: 0.20, green: 0.40, blue: 0.22, alpha: 1),
    palmTrunk: NSColor(calibratedRed: 0.28, green: 0.20, blue: 0.11, alpha: 1),
    sunCenter: CGPoint(x: 1500, y: 790),
    sunRadius: 132,
    horizonY: 600,
    beachInset: 360,
    shimmerOffset: 0
  ),
  Variant(
    fileName: "destinations.jpg",
    skyTop: NSColor(calibratedRed: 0.93, green: 0.72, blue: 0.47, alpha: 1),
    skyBottom: NSColor(calibratedRed: 0.48, green: 0.80, blue: 0.92, alpha: 1),
    waterTop: NSColor(calibratedRed: 0.18, green: 0.70, blue: 0.79, alpha: 1),
    waterBottom: NSColor(calibratedRed: 0.03, green: 0.32, blue: 0.42, alpha: 1),
    sun: NSColor(calibratedRed: 1.0, green: 0.84, blue: 0.61, alpha: 1),
    beach: NSColor(calibratedRed: 0.95, green: 0.88, blue: 0.71, alpha: 1),
    palmLeaf: NSColor(calibratedRed: 0.19, green: 0.38, blue: 0.20, alpha: 1),
    palmTrunk: NSColor(calibratedRed: 0.24, green: 0.16, blue: 0.10, alpha: 1),
    sunCenter: CGPoint(x: 1360, y: 760),
    sunRadius: 118,
    horizonY: 585,
    beachInset: 310,
    shimmerOffset: 30
  ),
  Variant(
    fileName: "gallery.jpg",
    skyTop: NSColor(calibratedRed: 0.98, green: 0.79, blue: 0.55, alpha: 1),
    skyBottom: NSColor(calibratedRed: 0.55, green: 0.84, blue: 0.95, alpha: 1),
    waterTop: NSColor(calibratedRed: 0.21, green: 0.75, blue: 0.81, alpha: 1),
    waterBottom: NSColor(calibratedRed: 0.07, green: 0.42, blue: 0.50, alpha: 1),
    sun: NSColor(calibratedRed: 1.0, green: 0.87, blue: 0.65, alpha: 1),
    beach: NSColor(calibratedRed: 0.97, green: 0.91, blue: 0.76, alpha: 1),
    palmLeaf: NSColor(calibratedRed: 0.22, green: 0.42, blue: 0.24, alpha: 1),
    palmTrunk: NSColor(calibratedRed: 0.27, green: 0.18, blue: 0.11, alpha: 1),
    sunCenter: CGPoint(x: 1220, y: 800),
    sunRadius: 142,
    horizonY: 610,
    beachInset: 350,
    shimmerOffset: -20
  ),
  Variant(
    fileName: "offers.jpg",
    skyTop: NSColor(calibratedRed: 0.95, green: 0.74, blue: 0.50, alpha: 1),
    skyBottom: NSColor(calibratedRed: 0.51, green: 0.81, blue: 0.91, alpha: 1),
    waterTop: NSColor(calibratedRed: 0.19, green: 0.71, blue: 0.77, alpha: 1),
    waterBottom: NSColor(calibratedRed: 0.05, green: 0.37, blue: 0.45, alpha: 1),
    sun: NSColor(calibratedRed: 1.0, green: 0.86, blue: 0.60, alpha: 1),
    beach: NSColor(calibratedRed: 0.96, green: 0.89, blue: 0.72, alpha: 1),
    palmLeaf: NSColor(calibratedRed: 0.20, green: 0.39, blue: 0.21, alpha: 1),
    palmTrunk: NSColor(calibratedRed: 0.25, green: 0.17, blue: 0.10, alpha: 1),
    sunCenter: CGPoint(x: 1600, y: 780),
    sunRadius: 124,
    horizonY: 590,
    beachInset: 320,
    shimmerOffset: 12
  ),
  Variant(
    fileName: "reviews.jpg",
    skyTop: NSColor(calibratedRed: 0.94, green: 0.71, blue: 0.46, alpha: 1),
    skyBottom: NSColor(calibratedRed: 0.45, green: 0.78, blue: 0.90, alpha: 1),
    waterTop: NSColor(calibratedRed: 0.16, green: 0.68, blue: 0.75, alpha: 1),
    waterBottom: NSColor(calibratedRed: 0.04, green: 0.30, blue: 0.39, alpha: 1),
    sun: NSColor(calibratedRed: 1.0, green: 0.83, blue: 0.58, alpha: 1),
    beach: NSColor(calibratedRed: 0.95, green: 0.87, blue: 0.70, alpha: 1),
    palmLeaf: NSColor(calibratedRed: 0.18, green: 0.35, blue: 0.19, alpha: 1),
    palmTrunk: NSColor(calibratedRed: 0.22, green: 0.14, blue: 0.09, alpha: 1),
    sunCenter: CGPoint(x: 1420, y: 730),
    sunRadius: 112,
    horizonY: 575,
    beachInset: 290,
    shimmerOffset: 44
  )
]

func rgbGradient(_ colors: [NSColor], locations: [CGFloat]) -> CGGradient {
  let colorSpace = CGColorSpaceCreateDeviceRGB()
  let cgColors = colors.map { $0.cgColor } as CFArray
  return CGGradient(colorsSpace: colorSpace, colors: cgColors, locations: locations)!
}

func drawSoftCircle(context: CGContext, center: CGPoint, radius: CGFloat, color: NSColor, alpha: CGFloat) {
  let rect = CGRect(x: center.x - radius, y: center.y - radius, width: radius * 2, height: radius * 2)
  let gradient = rgbGradient(
    [
      color.withAlphaComponent(alpha),
      color.withAlphaComponent(alpha * 0.35),
      color.withAlphaComponent(0.0)
    ],
    locations: [0.0, 0.45, 1.0]
  )
  context.saveGState()
  context.drawRadialGradient(
    gradient,
    startCenter: center,
    startRadius: 0,
    endCenter: center,
    endRadius: radius,
    options: .drawsAfterEndLocation
  )
  context.restoreGState()
  context.fillEllipse(in: rect)
}

func drawPalm(context: CGContext, base: CGPoint, height: CGFloat, lean: CGFloat, leafColor: NSColor, trunkColor: NSColor) {
  let top = CGPoint(x: base.x + lean, y: base.y + height)
  context.saveGState()
  context.setLineCap(.round)
  context.setLineWidth(max(10, height * 0.03))
  context.setStrokeColor(trunkColor.cgColor)
  let trunk = CGMutablePath()
  trunk.move(to: base)
  trunk.addCurve(
    to: top,
    control1: CGPoint(x: base.x + lean * 0.10, y: base.y + height * 0.28),
    control2: CGPoint(x: base.x + lean * 0.75, y: base.y + height * 0.80)
  )
  context.addPath(trunk)
  context.strokePath()

  let frondAngles: [CGFloat] = [-1.45, -1.05, -0.55, -0.08, 0.35, 0.75, 1.08]
  for angle in frondAngles {
    let length = height * (angle == -0.08 ? 0.34 : 0.28)
    let end = CGPoint(
      x: top.x + CoreGraphics.cos(angle) * length,
      y: top.y + CoreGraphics.sin(angle) * length + height * 0.07
    )
    let control = CGPoint(
      x: top.x + CoreGraphics.cos(angle) * length * 0.45,
      y: top.y + CoreGraphics.sin(angle) * length * 0.55 + height * 0.12
    )
    let frond = CGMutablePath()
    frond.move(to: top)
    frond.addQuadCurve(to: end, control: control)
    context.setLineWidth(max(7, height * 0.018))
    context.setStrokeColor(leafColor.cgColor)
    context.addPath(frond)
    context.strokePath()

    for rib in stride(from: 0.18, through: 0.92, by: 0.18) {
      let ribPoint = CGPoint(
        x: top.x + (end.x - top.x) * rib,
        y: top.y + (end.y - top.y) * rib
      )
      let ribAngle = angle + (angle < 0 ? -0.95 : 0.95)
      let ribLength = length * 0.17 * (1 - rib * 0.4)
      context.setLineWidth(max(2.5, height * 0.006))
      context.move(to: ribPoint)
      context.addLine(
        to: CGPoint(
          x: ribPoint.x + CoreGraphics.cos(ribAngle) * ribLength,
          y: ribPoint.y + CoreGraphics.sin(ribAngle) * ribLength
        )
      )
      context.strokePath()
    }
  }
  context.restoreGState()
}

func drawCloud(context: CGContext, center: CGPoint, scale: CGFloat) {
  context.saveGState()
  context.setFillColor(NSColor.white.withAlphaComponent(0.14).cgColor)
  let offsets = [
    CGPoint(x: -90 * scale, y: 0),
    CGPoint(x: -20 * scale, y: 30 * scale),
    CGPoint(x: 55 * scale, y: 10 * scale),
    CGPoint(x: 115 * scale, y: -8 * scale)
  ]
  for offset in offsets {
    let rect = CGRect(
      x: center.x + offset.x - 90 * scale,
      y: center.y + offset.y - 42 * scale,
      width: 180 * scale,
      height: 84 * scale
    )
    context.fillEllipse(in: rect)
  }
  context.restoreGState()
}

func drawScene(_ variant: Variant, outputDirectory: URL) throws {
  guard let bitmap = NSBitmapImageRep(
    bitmapDataPlanes: nil,
    pixelsWide: width,
    pixelsHigh: height,
    bitsPerSample: 8,
    samplesPerPixel: 4,
    hasAlpha: true,
    isPlanar: false,
    colorSpaceName: .deviceRGB,
    bytesPerRow: 0,
    bitsPerPixel: 0
  ) else {
    throw NSError(domain: "Renderer", code: 0)
  }

  bitmap.size = canvas

  guard let graphicsContext = NSGraphicsContext(bitmapImageRep: bitmap) else {
    throw NSError(domain: "Renderer", code: 1)
  }

  NSGraphicsContext.saveGraphicsState()
  NSGraphicsContext.current = graphicsContext
  let context = graphicsContext.cgContext
  context.interpolationQuality = .high
  context.setAllowsAntialiasing(true)

  let skyGradient = rgbGradient([variant.skyTop, variant.skyBottom], locations: [0, 1])
  context.drawLinearGradient(
    skyGradient,
    start: CGPoint(x: canvas.width * 0.5, y: canvas.height),
    end: CGPoint(x: canvas.width * 0.5, y: variant.horizonY),
    options: []
  )

  drawSoftCircle(context: context, center: variant.sunCenter, radius: variant.sunRadius * 2.3, color: variant.sun, alpha: 0.55)
  context.setFillColor(variant.sun.withAlphaComponent(0.92).cgColor)
  context.fillEllipse(
    in: CGRect(
      x: variant.sunCenter.x - variant.sunRadius,
      y: variant.sunCenter.y - variant.sunRadius,
      width: variant.sunRadius * 2,
      height: variant.sunRadius * 2
    )
  )

  drawCloud(context: context, center: CGPoint(x: 380, y: 860), scale: 1.0)
  drawCloud(context: context, center: CGPoint(x: 780, y: 920), scale: 0.72)
  drawCloud(context: context, center: CGPoint(x: 1620, y: 880), scale: 0.88)

  let oceanGradient = rgbGradient([variant.waterTop, variant.waterBottom], locations: [0, 1])
  context.drawLinearGradient(
    oceanGradient,
    start: CGPoint(x: canvas.width * 0.5, y: variant.horizonY),
    end: CGPoint(x: canvas.width * 0.5, y: 0),
    options: []
  )

  context.saveGState()
  context.setFillColor(NSColor(calibratedWhite: 1, alpha: 0.10).cgColor)
  for index in 0..<18 {
    let y = variant.horizonY - 20 - CGFloat(index) * 28
    let path = CGMutablePath()
    path.move(to: CGPoint(x: -40, y: y))
    path.addCurve(
      to: CGPoint(x: canvas.width + 40, y: y + 12),
      control1: CGPoint(x: canvas.width * 0.33, y: y + 18 + variant.shimmerOffset),
      control2: CGPoint(x: canvas.width * 0.66, y: y - 18 - variant.shimmerOffset)
    )
    context.addPath(path)
    context.setLineWidth(CGFloat(3 + (index % 3)))
    context.strokePath()
  }
  context.restoreGState()

  let islandPath = CGMutablePath()
  islandPath.move(to: CGPoint(x: 900, y: variant.horizonY + 6))
  islandPath.addCurve(
    to: CGPoint(x: 1210, y: variant.horizonY + 8),
    control1: CGPoint(x: 975, y: variant.horizonY + 56),
    control2: CGPoint(x: 1125, y: variant.horizonY + 42)
  )
  islandPath.addLine(to: CGPoint(x: 1210, y: variant.horizonY - 4))
  islandPath.addLine(to: CGPoint(x: 900, y: variant.horizonY - 4))
  islandPath.closeSubpath()
  context.setFillColor(NSColor(calibratedRed: 0.17, green: 0.25, blue: 0.18, alpha: 0.60).cgColor)
  context.addPath(islandPath)
  context.fillPath()

  let beachPath = CGMutablePath()
  beachPath.move(to: CGPoint(x: 0, y: 0))
  beachPath.addLine(to: CGPoint(x: canvas.width, y: 0))
  beachPath.addLine(to: CGPoint(x: canvas.width, y: 220))
  beachPath.addCurve(
    to: CGPoint(x: variant.beachInset, y: 230),
    control1: CGPoint(x: canvas.width * 0.76, y: 180),
    control2: CGPoint(x: canvas.width * 0.48, y: 295)
  )
  beachPath.addCurve(
    to: CGPoint(x: 0, y: 360),
    control1: CGPoint(x: variant.beachInset * 0.45, y: 190),
    control2: CGPoint(x: 90, y: 330)
  )
  beachPath.closeSubpath()
  context.setFillColor(variant.beach.cgColor)
  context.addPath(beachPath)
  context.fillPath()

  context.saveGState()
  context.setFillColor(NSColor(calibratedRed: 1, green: 1, blue: 1, alpha: 0.18).cgColor)
  let surfPath = CGMutablePath()
  surfPath.move(to: CGPoint(x: 0, y: 350))
  surfPath.addCurve(
    to: CGPoint(x: canvas.width, y: 220),
    control1: CGPoint(x: canvas.width * 0.28, y: 290),
    control2: CGPoint(x: canvas.width * 0.68, y: 250)
  )
  context.addPath(surfPath)
  context.setLineWidth(18)
  context.strokePath()
  context.restoreGState()

  drawPalm(context: context, base: CGPoint(x: 240, y: 180), height: 400, lean: 84, leafColor: variant.palmLeaf, trunkColor: variant.palmTrunk)
  drawPalm(context: context, base: CGPoint(x: 160, y: 125), height: 320, lean: 110, leafColor: variant.palmLeaf.blended(withFraction: 0.18, of: .black) ?? variant.palmLeaf, trunkColor: variant.palmTrunk)
  drawPalm(context: context, base: CGPoint(x: 1760, y: 130), height: 360, lean: -96, leafColor: variant.palmLeaf, trunkColor: variant.palmTrunk)

  context.saveGState()
  context.setFillColor(NSColor(calibratedRed: 0.84, green: 0.74, blue: 0.56, alpha: 0.20).cgColor)
  for index in 0..<7 {
    let rect = CGRect(x: 360 + CGFloat(index) * 110, y: 125 + CGFloat(index % 2) * 18, width: 90, height: 18)
    context.fillEllipse(in: rect)
  }
  context.restoreGState()

  NSGraphicsContext.restoreGraphicsState()

  guard let jpeg = bitmap.representation(using: .jpeg, properties: [.compressionFactor: 0.92]) else {
    throw NSError(domain: "Renderer", code: 2)
  }

  try jpeg.write(to: outputDirectory.appendingPathComponent(variant.fileName))
}

let outputDirectory = URL(fileURLWithPath: FileManager.default.currentDirectoryPath)
  .appendingPathComponent("images", isDirectory: true)

try FileManager.default.createDirectory(at: outputDirectory, withIntermediateDirectories: true)

for variant in variants {
  try drawScene(variant, outputDirectory: outputDirectory)
  print("Generated images/\(variant.fileName)")
}
