//: Playground - noun: a place where people can play

class AlarmClock {
    var alarmHour: Int = 0
    var alarmMinute: Int = 0
    
    func setAlarmForHour(hour: Int, minute: Int) {
        self.alarmHour = hour
        self.alarmMinute = minute
    }
}

var alarm = AlarmClock()
alarm.setAlarmForHour(12, minute: 0)