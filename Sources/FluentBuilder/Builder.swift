import Swift

@dynamicMemberLookup
public struct Builder<Subject> {
    private var subject: Subject

    public subscript<Value>(dynamicMember keyPath: WritableKeyPath<Subject, Value>) -> ((Value) -> Builder<Subject>) {
        var subject = self.subject
        return { value in
            subject[keyPath: keyPath] = value
            return Builder(subject: subject)
        }
    }

    public init(subject: Subject) {
        self.subject = subject
    }

    public func build() -> Subject {
        return subject
    }
}

extension Builder where Subject: Initiable {
    public init(_: Subject.Type) {
        subject = Subject()
    }

    public init() {
        subject = Subject()
    }

    public static subscript<Value>(dynamicMember keyPath: WritableKeyPath<Subject, Value>) -> ((Value) -> Builder<Subject>) {
        var subject = Subject()
        return { value in
            subject[keyPath: keyPath] = value
            return Builder(subject: subject)
        }
    }
}
