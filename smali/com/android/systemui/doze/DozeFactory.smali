.class public Lcom/android/systemui/doze/DozeFactory;
.super Ljava/lang/Object;
.source "DozeFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private createDozeScreenBrightness(Landroid/content/Context;Lcom/android/systemui/doze/DozeMachine$Service;Landroid/hardware/SensorManager;Lcom/android/systemui/doze/DozeHost;Lcom/android/systemui/statusbar/phone/DozeParameters;Landroid/os/Handler;)Lcom/android/systemui/doze/DozeMachine$Part;
    .locals 8

    .line 89
    sget p0, Lcom/android/systemui/R$string;->doze_brightness_sensor_type:I

    .line 90
    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 89
    invoke-static {p3, p0}, Lcom/android/systemui/doze/DozeSensors;->findSensorWithType(Landroid/hardware/SensorManager;Ljava/lang/String;)Landroid/hardware/Sensor;

    move-result-object v4

    .line 91
    new-instance p0, Lcom/android/systemui/doze/DozeScreenBrightness;

    .line 92
    invoke-virtual {p5}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getPolicy()Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;

    move-result-object v7

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    move-object v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/doze/DozeScreenBrightness;-><init>(Landroid/content/Context;Lcom/android/systemui/doze/DozeMachine$Service;Landroid/hardware/SensorManager;Landroid/hardware/Sensor;Lcom/android/systemui/doze/DozeHost;Landroid/os/Handler;Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;)V

    return-object p0
.end method

.method private createDozeTriggers(Landroid/content/Context;Landroid/hardware/SensorManager;Lcom/android/systemui/doze/DozeHost;Landroid/app/AlarmManager;Landroid/hardware/display/AmbientDisplayConfiguration;Lcom/android/systemui/statusbar/phone/DozeParameters;Landroid/os/Handler;Lcom/android/systemui/util/wakelock/WakeLock;Lcom/android/systemui/doze/DozeMachine;Lcom/android/systemui/dock/DockManager;)Lcom/android/systemui/doze/DozeTriggers;
    .locals 13

    .line 100
    new-instance v12, Lcom/android/systemui/doze/DozeTriggers;

    const/4 v10, 0x1

    move-object v0, v12

    move-object v1, p1

    move-object/from16 v2, p9

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object v7, p2

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v11, p10

    invoke-direct/range {v0 .. v11}, Lcom/android/systemui/doze/DozeTriggers;-><init>(Landroid/content/Context;Lcom/android/systemui/doze/DozeMachine;Lcom/android/systemui/doze/DozeHost;Landroid/app/AlarmManager;Landroid/hardware/display/AmbientDisplayConfiguration;Lcom/android/systemui/statusbar/phone/DozeParameters;Landroid/hardware/SensorManager;Landroid/os/Handler;Lcom/android/systemui/util/wakelock/WakeLock;ZLcom/android/systemui/dock/DockManager;)V

    return-object v12
.end method

