.class public final synthetic Lcom/android/keyguard/clock/-$$Lambda$ClockManager$S9mioM0D_PySk2QvGuzLMKZKbKs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/keyguard/clock/ClockManager$ClockChangedListener;

.field private final synthetic f$1:Lcom/android/systemui/plugins/ClockPlugin;


# direct methods
.method public synthetic constructor <init>(Lcom/android/keyguard/clock/ClockManager$ClockChangedListener;Lcom/android/systemui/plugins/ClockPlugin;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/keyguard/clock/-$$Lambda$ClockManager$S9mioM0D_PySk2QvGuzLMKZKbKs;->f$0:Lcom/android/keyguard/clock/ClockManager$ClockChangedListener;

    iput-object p2, p0, Lcom/android/keyguard/clock/-$$Lambda$ClockManager$S9mioM0D_PySk2QvGuzLMKZKbKs;->f$1:Lcom/android/systemui/plugins/ClockPlugin;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/clock/-$$Lambda$ClockManager$S9mioM0D_PySk2QvGuzLMKZKbKs;->f$0:Lcom/android/keyguard/clock/ClockManager$ClockChangedListener;

    iget-object p0, p0, Lcom/android/keyguard/clock/-$$Lambda$ClockManager$S9mioM0D_PySk2QvGuzLMKZKbKs;->f$1:Lcom/android/systemui/plugins/ClockPlugin;

    invoke-static {v0, p0}, Lcom/android/keyguard/clock/ClockManager;->lambda$reload$6(Lcom/android/keyguard/clock/ClockManager$ClockChangedListener;Lcom/android/systemui/plugins/ClockPlugin;)V

    return-void
.end method
