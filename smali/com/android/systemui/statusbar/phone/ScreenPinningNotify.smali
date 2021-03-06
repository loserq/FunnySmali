.class public Lcom/android/systemui/statusbar/phone/ScreenPinningNotify;
.super Ljava/lang/Object;
.source "ScreenPinningNotify.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mLastShowToastTime:J

.field private mLastToast:Landroid/widget/Toast;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ScreenPinningNotify;->mContext:Landroid/content/Context;

    return-void
.end method

.method private hasNavigationBar()Z
    .locals 1

    .line 84
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    .line 86
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ScreenPinningNotify;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getDisplayId()I

    move-result p0

    invoke-interface {v0, p0}, Landroid/view/IWindowManager;->hasNavigationBar(I)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method private makeAllUserToastAndShow(I)Landroid/widget/Toast;
    .locals 1

    .line 78
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ScreenPinningNotify;->mContext:Landroid/content/Context;

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/android/systemui/SysUIToast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    .line 79
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-object p0
.end method


# virtual methods
.method public showEscapeToast(ZZ)V
    .locals 6

    .line 59
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 60
    iget-wide v2, p0, Lcom/android/systemui/statusbar/phone/ScreenPinningNotify;->mLastShowToastTime:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x3e8

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    const-string p0, "ScreenPinningNotify"

    const-string p1, "Ignore toast since it is requested in very short interval."

    .line 61
    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 64
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ScreenPinningNotify;->mLastToast:Landroid/widget/Toast;

    if-eqz v2, :cond_1

    .line 65
    invoke-virtual {v2}, Landroid/widget/Toast;->cancel()V

    .line 67
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/ScreenPinningNotify;->hasNavigationBar()Z

    move-result v2

    if-nez v2, :cond_2

    .line 68
    sget p1, Lcom/android/systemui/R$string;->screen_pinning_toast_no_navbar:I

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_3

    .line 70
    sget p1, Lcom/android/systemui/R$string;->screen_pinning_toast_gesture_nav:I

    goto :goto_0

    :cond_3
    if-eqz p2, :cond_4

    .line 72
    sget p1, Lcom/android/systemui/R$string;->screen_pinning_toast:I

    goto :goto_0

    .line 73
    :cond_4
    sget p1, Lcom/android/systemui/R$string;->screen_pinning_toast_recents_invisible:I

    .line 67
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/ScreenPinningNotify;->makeAllUserToastAndShow(I)Landroid/widget/Toast;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ScreenPinningNotify;->mLastToast:Landroid/widget/Toast;

    .line 74
    iput-wide v0, p0, Lcom/android/systemui/statusbar/phone/ScreenPinningNotify;->mLastShowToastTime:J

    return-void
.end method

.method public showPinningExitToast()V
    .locals 1

    .line 54
    sget v0, Lcom/android/systemui/R$string;->screen_pinning_exit:I

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/ScreenPinningNotify;->makeAllUserToastAndShow(I)Landroid/widget/Toast;

    return-void
.end method

.method public showPinningStartToast()V
    .locals 1

    .line 49
    sget v0, Lcom/android/systemui/R$string;->screen_pinning_start:I

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/ScreenPinningNotify;->makeAllUserToastAndShow(I)Landroid/widget/Toast;

    return-void
.end method