.method private createDozeUi(Landroid/content/Context;Lcom/android/systemui/doze/DozeHost;Lcom/android/systemui/util/wakelock/WakeLock;Lcom/android/systemui/doze/DozeMachine;Landroid/os/Handler;Landroid/app/AlarmManager;Lcom/android/systemui/statusbar/phone/DozeParameters;)Lcom/android/systemui/doze/DozeMachine$Part;
    .locals 10

    .line 107
    new-instance v9, Lcom/android/systemui/doze/DozeUi;

    .line 108
    invoke-static {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v8

    move-object v0, v9

    move-object v1, p1

    move-object/from16 v2, p6

    move-object v3, p4

    move-object v4, p3

    move-object v5, p2

    move-object v6, p5

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/doze/DozeUi;-><init>(Landroid/content/Context;Landroid/app/AlarmManager;Lcom/android/systemui/doze/DozeMachine;Lcom/android/systemui/util/wakelock/WakeLock;Lcom/android/systemui/doze/DozeHost;Landroid/os/Handler;Lcom/android/systemui/statusbar/phone/DozeParameters;Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    return-object v9
.end method

.method public static getBiometricUnlockController(Lcom/android/systemui/doze/DozeService;)Lcom/android/systemui/statusbar/phone/BiometricUnlockController;
    .locals 1

    .line 118
    invoke-virtual {p0}, Landroid/service/dreams/DreamService;->getApplication()Landroid/app/Application;

    move-result-object p0

    .line 119
    check-cast p0, Lcom/android/systemui/SystemUIApplication;

    .line 120
    const-class v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    invoke-virtual {p0, v0}, Lcom/android/systemui/SystemUIApplication;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    return-object p0
.end method

.method public static getHost(Lcom/android/systemui/doze/DozeService;)Lcom/android/systemui/doze/DozeHost;
    .locals 1

    .line 112
    invoke-virtual {p0}, Landroid/service/dreams/DreamService;->getApplication()Landroid/app/Application;

    move-result-object p0

    .line 113
    check-cast p0, Lcom/android/systemui/SystemUIApplication;

    .line 114
    const-class v0, Lcom/android/systemui/doze/DozeHost;

    invoke-virtual {p0, v0}, Lcom/android/systemui/SystemUIApplication;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/doze/DozeHost;

    return-object p0
.end method


# virtual methods
.method public assembleMachine(Lcom/android/systemui/doze/DozeService;Lcom/android/systemui/plugins/FalsingManager;)Lcom/android/systemui/doze/DozeMachine;
    .locals 21

    move-object/from16 v11, p1

    .line 49
    const-class v0, Lcom/android/systemui/util/AsyncSensorManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Landroid/hardware/SensorManager;

    .line 50
    const-class v0, Landroid/app/AlarmManager;

    invoke-virtual {v11, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Landroid/app/AlarmManager;

    .line 51
    const-class v0, Lcom/android/systemui/dock/DockManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Lcom/android/systemui/dock/DockManager;

    .line 52
    const-class v0, Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    .line 54
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/doze/DozeFactory;->getHost(Lcom/android/systemui/doze/DozeService;)Lcom/android/systemui/doze/DozeHost;

    move-result-object v15

    .line 55
    new-instance v10, Landroid/hardware/display/AmbientDisplayConfiguration;

    invoke-direct {v10, v11}, Landroid/hardware/display/AmbientDisplayConfiguration;-><init>(Landroid/content/Context;)V

    .line 56
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/phone/DozeParameters;

    move-result-object v9

    .line 57
    new-instance v8, Landroid/os/Handler;

    invoke-direct {v8}, Landroid/os/Handler;-><init>()V

    .line 58
    new-instance v7, Lcom/android/systemui/util/wakelock/DelayedWakeLock;

    const-string v0, "Doze"

    .line 59
    invoke-static {v11, v0}, Lcom/android/systemui/util/wakelock/WakeLock;->createPartial(Landroid/content/Context;Ljava/lang/String;)Lcom/android/systemui/util/wakelock/WakeLock;

    move-result-object v0

    invoke-direct {v7, v8, v0}, Lcom/android/systemui/util/wakelock/DelayedWakeLock;-><init>(Landroid/os/Handler;Lcom/android/systemui/util/wakelock/WakeLock;)V

    .line 62
    new-instance v0, Lcom/android/systemui/doze/DozeBrightnessHostForwarder;

    invoke-direct {v0, v11, v15}, Lcom/android/systemui/doze/DozeBrightnessHostForwarder;-><init>(Lcom/android/systemui/doze/DozeMachine$Service;Lcom/android/systemui/doze/DozeHost;)V

    .line 63
    invoke-static {v0, v9}, Lcom/android/systemui/doze/DozeScreenStatePreventingAdapter;->wrapIfNeeded(Lcom/android/systemui/doze/DozeMachine$Service;Lcom/android/systemui/statusbar/phone/DozeParameters;)Lcom/android/systemui/doze/DozeMachine$Service;

    move-result-object v0

    .line 64
    invoke-static {v0, v9}, Lcom/android/systemui/doze/DozeSuspendScreenStatePreventingAdapter;->wrapIfNeeded(Lcom/android/systemui/doze/DozeMachine$Service;Lcom/android/systemui/statusbar/phone/DozeParameters;)Lcom/android/systemui/doze/DozeMachine$Service;

    move-result-object v0

    .line 67
    new-instance v6, Lcom/android/systemui/doze/DozeMachine;

    const-class v1, Lcom/android/systemui/statusbar/policy/BatteryController;

    .line 68
    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v16, v1

    check-cast v16, Lcom/android/systemui/statusbar/policy/BatteryController;

    move-object v1, v6

    move-object v2, v0

    move-object v3, v10

    move-object v4, v7

    move-object v11, v6

    move-object/from16 v6, v16

    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/doze/DozeMachine;-><init>(Lcom/android/systemui/doze/DozeMachine$Service;Landroid/hardware/display/AmbientDisplayConfiguration;Lcom/android/systemui/util/wakelock/WakeLock;Lcom/android/systemui/keyguard/WakefulnessLifecycle;Lcom/android/systemui/statusbar/policy/BatteryController;)V

    const/16 v1, 0x9

    new-array v6, v1, [Lcom/android/systemui/doze/DozeMachine$Part;

    .line 69
    new-instance v1, Lcom/android/systemui/doze/DozePauser;

    .line 70
    invoke-virtual {v9}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getPolicy()Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;

    move-result-object v2

    invoke-direct {v1, v8, v11, v13, v2}, Lcom/android/systemui/doze/DozePauser;-><init>(Landroid/os/Handler;Lcom/android/systemui/doze/DozeMachine;Landroid/app/AlarmManager;Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;)V

    const/4 v2, 0x0

    aput-object v1, v6, v2

    new-instance v1, Lcom/android/systemui/doze/DozeFalsingManagerAdapter;

    move-object/from16 v2, p2

    invoke-direct {v1, v2}, Lcom/android/systemui/doze/DozeFalsingManagerAdapter;-><init>(Lcom/android/systemui/plugins/FalsingManager;)V

    const/4 v2, 0x1

    aput-object v1, v6, v2

    move-object v5, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v12

    move-object v3, v15

    move-object v4, v13

    move-object/from16 v16, v12

    move-object v12, v5

    move-object v5, v10

    move-object/from16 p2, v12

    move-object v12, v6

    move-object v6, v9

    move-object/from16 v17, v7

    move-object v7, v8

    move-object/from16 v18, v8

    move-object/from16 v8, v17

    move-object/from16 v19, v9

    move-object v9, v11

    move-object/from16 v20, v10

    move-object v10, v14

    .line 72
    invoke-direct/range {v0 .. v10}, Lcom/android/systemui/doze/DozeFactory;->createDozeTriggers(Landroid/content/Context;Landroid/hardware/SensorManager;Lcom/android/systemui/doze/DozeHost;Landroid/app/AlarmManager;Landroid/hardware/display/AmbientDisplayConfiguration;Lcom/android/systemui/statusbar/phone/DozeParameters;Landroid/os/Handler;Lcom/android/systemui/util/wakelock/WakeLock;Lcom/android/systemui/doze/DozeMachine;Lcom/android/systemui/dock/DockManager;)Lcom/android/systemui/doze/DozeTriggers;

    move-result-object v0

    const/4 v1, 0x2

    aput-object v0, v12, v1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v15

    move-object/from16 v3, v17

    move-object v4, v11

    move-object/from16 v5, v18

    move-object v6, v13

    move-object/from16 v7, v19

    .line 74
    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/doze/DozeFactory;->createDozeUi(Landroid/content/Context;Lcom/android/systemui/doze/DozeHost;Lcom/android/systemui/util/wakelock/WakeLock;Lcom/android/systemui/doze/DozeMachine;Landroid/os/Handler;Landroid/app/AlarmManager;Lcom/android/systemui/statusbar/phone/DozeParameters;)Lcom/android/systemui/doze/DozeMachine$Part;

    move-result-object v0

    const/4 v1, 0x3

    aput-object v0, v12, v1

    new-instance v0, Lcom/android/systemui/doze/DozeScreenState;

    move-object/from16 v2, p2

    move-object/from16 v1, v17

    move-object/from16 v7, v18

    move-object/from16 v5, v19

    invoke-direct {v0, v2, v7, v5, v1}, Lcom/android/systemui/doze/DozeScreenState;-><init>(Lcom/android/systemui/doze/DozeMachine$Service;Landroid/os/Handler;Lcom/android/systemui/statusbar/phone/DozeParameters;Lcom/android/systemui/util/wakelock/WakeLock;)V

    const/4 v1, 0x4

    aput-object v0, v12, v1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, v16

    move-object v4, v15

    move-object v6, v7

    .line 76
    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/doze/DozeFactory;->createDozeScreenBrightness(Landroid/content/Context;Lcom/android/systemui/doze/DozeMachine$Service;Landroid/hardware/SensorManager;Lcom/android/systemui/doze/DozeHost;Lcom/android/systemui/statusbar/phone/DozeParameters;Landroid/os/Handler;)Lcom/android/systemui/doze/DozeMachine$Part;

    move-result-object v0

    const/4 v1, 0x5

    aput-object v0, v12, v1

    new-instance v0, Lcom/android/systemui/doze/DozeWallpaperState;

    .line 78
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/doze/DozeFactory;->getBiometricUnlockController(Lcom/android/systemui/doze/DozeService;)Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    move-result-object v1

    move-object/from16 v8, p1

    invoke-direct {v0, v8, v1}, Lcom/android/systemui/doze/DozeWallpaperState;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/BiometricUnlockController;)V

    const/4 v1, 0x6

    aput-object v0, v12, v1

    new-instance v10, Lcom/android/systemui/doze/DozeDockHandler;

    move-object v0, v10

    move-object/from16 v1, p1

    move-object v2, v9

    move-object v3, v15

    move-object/from16 v4, v20

    move-object v5, v7

    move-object v6, v14

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/doze/DozeDockHandler;-><init>(Landroid/content/Context;Lcom/android/systemui/doze/DozeMachine;Lcom/android/systemui/doze/DozeHost;Landroid/hardware/display/AmbientDisplayConfiguration;Landroid/os/Handler;Lcom/android/systemui/dock/DockManager;)V

    const/4 v0, 0x7

    aput-object v10, v12, v0

    new-instance v0, Lcom/android/systemui/doze/DozeAuthRemover;

    invoke-direct {v0, v8}, Lcom/android/systemui/doze/DozeAuthRemover;-><init>(Landroid/content/Context;)V

    const/16 v1, 0x8

    aput-object v0, v12, v1

    .line 69
    invoke-virtual {v9, v12}, Lcom/android/systemui/doze/DozeMachine;->setParts([Lcom/android/systemui/doze/DozeMachine$Part;)V

    return-object v9
.end method
