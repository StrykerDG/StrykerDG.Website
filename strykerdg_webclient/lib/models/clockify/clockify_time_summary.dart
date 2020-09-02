class ClockifyTimeSummary {
  int gaming;
  int development;
  int streaming;

  ClockifyTimeSummary({
    this.gaming,
    this.development,
    this.streaming
  });

  factory ClockifyTimeSummary.fromDynamic(Map<String, dynamic> dynamicSummary) {
    return ClockifyTimeSummary(
      gaming: dynamicSummary['Gaming'],
      development: dynamicSummary['Development'],
      streaming: dynamicSummary['Streaming']
    );
  }
}