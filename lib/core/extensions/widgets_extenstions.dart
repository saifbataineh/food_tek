
/* import "dart:typed_data";
import "dart:ui" as ui;

import "package:flutter/material.dart";
import "package:flutter/rendering.dart";
import "package:google_maps_flutter/google_maps_flutter.dart";
extension ToBitDescription on Widget{
Future<BitmapDescriptor> toBitmapDescriptor({Size? logicalSize, Size? imageSize, Duration waitToRender = const Duration(milliseconds: 300), TextDirection textDirection = TextDirection.ltr})async{
  final widget=RepaintBoundary(
    child: MediaQuery(data: const MediaQueryData(), child: Directionality(textDirection: textDirection, child: this)),
  );
  final pngBytes = await createImageFromWidget(widget, waitToRender: waitToRender, logicalSize: logicalSize, imageSize: imageSize);
    return BitmapDescriptor.fromBytes(pngBytes);
}
}
Future<Uint8List> createImageFromWidget(Widget widget, {Size? logicalSize, required Duration waitToRender, Size? imageSize}) async {
  final RenderRepaintBoundary repaintBoundary = RenderRepaintBoundary();
  final view = ui.PlatformDispatcher.instance.views.first;
  logicalSize ??= view.physicalSize / view.devicePixelRatio;
  imageSize ??= view.physicalSize;

  // assert(logicalSize.aspectRatio == imageSize.aspectRatio);

  final RenderView renderView = RenderView(
    view: view,
    child: RenderPositionedBox(alignment: Alignment.center, child: repaintBoundary),
    configuration: ViewConfiguration(
      physicalConstraints: BoxConstraints.tight(logicalSize) * view.devicePixelRatio,
        logicalConstraints: BoxConstraints.tight(logicalSize),
      devicePixelRatio: 1.0,
    ),
  );
   final PipelineOwner pipelineOwner = PipelineOwner();
  final BuildOwner buildOwner = BuildOwner(focusManager: FocusManager());
  pipelineOwner.rootNode = renderView;
  renderView.prepareInitialFrame();

  final RenderObjectToWidgetElement<RenderBox> rootElement = RenderObjectToWidgetAdapter<RenderBox>(
    container: repaintBoundary,
    child: widget,
  ).attachToRenderTree(buildOwner);

  buildOwner.buildScope(rootElement);

  await Future.delayed(waitToRender);

  buildOwner.buildScope(rootElement);
  buildOwner.finalizeTree();

  pipelineOwner.flushLayout();
  pipelineOwner.flushCompositingBits();
  pipelineOwner.flushPaint();

  final ui.Image image = await repaintBoundary.toImage(pixelRatio: imageSize.width / logicalSize.width);
  final ByteData? byteData = await image.toByteData(format: ui.ImageByteFormat.png);

  return byteData!.buffer.asUint8List();
} */