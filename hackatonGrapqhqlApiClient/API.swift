//  This file was automatically generated and should not be edited.

import Apollo

public final class AllCoversOneQuery: GraphQLQuery {
  public static let operationString =
    "query AllCoversOne {" +
    "  cover(section: \"TNChicas\") {" +
    "    __typename" +
    "    section" +
    "    containerList {" +
    "      __typename" +
    "      id" +
    "    }" +
    "  }" +
    "}"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["RootQueryType"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("cover", arguments: ["section": "TNChicas"], type: .object(Cover.self)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(cover: Cover? = nil) {
      self.init(snapshot: ["__typename": "RootQueryType", "cover": cover])
    }

    public var cover: Cover? {
      get {
        return (snapshot["cover"]! as! Snapshot?).flatMap { Cover(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "cover")
      }
    }

    public struct Cover: GraphQLSelectionSet {
      public static let possibleTypes = ["Cover"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("section", type: .scalar(String.self)),
        GraphQLField("containerList", type: .list(.object(ContainerList.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(section: String? = nil, containerList: [ContainerList?]? = nil) {
        self.init(snapshot: ["__typename": "Cover", "section": section, "containerList": containerList])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var section: String? {
        get {
          return snapshot["section"]! as! String?
        }
        set {
          snapshot.updateValue(newValue, forKey: "section")
        }
      }

      public var containerList: [ContainerList?]? {
        get {
          return (snapshot["containerList"]! as! [Snapshot?]?).flatMap { $0.map { $0.flatMap { ContainerList(snapshot: $0) } } }
        }
        set {
          snapshot.updateValue(newValue.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, forKey: "containerList")
        }
      }

      public struct ContainerList: GraphQLSelectionSet {
        public static let possibleTypes = ["Container"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .scalar(String.self)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: String? = nil) {
          self.init(snapshot: ["__typename": "Container", "id": id])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: String? {
          get {
            return snapshot["id"]! as! String?
          }
          set {
            snapshot.updateValue(newValue, forKey: "id")
          }
        }
      }
    }
  }
}

public final class AllCoversTwoQuery: GraphQLQuery {
  public static let operationString =
    "query AllCoversTwo {" +
    "  cover(section: \"TNChicas\") {" +
    "    __typename" +
    "    section" +
    "    containerList {" +
    "      __typename" +
    "      id" +
    "      type" +
    "    }" +
    "  }" +
    "}"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["RootQueryType"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("cover", arguments: ["section": "TNChicas"], type: .object(Cover.self)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(cover: Cover? = nil) {
      self.init(snapshot: ["__typename": "RootQueryType", "cover": cover])
    }

    public var cover: Cover? {
      get {
        return (snapshot["cover"]! as! Snapshot?).flatMap { Cover(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "cover")
      }
    }

    public struct Cover: GraphQLSelectionSet {
      public static let possibleTypes = ["Cover"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("section", type: .scalar(String.self)),
        GraphQLField("containerList", type: .list(.object(ContainerList.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(section: String? = nil, containerList: [ContainerList?]? = nil) {
        self.init(snapshot: ["__typename": "Cover", "section": section, "containerList": containerList])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var section: String? {
        get {
          return snapshot["section"]! as! String?
        }
        set {
          snapshot.updateValue(newValue, forKey: "section")
        }
      }

      public var containerList: [ContainerList?]? {
        get {
          return (snapshot["containerList"]! as! [Snapshot?]?).flatMap { $0.map { $0.flatMap { ContainerList(snapshot: $0) } } }
        }
        set {
          snapshot.updateValue(newValue.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, forKey: "containerList")
        }
      }

      public struct ContainerList: GraphQLSelectionSet {
        public static let possibleTypes = ["Container"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .scalar(String.self)),
          GraphQLField("type", type: .scalar(String.self)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: String? = nil, type: String? = nil) {
          self.init(snapshot: ["__typename": "Container", "id": id, "type": type])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: String? {
          get {
            return snapshot["id"]! as! String?
          }
          set {
            snapshot.updateValue(newValue, forKey: "id")
          }
        }

        public var type: String? {
          get {
            return snapshot["type"]! as! String?
          }
          set {
            snapshot.updateValue(newValue, forKey: "type")
          }
        }
      }
    }
  }
}