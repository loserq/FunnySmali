.class public Lcom/android/systemui/assist/ui/DefaultUiController;
.super Ljava/lang/Object;
.source "DefaultUiController.java"

# interfaces
.implements Lcom/android/systemui/assist/AssistManager$UiController;


# instance fields
.field private mAttached:Z

.field private mInvocationAnimator:Landroid/animation/ValueAnimator;

.field private mInvocationInProgress:Z

.field protected mInvocationLightsView:Lcom/android/systemui/assist/ui/InvocationLightsView;

.field private mLastInvocationProgress:F

.field private final mLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field private final mProgressInterpolator:Landroid/view/animation/PathInterpolator;

.field protected final mRoot:Landroid/widget/FrameLayout;

.field private final mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 10

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/4 v1, 0x0

    const v2, 0x3f547ae1    # 0.83f

    const v3, 0x3f570a3d    # 0.84f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v2, v1, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/systemui/assist/ui/DefaultUiController;->mProgressInterpolator:Landroid/view/animation/PathInterpolator;

    const/4 v0, 0x0

    .line 60
    iput-boolean v0, p0, Lcom/android/systemui/assist/ui/DefaultUiController;->mAttached:Z

    .line 61
    iput-boolean v0, p0, Lcom/android/systemui/assist/ui/DefaultUiController;->mInvocationInProgress:Z

    .line 62
    iput v1, p0, Lcom/android/systemui/assist/ui/DefaultUiController;->mLastInvocationProgress:F

    .line 64
    new-instance v1, Landroid/animation/ValueAnimator;

    invoke-direct {v1}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/assist/ui/DefaultUiController;->mInvocationAnimator:Landroid/animation/ValueAnimator;

    .line 67
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/systemui/assist/ui/DefaultUiController;->mRoot:Landroid/widget/FrameLayout;

    const-string v1, "window"

    .line 68
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    iput-object v1, p0, Lcom/android/systemui/assist/ui/DefaultUiController;->mWindowManager:Landroid/view/WindowManager;

    .line 70
    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x7e8

    const/16 v8, 0x328

    const/4 v9, -0x3

    move-object v2, v1

    invoke-direct/range {v2 .. v9}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIIIII)V

    iput-object v1, p0, Lcom/android/systemui/assist/ui/DefaultUiController;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 79
    iget-object v1, p0, Lcom/android/systemui/assist/ui/DefaultUiController;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v2, 0x40

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/16 v2, 0x50

    .line 80
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const-string v2, "Assist"

    .line 81
    invoke-virtual {v1, v2}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 84
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v1, Lcom/android/systemui/R$layout;->invocation_lights:I

    iget-object v2, p0, Lcom/android/systemui/assist/ui/DefaultUiController;->mRoot:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v1, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/assist/ui/InvocationLightsView;

    iput-object p1, p0, Lcom/android/systemui/assist/ui/DefaultUiController;->mInvocationLightsView:Lcom/android/systemui/assist/ui/InvocationLightsView;

    .line 85
    iget-object p1, p0, Lcom/android/systemui/assist/ui/DefaultUiController;->mRoot:Landroid/widget/FrameLayout;

    iget-object p0, p0, Lcom/android/systemui/assist/ui/DefaultUiController;->mInvocationLightsView:Lcom/android/systemui/assist/ui/InvocationLightsView;

    invoke-virtual {p1, p0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$002(Lcom/android/systemui/assist/ui/DefaultUiController;Z)Z
    .locals 0

    .line 47
    iput-boolean p1, p0, Lcom/android/systemui/assist/ui/DefaultUiController;->mInvocationInProgress:Z

    return p1
.end method

.method static synthetic access$102(Lcom/android/systemui/assist/ui/DefaultUiController;F)F
    .locals 0

    .line 47
    iput p1, p0, Lcom/android/systemui/assist/ui/DefaultUiController;->mLastInvocationProgress:F

    return p1
.end method

.method private animateInvocationCompletion(IF)V
    .locals 2

    const/4 p2, 0x2

    new-array p2, p2, [F

    .line 172
    iget v0, p0, Lcom/android/systemui/assist/ui/DefaultUiController;->mLastInvocationProgress:F

    const/4 v1, 0x0

    aput v0, p2, v1

    const/4 v0, 0x1

    const/high16 v1, 0x3f800000    # 1.0f

    aput v1, p2, v0

    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/assist/ui/DefaultUiController;->mInvocationAnimator:Landroid/animation/ValueAnimator;

    .line 173
    iget-object p2, p0, Lcom/android/systemui/assist/ui/DefaultUiController;->mInvocationAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x1

    invoke-virtual {p2, v0, v1}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 174
    iget-object p2, p0, Lcom/android/systemui/assist/ui/DefaultUiController;->mInvocationAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0xc8

    invoke-virtual {p2, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 175
    iget-object p2, p0, Lcom/android/systemui/assist/ui/DefaultUiController;->mInvocationAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/android/systemui/assist/ui/-$$Lambda$DefaultUiController$DsyFMixn8vpgo7pkqARg9d_ZEVw;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/assist/ui/-$$Lambda$DefaultUiController$DsyFMixn8vpgo7pkqARg9d_ZEVw;-><init>(Lcom/android/systemui/assist/ui/DefaultUiController;I)V

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 177
    iget-object p1, p0, Lcom/android/systemui/assist/ui/DefaultUiController;->mInvocationAnimator:Landroid/animation/ValueAnimator;

    new-instance p2, Lcom/android/systemui/assist/ui/DefaultUiController$1;

    invoke-direct {p2, p0}, Lcom/android/systemui/assist/ui/DefaultUiController$1;-><init>(Lcom/android/systemui/assist/ui/DefaultUiController;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 186
    iget-object p0, p0, Lcom/android/systemui/assist/ui/DefaultUiController;->mInvocationAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private attach()V
    .locals 3

    .line 153
    iget-boolean v0, p0, Lcom/android/systemui/assist/ui/DefaultUiController;->mAttached:Z

    if-nez v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/android/systemui/assist/ui/DefaultUiController;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/assist/ui/DefaultUiController;->mRoot:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/systemui/assist/ui/DefaultUiController;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x1

    .line 155
    iput-boolean v0, p0, Lcom/android/systemui/assist/ui/DefaultUiController;->mAttached:Z

    :cond_0
    return-void
.end method

.method private detach()V
    .locals 2

    .line 160
    iget-boolean v0, p0, Lcom/android/systemui/assist/ui/DefaultUiController;->mAttached:Z

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/android/systemui/assist/ui/DefaultUiController;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/assist/ui/DefaultUiController;->mRoot:Landroid/widget/FrameLayout;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 162
    iput-boolean v0, p0, Lcom/android/systemui/assist/ui/DefaultUiController;->mAttached:Z

    :cond_0
    return-void
.end method

.method protected static logInvocationProgressMetrics(IFZ)V
    .locals 4

    const/16 v0, 0x6b4

    const/4 v1, 0x0

    if-nez p2, :cond_0

    cmpl-float v2, p1, v1

    if-lez v2, :cond_0

    .line 134
    new-instance v2, Landroid/metrics/LogMaker;

    invoke-direct {v2, v0}, Landroid/metrics/LogMaker;-><init>(I)V

    const/4 v3, 0x4

    .line 135
    invoke-virtual {v2, v3}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object v2

    const-class v3, Lcom/android/systemui/assist/AssistManager;

    .line 136
    invoke-static {v3}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/assist/AssistManager;

    invoke-virtual {v3, p0}, Lcom/android/systemui/assist/AssistManager;->toLoggingSubType(I)I

    move-result p0

    invoke-virtual {v2, p0}, Landroid/metrics/LogMaker;->setSubtype(I)Landroid/metrics/LogMaker;

    move-result-object p0

    .line 134
    invoke-static {p0}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/metrics/LogMaker;)V

    :cond_0
    if-eqz p2, :cond_1

    cmpl-float p0, p1, v1

    if-nez p0, :cond_1

    .line 140
    new-instance p0, Landroid/metrics/LogMaker;

    invoke-direct {p0, v0}, Landroid/metrics/LogMaker;-><init>(I)V

    const/4 p1, 0x5

    .line 141
    invoke-virtual {p0, p1}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object p0

    const/4 p1, 0x1

    .line 142
    invoke-virtual {p0, p1}, Landroid/metrics/LogMaker;->setSubtype(I)Landroid/metrics/LogMaker;

    move-result-object p0

    .line 140
    invoke-static {p0}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/metrics/LogMaker;)V

    :cond_1
    return-void
.end method

.method private setProgressInternal(IF)V
    .locals 0

    .line 167
    iget-object p1, p0, Lcom/android/systemui/assist/ui/DefaultUiController;->mInvocationLightsView:Lcom/android/systemui/assist/ui/InvocationLightsView;

    iget-object p0, p0, Lcom/android/systemui/assist/ui/DefaultUiController;->mProgressInterpolator:Landroid/view/animation/PathInterpolator;

    .line 168
    invoke-virtual {p0, p2}, Landroid/view/animation/PathInterpolator;->getInterpolation(F)F

    move-result p0

    .line 167
    invoke-virtual {p1, p0}, Lcom/android/systemui/assist/ui/InvocationLightsView;->onInvocationProgress(F)V

    return-void
.end method

.method private updateAssistHandleVisibility()V
    .locals 2

    .line 147
    iget-object v0, p0, Lcom/android/systemui/assist/ui/DefaultUiController;->mRoot:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/android/systemui/ScreenDecorations;

    invoke-static {v0, v1}, Lcom/android/systemui/SysUiServiceProvider;->getComponent(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/ScreenDecorations;

    .line 149
    iget-boolean p0, p0, Lcom/android/systemui/assist/ui/DefaultUiController;->mInvocationInProgress:Z

    invoke-virtual {v0, p0}, Lcom/android/systemui/ScreenDecorations;->setAssistHintBlocked(Z)V

    return-void
.end method


# virtual methods
.method public hide()V
    .locals 1

    .line 121
    invoke-direct {p0}, Lcom/android/systemui/assist/ui/DefaultUiController;->detach()V

    .line 122
    iget-object v0, p0, Lcom/android/systemui/assist/ui/DefaultUiController;->mInvocationAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/android/systemui/assist/ui/DefaultUiController;->mInvocationAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/assist/ui/DefaultUiController;->mInvocationLightsView:Lcom/android/systemui/assist/ui/InvocationLightsView;

    invoke-virtual {v0}, Lcom/android/systemui/assist/ui/InvocationLightsView;->hide()V

    const/4 v0, 0x0

    .line 126
    iput-boolean v0, p0, Lcom/android/systemui/assist/ui/DefaultUiController;->mInvocationInProgress:Z

    .line 127
    invoke-direct {p0}, Lcom/android/systemui/assist/ui/DefaultUiController;->updateAssistHandleVisibility()V

    return-void
.end method

.method public synthetic lambda$animateInvocationCompletion$0$DefaultUiController(ILandroid/animation/ValueAnimator;)V
    .locals 0

    .line 176
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/assist/ui/DefaultUiController;->setProgressInternal(IF)V

    return-void
.end method

.method public onGestureCompletion(F)V
    .locals 1

    const/4 v0, 0x1

    .line 116
    invoke-direct {p0, v0, p1}, Lcom/android/systemui/assist/ui/DefaultUiController;->animateInvocationCompletion(IF)V

    return-void
.end method

.method public onInvocationProgress(IF)V
    .locals 3

    .line 95
    iget-boolean v0, p0, Lcom/android/systemui/assist/ui/DefaultUiController;->mInvocationInProgress:Z

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, p2, v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 98
    invoke-direct {p0, p1, v2}, Lcom/android/systemui/assist/ui/DefaultUiController;->animateInvocationCompletion(IF)V

    goto :goto_0

    :cond_0
    cmpl-float v1, p2, v2

    if-nez v1, :cond_1

    .line 100
    invoke-virtual {p0}, Lcom/android/systemui/assist/ui/DefaultUiController;->hide()V

    goto :goto_0

    :cond_1
    if-nez v0, :cond_2

    .line 103
    invoke-direct {p0}, Lcom/android/systemui/assist/ui/DefaultUiController;->attach()V

    const/4 v1, 0x1

    .line 104
    iput-boolean v1, p0, Lcom/android/systemui/assist/ui/DefaultUiController;->mInvocationInProgress:Z

    .line 105
    invoke-direct {p0}, Lcom/android/systemui/assist/ui/DefaultUiController;->updateAssistHandleVisibility()V

    .line 107
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/assist/ui/DefaultUiController;->setProgressInternal(IF)V

    .line 109
    :goto_0
    iput p2, p0, Lcom/android/systemui/assist/ui/DefaultUiController;->mLastInvocationProgress:F

    .line 111
    invoke-static {p1, p2, v0}, Lcom/android/systemui/assist/ui/DefaultUiController;->logInvocationProgressMetrics(IFZ)V

    return-void
.end method
