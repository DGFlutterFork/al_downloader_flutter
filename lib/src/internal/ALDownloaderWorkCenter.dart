import 'ALDownloaderMessage.dart';
import '../implementation/ALDownloaderBatcherIMP.dart';
import '../implementation/ALDownloaderIMP.dart';

/// ALDownloader work center
abstract class ALDownloaderWorkCenter {
  /// Do work on root isolate for ALDownloader
  static void doWorkOnRootIsolateForALDownloader(ALDownloaderMessage message) =>
      ALDownloaderIMP.doWorkOnRootIsolate(message);

  /// Do work on root isolate for ALDownloaderBatcher
  static void doWorkOnRootIsolateForALDownloaderBatcher(
          ALDownloaderMessage message) =>
      ALDownloaderBatcherIMP.doWorkOnRootIsolate(message);

  /// Do work on ALDownloader isolate for ALDownloader
  static void doWorkOnALIsolateForALDownloader(ALDownloaderMessage message) =>
      ALDownloaderIMP.doWorkOnALIsolate(message);

  /// Do work on ALDownloader isolate for ALDownloaderBatcher
  static void doWorkOnALIsolateForALDownloaderBatcher(
          ALDownloaderMessage message) =>
      ALDownloaderBatcherIMP.doWorkOnALIsolate(message);
}
