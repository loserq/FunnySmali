.class public Lcom/android/systemui/qs/QSFragment;
.super Lcom/android/systemui/util/LifecycleFragment;
.source "QSFragment.java"

# interfaces
.implements Lcom/android/systemui/plugins/qs/QS;
.implements Lcom/android/systemui/statusbar/CommandQueue$Callbacks;
.implements Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;


# instance fields
.field private final mAnimateHeaderSlidingInListener:Landroid/animation/Animator$AnimatorListener;

.field private mContainer:Lcom/android/systemui/qs/QSContainerImpl;

.field private mDelay:J

.field private mFooter:Lcom/android/systemui/qs/QSFooter;

.field protected mHeader:Lcom/android/systemui/qs/QuickStatusBarHeader;

.field private mHeaderAnimating:Z

.field private final mHost:Lcom/android/systemui/qs/QSTileHost;

.field private final mInjectionInflater:Lcom/android/systemui/util/InjectionInflationController;

.field private mLastKeyguardAndExpanded:Z

.field private mLastQSExpansion:F

.field private mLayoutDirection:I

.field private mListening:Z

.field private mPanelView:Lcom/android/systemui/plugins/qs/QS$HeightListener;

.field private mQSAnimator:Lcom/android/systemui/qs/QSAnimator;

.field private mQSCustomizer:Lcom/android/systemui/qs/customize/QSCustomizer;

.field private mQSDetail:Lcom/android/systemui/qs/QSDetail;

.field protected mQSPanel:Lcom/android/systemui/qs/QSPanel;

.field private final mQsBounds:Landroid/graphics/Rect;

.field private mQsDisabled:Z

.field private mQsExpanded:Z

.field private final mRemoteInputQuickSettingsDisabler:Lcom/android/systemui/statusbar/policy/RemoteInputQuickSettingsDisabler;

.field private mShowCollapsedOnKeyguard:Z

.field private mStackScrollerOverscrolling:Z

.field private final mStartHeaderSlidingIn:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field private mState:I

.field private final mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/policy/RemoteInputQuickSettingsDisabler;Lcom/android/systemui/util/InjectionInflationController;Landroid/content/Context;Lcom/android/systemui/qs/QSTileHost;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;)V
    .locals 1

    .line 100
    invoke-direct {p0}, Lcom/android/systemui/util/LifecycleFragment;-><init>()V

    .line 62
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQsBounds:Landroid/graphics/Rect;

    const/high16 v0, -0x40800000    # -1.0f

    .line 80
    iput v0, p0, Lcom/android/systemui/qs/QSFragment;->mLastQSExpansion:F

    .line 502
    new-instance v0, Lcom/android/systemui/qs/QSFragment$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/QSFragment$2;-><init>(Lcom/android/systemui/qs/QSFragment;)V

    iput-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mStartHeaderSlidingIn:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 518
    new-instance v0, Lcom/android/systemui/qs/QSFragment$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/QSFragment$3;-><init>(Lcom/android/systemui/qs/QSFragment;)V

    iput-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mAnimateHeaderSlidingInListener:Landroid/animation/Animator$AnimatorListener;

    .line 101
    iput-object p1, p0, Lcom/android/systemui/qs/QSFragment;->mRemoteInputQuickSettingsDisabler:Lcom/android/systemui/statusbar/policy/RemoteInputQuickSettingsDisabler;

    .line 102
    iput-object p2, p0, Lcom/android/systemui/qs/QSFragment;->mInjectionInflater:Lcom/android/systemui/util/InjectionInflationController;

    .line 103
    const-class p1, Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {p3, p1}, Lcom/android/systemui/SysUiServiceProvider;->getComponent(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/CommandQueue;

    .line 104
    invoke-virtual {p0}, Lcom/android/systemui/util/LifecycleFragment;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p2

    invoke-interface {p1, p2, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->observe(Landroidx/lifecycle/Lifecycle;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    iput-object p4, p0, Lcom/android/systemui/qs/QSFragment;->mHost:Lcom/android/systemui/qs/QSTileHost;

    .line 106
    iput-object p5, p0, Lcom/android/systemui/qs/QSFragment;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    return-void
.end method

.method static synthetic access$002(Lcom/android/systemui/qs/QSFragment;Z)Z
    .locals 0

    .line 55
    iput-boolean p1, p0, Lcom/android/systemui/qs/QSFragment;->mHeaderAnimating:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/systemui/qs/QSFragment;)V
    .locals 0

    .line 55
    invoke-direct {p0}, Lcom/android/systemui/qs/QSFragment;->updateQsState()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/qs/QSFragment;)Landroid/animation/Animator$AnimatorListener;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/android/systemui/qs/QSFragment;->mAnimateHeaderSlidingInListener:Landroid/animation/Animator$AnimatorListener;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/systemui/qs/QSFragment;)J
    .locals 2

    .line 55
    iget-wide v0, p0, Lcom/android/systemui/qs/QSFragment;->mDelay:J

    return-wide v0
.end method

.method private headerWillBeAnimating()Z
    .locals 2

    .line 405
    iget v0, p0, Lcom/android/systemui/qs/QSFragment;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/qs/QSFragment;->mShowCollapsedOnKeyguard:Z

    if-eqz v0, :cond_0

    .line 406
    invoke-direct {p0}, Lcom/android/systemui/qs/QSFragment;->isKeyguardShowing()Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private isKeyguardShowing()Z
    .locals 1

    .line 274
    iget-object p0, p0, Lcom/android/systemui/qs/QSFragment;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {p0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private setEditLocation(Landroid/view/View;)V
    .locals 3

    const v0, 0x1020003

    .line 203
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 204
    invoke-virtual {p1}, Landroid/view/View;->getLocationOnScreen()[I

    move-result-object v0

    const/4 v1, 0x0

    .line 205
    aget v1, v0, v1

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    const/4 v2, 0x1

    .line 206
    aget v0, v0, v2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    add-int/2addr v0, p1

    .line 207
    iget-object p0, p0, Lcom/android/systemui/qs/QSFragment;->mQSCustomizer:Lcom/android/systemui/qs/customize/QSCustomizer;

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/qs/customize/QSCustomizer;->setEditLocation(II)V

    return-void
.end method

.method private setKeyguardShowing(Z)V
    .locals 1

    const/high16 v0, -0x40800000    # -1.0f

    .line 324
    iput v0, p0, Lcom/android/systemui/qs/QSFragment;->mLastQSExpansion:F

    .line 326
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQSAnimator:Lcom/android/systemui/qs/QSAnimator;

    if-eqz v0, :cond_0

    .line 327
    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/QSAnimator;->setOnKeyguard(Z)V

    .line 330
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mFooter:Lcom/android/systemui/qs/QSFooter;

    invoke-interface {v0, p1}, Lcom/android/systemui/qs/QSFooter;->setKeyguardShowing(Z)V

    .line 331
    invoke-direct {p0}, Lcom/android/systemui/qs/QSFragment;->updateQsState()V

    return-void
.end method

.method private updateQsState()V
    .locals 7

    .line 250
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSFragment;->mQsExpanded:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/qs/QSFragment;->mStackScrollerOverscrolling:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/qs/QSFragment;->mHeaderAnimating:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v1

    .line 252
    :goto_1
    iget-object v3, p0, Lcom/android/systemui/qs/QSFragment;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    iget-boolean v4, p0, Lcom/android/systemui/qs/QSFragment;->mQsExpanded:Z

    invoke-virtual {v3, v4}, Lcom/android/systemui/qs/QSPanel;->setExpanded(Z)V

    .line 253
    iget-object v3, p0, Lcom/android/systemui/qs/QSFragment;->mQSDetail:Lcom/android/systemui/qs/QSDetail;

    iget-boolean v4, p0, Lcom/android/systemui/qs/QSFragment;->mQsExpanded:Z

    invoke-virtual {v3, v4}, Lcom/android/systemui/qs/QSDetail;->setExpanded(Z)V

    .line 254
    invoke-direct {p0}, Lcom/android/systemui/qs/QSFragment;->isKeyguardShowing()Z

    move-result v3

    .line 255
    iget-object v4, p0, Lcom/android/systemui/qs/QSFragment;->mHeader:Lcom/android/systemui/qs/QuickStatusBarHeader;

    iget-boolean v5, p0, Lcom/android/systemui/qs/QSFragment;->mQsExpanded:Z

    const/4 v6, 0x4

    if-nez v5, :cond_3

    if-eqz v3, :cond_3

    iget-boolean v5, p0, Lcom/android/systemui/qs/QSFragment;->mHeaderAnimating:Z

    if-nez v5, :cond_3

    iget-boolean v5, p0, Lcom/android/systemui/qs/QSFragment;->mShowCollapsedOnKeyguard:Z

    if-eqz v5, :cond_2

    goto :goto_2

    :cond_2
    move v5, v6

    goto :goto_3

    :cond_3
    :goto_2
    move v5, v2

    :goto_3
    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 259
    iget-object v4, p0, Lcom/android/systemui/qs/QSFragment;->mHeader:Lcom/android/systemui/qs/QuickStatusBarHeader;

    if-eqz v3, :cond_4

    iget-boolean v5, p0, Lcom/android/systemui/qs/QSFragment;->mHeaderAnimating:Z

    if-nez v5, :cond_4

    iget-boolean v5, p0, Lcom/android/systemui/qs/QSFragment;->mShowCollapsedOnKeyguard:Z

    if-eqz v5, :cond_5

    :cond_4
    iget-boolean v5, p0, Lcom/android/systemui/qs/QSFragment;->mQsExpanded:Z

    if-eqz v5, :cond_6

    iget-boolean v5, p0, Lcom/android/systemui/qs/QSFragment;->mStackScrollerOverscrolling:Z

    if-nez v5, :cond_6

    :cond_5
    move v5, v1

    goto :goto_4

    :cond_6
    move v5, v2

    :goto_4
    invoke-virtual {v4, v5}, Lcom/android/systemui/qs/QuickStatusBarHeader;->setExpanded(Z)V

    .line 261
    iget-object v4, p0, Lcom/android/systemui/qs/QSFragment;->mFooter:Lcom/android/systemui/qs/QSFooter;

    .line 262
    iget-boolean v5, p0, Lcom/android/systemui/qs/QSFragment;->mQsDisabled:Z

    if-nez v5, :cond_8

    iget-boolean v5, p0, Lcom/android/systemui/qs/QSFragment;->mQsExpanded:Z

    if-nez v5, :cond_7

    if-eqz v3, :cond_7

    iget-boolean v5, p0, Lcom/android/systemui/qs/QSFragment;->mHeaderAnimating:Z

    if-nez v5, :cond_7

    iget-boolean v5, p0, Lcom/android/systemui/qs/QSFragment;->mShowCollapsedOnKeyguard:Z

    if-eqz v5, :cond_8

    :cond_7
    move v5, v2

    goto :goto_5

    :cond_8
    move v5, v6

    .line 261
    :goto_5
    invoke-interface {v4, v5}, Lcom/android/systemui/qs/QSFooter;->setVisibility(I)V

    .line 266
    iget-object v4, p0, Lcom/android/systemui/qs/QSFragment;->mFooter:Lcom/android/systemui/qs/QSFooter;

    if-eqz v3, :cond_9

    iget-boolean v3, p0, Lcom/android/systemui/qs/QSFragment;->mHeaderAnimating:Z

    if-nez v3, :cond_9

    iget-boolean v3, p0, Lcom/android/systemui/qs/QSFragment;->mShowCollapsedOnKeyguard:Z

    if-eqz v3, :cond_b

    :cond_9
    iget-boolean v3, p0, Lcom/android/systemui/qs/QSFragment;->mQsExpanded:Z

    if-eqz v3, :cond_a

    iget-boolean v3, p0, Lcom/android/systemui/qs/QSFragment;->mStackScrollerOverscrolling:Z

    if-nez v3, :cond_a

    goto :goto_6

    :cond_a
    move v1, v2

    :cond_b
    :goto_6
    invoke-interface {v4, v1}, Lcom/android/systemui/qs/QSFooter;->setExpanded(Z)V

    .line 268
    iget-object v1, p0, Lcom/android/systemui/qs/QSFragment;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    iget-boolean p0, p0, Lcom/android/systemui/qs/QSFragment;->mQsDisabled:Z

    if-nez p0, :cond_c

    if-eqz v0, :cond_c

    goto :goto_7

    :cond_c
    move v2, v6

    :goto_7
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public animateHeaderSlidingIn(J)V
    .locals 2

    .line 414
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSFragment;->mQsExpanded:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 415
    iput-boolean v0, p0, Lcom/android/systemui/qs/QSFragment;->mHeaderAnimating:Z

    .line 416
    iput-wide p1, p0, Lcom/android/systemui/qs/QSFragment;->mDelay:J

    .line 417
    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/qs/QSFragment;->mStartHeaderSlidingIn:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {p1, p0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_0
    return-void
.end method

.method public animateHeaderSlidingOut()V
    .locals 3

    .line 424
    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/qs/QSFragment;->mHeader:Lcom/android/systemui/qs/QuickStatusBarHeader;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 427
    iput-boolean v0, p0, Lcom/android/systemui/qs/QSFragment;->mHeaderAnimating:Z

    .line 428
    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/QSFragment;->mHeader:Lcom/android/systemui/qs/QuickStatusBarHeader;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->y(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x0

    .line 429
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x168

    .line 430
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    .line 431
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/qs/QSFragment$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/QSFragment$1;-><init>(Lcom/android/systemui/qs/QSFragment;)V

    .line 432
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 444
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method public closeDetail()V
    .locals 0

    .line 454
    iget-object p0, p0, Lcom/android/systemui/qs/QSFragment;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanel;->closeDetail()V

    return-void
.end method

.method public disable(IIIZ)V
    .locals 1

    .line 235
    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getDisplayId()I

    move-result v0

    if-eq p1, v0, :cond_0

    return-void

    .line 238
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/qs/QSFragment;->mRemoteInputQuickSettingsDisabler:Lcom/android/systemui/statusbar/policy/RemoteInputQuickSettingsDisabler;

    invoke-virtual {p1, p3}, Lcom/android/systemui/statusbar/policy/RemoteInputQuickSettingsDisabler;->adjustDisableFlags(I)I

    move-result p1

    and-int/lit8 p3, p1, 0x1

    if-eqz p3, :cond_1

    const/4 p3, 0x1

    goto :goto_0

    :cond_1
    const/4 p3, 0x0

    .line 241
    :goto_0
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSFragment;->mQsDisabled:Z

    if-ne p3, v0, :cond_2

    return-void

    .line 242
    :cond_2
    iput-boolean p3, p0, Lcom/android/systemui/qs/QSFragment;->mQsDisabled:Z

    .line 243
    iget-object p3, p0, Lcom/android/systemui/qs/QSFragment;->mContainer:Lcom/android/systemui/qs/QSContainerImpl;

    invoke-virtual {p3, p2, p1, p4}, Lcom/android/systemui/qs/QSContainerImpl;->disable(IIZ)V

    .line 244
    iget-object p3, p0, Lcom/android/systemui/qs/QSFragment;->mHeader:Lcom/android/systemui/qs/QuickStatusBarHeader;

    invoke-virtual {p3, p2, p1, p4}, Lcom/android/systemui/qs/QuickStatusBarHeader;->disable(IIZ)V

    .line 245
    iget-object p3, p0, Lcom/android/systemui/qs/QSFragment;->mFooter:Lcom/android/systemui/qs/QSFooter;

    invoke-interface {p3, p2, p1, p4}, Lcom/android/systemui/qs/QSFooter;->disable(IIZ)V

    .line 246
    invoke-direct {p0}, Lcom/android/systemui/qs/QSFragment;->updateQsState()V

    return-void
.end method

.method public getDesiredHeight()I
    .locals 2

    .line 473
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQSCustomizer:Lcom/android/systemui/qs/customize/QSCustomizer;

    invoke-virtual {v0}, Lcom/android/systemui/qs/customize/QSCustomizer;->isCustomizing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 474
    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    return p0

    .line 476
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQSDetail:Lcom/android/systemui/qs/QSDetail;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSDetail;->isClosingDetail()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 477
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 478
    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v1, v0

    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    .line 479
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v0

    add-int/2addr v1, v0

    .line 480
    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result p0

    add-int/2addr v1, p0

    return v1

    .line 482
    :cond_1
    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p0

    return p0
.end method

.method public getHeader()Landroid/view/View;
    .locals 0

    .line 178
    iget-object p0, p0, Lcom/android/systemui/qs/QSFragment;->mHeader:Lcom/android/systemui/qs/QuickStatusBarHeader;

    return-object p0
.end method

.method public getQsMinExpansionHeight()I
    .locals 0

    .line 493
    iget-object p0, p0, Lcom/android/systemui/qs/QSFragment;->mHeader:Lcom/android/systemui/qs/QuickStatusBarHeader;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result p0

    return p0
.end method

.method public getQsPanel()Lcom/android/systemui/qs/QSPanel;
    .locals 0

    .line 292
    iget-object p0, p0, Lcom/android/systemui/qs/QSFragment;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    return-object p0
.end method

.method public hideImmediately()V
    .locals 1

    .line 498
    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 499
    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/qs/QSFragment;->mHeader:Lcom/android/systemui/qs/QuickStatusBarHeader;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result p0

    neg-int p0, p0

    int-to-float p0, p0

    invoke-virtual {v0, p0}, Landroid/view/View;->setY(F)V

    return-void
.end method

.method public isCustomizing()Z
    .locals 0

    .line 219
    iget-object p0, p0, Lcom/android/systemui/qs/QSFragment;->mQSCustomizer:Lcom/android/systemui/qs/customize/QSCustomizer;

    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/QSCustomizer;->isCustomizing()Z

    move-result p0

    return p0
.end method

.method isExpanded()Z
    .locals 0

    .line 173
    iget-boolean p0, p0, Lcom/android/systemui/qs/QSFragment;->mQsExpanded:Z

    return p0
.end method

.method isListening()Z
    .locals 0

    .line 168
    iget-boolean p0, p0, Lcom/android/systemui/qs/QSFragment;->mListening:Z

    return p0
.end method

.method public isShowingDetail()Z
    .locals 1

    .line 301
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSPanel;->isShowingCustomize()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/android/systemui/qs/QSFragment;->mQSDetail:Lcom/android/systemui/qs/QSDetail;

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSDetail;->isShowingDetail()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public notifyCustomizeChanged()V
    .locals 4

    .line 459
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mContainer:Lcom/android/systemui/qs/QSContainerImpl;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSContainerImpl;->updateExpansion()V

    .line 460
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    iget-object v1, p0, Lcom/android/systemui/qs/QSFragment;->mQSCustomizer:Lcom/android/systemui/qs/customize/QSCustomizer;

    invoke-virtual {v1}, Lcom/android/systemui/qs/customize/QSCustomizer;->isCustomizing()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x4

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 461
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mFooter:Lcom/android/systemui/qs/QSFooter;

    iget-object v1, p0, Lcom/android/systemui/qs/QSFragment;->mQSCustomizer:Lcom/android/systemui/qs/customize/QSCustomizer;

    invoke-virtual {v1}, Lcom/android/systemui/qs/customize/QSCustomizer;->isCustomizing()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    invoke-interface {v0, v2}, Lcom/android/systemui/qs/QSFooter;->setVisibility(I)V

    .line 464
    iget-object p0, p0, Lcom/android/systemui/qs/QSFragment;->mPanelView:Lcom/android/systemui/plugins/qs/QS$HeightListener;

    invoke-interface {p0}, Lcom/android/systemui/plugins/qs/QS$HeightListener;->onQsHeightChanged()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 192
    invoke-super {p0, p1}, Landroid/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 193
    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/qs/QSFragment;->setEditLocation(Landroid/view/View;)V

    .line 194
    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v0

    iget v1, p0, Lcom/android/systemui/qs/QSFragment;->mLayoutDirection:I

    if-eq v0, v1, :cond_0

    .line 195
    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result p1

    iput p1, p0, Lcom/android/systemui/qs/QSFragment;->mLayoutDirection:I

    .line 196
    iget-object p0, p0, Lcom/android/systemui/qs/QSFragment;->mQSAnimator:Lcom/android/systemui/qs/QSAnimator;

    if-eqz p0, :cond_0

    .line 197
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSAnimator;->onRtlChanged()V

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .line 112
    iget-object p3, p0, Lcom/android/systemui/qs/QSFragment;->mInjectionInflater:Lcom/android/systemui/util/InjectionInflationController;

    new-instance v0, Landroid/view/ContextThemeWrapper;

    .line 113
    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    sget v1, Lcom/android/systemui/R$style;->qs_theme:I

    invoke-direct {v0, p0, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p1, v0}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    .line 112
    invoke-virtual {p3, p0}, Lcom/android/systemui/util/InjectionInflationController;->injectable(Landroid/view/LayoutInflater;)Landroid/view/LayoutInflater;

    move-result-object p0

    .line 114
    sget p1, Lcom/android/systemui/R$layout;->qs_panel:I

    const/4 p3, 0x0

    invoke-virtual {p0, p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public onDestroy()V
    .locals 1

    .line 148
    invoke-super {p0}, Lcom/android/systemui/util/LifecycleFragment;->onDestroy()V

    .line 149
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {v0, p0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->removeCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    .line 150
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSFragment;->mListening:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 151
    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSFragment;->setListening(Z)V

    :cond_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 306
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSFragment;->isCustomizing()Z

    move-result p0

    return p0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 157
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 158
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSFragment;->mQsExpanded:Z

    const-string v1, "expanded"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 159
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSFragment;->mListening:Z

    const-string v1, "listening"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 160
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQSCustomizer:Lcom/android/systemui/qs/customize/QSCustomizer;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/customize/QSCustomizer;->saveInstanceState(Landroid/os/Bundle;)V

    .line 161
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSFragment;->mQsExpanded:Z

    if-eqz v0, :cond_0

    .line 162
    iget-object p0, p0, Lcom/android/systemui/qs/QSFragment;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanel;->getTileLayout()Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/systemui/qs/QSPanel$QSTileLayout;->saveInstanceState(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public onStateChanged(I)V
    .locals 1

    .line 529
    iput p1, p0, Lcom/android/systemui/qs/QSFragment;->mState:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 530
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/systemui/qs/QSFragment;->setKeyguardShowing(Z)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4

    .line 119
    invoke-super {p0, p1, p2}, Landroid/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 120
    sget v0, Lcom/android/systemui/R$id;->quick_settings_panel:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/QSPanel;

    iput-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    .line 121
    sget v0, Lcom/android/systemui/R$id;->qs_detail:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/QSDetail;

    iput-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQSDetail:Lcom/android/systemui/qs/QSDetail;

    .line 122
    sget v0, Lcom/android/systemui/R$id;->header:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/QuickStatusBarHeader;

    iput-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mHeader:Lcom/android/systemui/qs/QuickStatusBarHeader;

    .line 123
    sget v0, Lcom/android/systemui/R$id;->qs_footer:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/QSFooter;

    iput-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mFooter:Lcom/android/systemui/qs/QSFooter;

    .line 124
    sget v0, Lcom/android/systemui/R$id;->quick_settings_container:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/QSContainerImpl;

    iput-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mContainer:Lcom/android/systemui/qs/QSContainerImpl;

    .line 126
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQSDetail:Lcom/android/systemui/qs/QSDetail;

    iget-object v1, p0, Lcom/android/systemui/qs/QSFragment;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    iget-object v2, p0, Lcom/android/systemui/qs/QSFragment;->mHeader:Lcom/android/systemui/qs/QuickStatusBarHeader;

    iget-object v3, p0, Lcom/android/systemui/qs/QSFragment;->mFooter:Lcom/android/systemui/qs/QSFooter;

    check-cast v3, Landroid/view/View;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/qs/QSDetail;->setQsPanel(Lcom/android/systemui/qs/QSPanel;Lcom/android/systemui/qs/QuickStatusBarHeader;Landroid/view/View;)V

    .line 127
    new-instance v0, Lcom/android/systemui/qs/QSAnimator;

    iget-object v1, p0, Lcom/android/systemui/qs/QSFragment;->mHeader:Lcom/android/systemui/qs/QuickStatusBarHeader;

    sget v2, Lcom/android/systemui/R$id;->quick_qs_panel:I

    .line 128
    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/QuickQSPanel;

    iget-object v2, p0, Lcom/android/systemui/qs/QSFragment;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/systemui/qs/QSAnimator;-><init>(Lcom/android/systemui/plugins/qs/QS;Lcom/android/systemui/qs/QuickQSPanel;Lcom/android/systemui/qs/QSPanel;)V

    iput-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQSAnimator:Lcom/android/systemui/qs/QSAnimator;

    .line 130
    sget v0, Lcom/android/systemui/R$id;->qs_customize:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/customize/QSCustomizer;

    iput-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQSCustomizer:Lcom/android/systemui/qs/customize/QSCustomizer;

    .line 131
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQSCustomizer:Lcom/android/systemui/qs/customize/QSCustomizer;

    invoke-virtual {v0, p0}, Lcom/android/systemui/qs/customize/QSCustomizer;->setQs(Lcom/android/systemui/plugins/qs/QS;)V

    if-eqz p2, :cond_0

    const-string v0, "expanded"

    .line 133
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSFragment;->setExpanded(Z)V

    const-string v0, "listening"

    .line 134
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSFragment;->setListening(Z)V

    .line 135
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSFragment;->setEditLocation(Landroid/view/View;)V

    .line 136
    iget-object p1, p0, Lcom/android/systemui/qs/QSFragment;->mQSCustomizer:Lcom/android/systemui/qs/customize/QSCustomizer;

    invoke-virtual {p1, p2}, Lcom/android/systemui/qs/customize/QSCustomizer;->restoreInstanceState(Landroid/os/Bundle;)V

    .line 137
    iget-boolean p1, p0, Lcom/android/systemui/qs/QSFragment;->mQsExpanded:Z

    if-eqz p1, :cond_0

    .line 138
    iget-object p1, p0, Lcom/android/systemui/qs/QSFragment;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {p1}, Lcom/android/systemui/qs/QSPanel;->getTileLayout()Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/android/systemui/qs/QSPanel$QSTileLayout;->restoreInstanceState(Landroid/os/Bundle;)V

    .line 141
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/qs/QSFragment;->mHost:Lcom/android/systemui/qs/QSTileHost;

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/QSFragment;->setHost(Lcom/android/systemui/qs/QSTileHost;)V

    .line 142
    iget-object p1, p0, Lcom/android/systemui/qs/QSFragment;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {p1, p0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->addCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    .line 143
    iget-object p1, p0, Lcom/android/systemui/qs/QSFragment;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {p1}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/QSFragment;->onStateChanged(I)V

    return-void
.end method

.method public setContainer(Landroid/view/ViewGroup;)V
    .locals 1

    .line 212
    instance-of v0, p1, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;

    if-eqz v0, :cond_0

    .line 213
    iget-object p0, p0, Lcom/android/systemui/qs/QSFragment;->mQSCustomizer:Lcom/android/systemui/qs/customize/QSCustomizer;

    check-cast p1, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/customize/QSCustomizer;->setContainer(Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;)V

    :cond_0
    return-void
.end method

.method public setExpandClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 449
    iget-object p0, p0, Lcom/android/systemui/qs/QSFragment;->mFooter:Lcom/android/systemui/qs/QSFooter;

    invoke-interface {p0, p1}, Lcom/android/systemui/qs/QSFooter;->setExpandClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setExpanded(Z)V
    .locals 2

    .line 317
    iput-boolean p1, p0, Lcom/android/systemui/qs/QSFragment;->mQsExpanded:Z

    .line 318
    iget-object p1, p0, Lcom/android/systemui/qs/QSFragment;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    iget-boolean v0, p0, Lcom/android/systemui/qs/QSFragment;->mListening:Z

    iget-boolean v1, p0, Lcom/android/systemui/qs/QSFragment;->mQsExpanded:Z

    invoke-virtual {p1, v0, v1}, Lcom/android/systemui/qs/QSPanel;->setListening(ZZ)V

    .line 319
    invoke-direct {p0}, Lcom/android/systemui/qs/QSFragment;->updateQsState()V

    return-void
.end method

.method public setHasNotifications(Z)V
    .locals 0

    return-void
.end method

.method public setHeaderClickable(Z)V
    .locals 0

    return-void
.end method

.method public setHeaderListening(Z)V
    .locals 1

    .line 352
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mHeader:Lcom/android/systemui/qs/QuickStatusBarHeader;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/QuickStatusBarHeader;->setListening(Z)V

    .line 353
    iget-object p0, p0, Lcom/android/systemui/qs/QSFragment;->mFooter:Lcom/android/systemui/qs/QSFooter;

    invoke-interface {p0, p1}, Lcom/android/systemui/qs/QSFooter;->setListening(Z)V

    return-void
.end method

.method public setHeightOverride(I)V
    .locals 0

    .line 488
    iget-object p0, p0, Lcom/android/systemui/qs/QSFragment;->mContainer:Lcom/android/systemui/qs/QSContainerImpl;

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/QSContainerImpl;->setHeightOverride(I)V

    return-void
.end method

.method public setHost(Lcom/android/systemui/qs/QSTileHost;)V
    .locals 2

    .line 223
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    iget-object v1, p0, Lcom/android/systemui/qs/QSFragment;->mQSCustomizer:Lcom/android/systemui/qs/customize/QSCustomizer;

    invoke-virtual {v0, p1, v1}, Lcom/android/systemui/qs/QSPanel;->setHost(Lcom/android/systemui/qs/QSTileHost;Lcom/android/systemui/qs/customize/QSCustomizer;)V

    .line 224
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mHeader:Lcom/android/systemui/qs/QuickStatusBarHeader;

    iget-object v1, p0, Lcom/android/systemui/qs/QSFragment;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QuickStatusBarHeader;->setQSPanel(Lcom/android/systemui/qs/QSPanel;)V

    .line 225
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mFooter:Lcom/android/systemui/qs/QSFooter;

    iget-object v1, p0, Lcom/android/systemui/qs/QSFragment;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-interface {v0, v1}, Lcom/android/systemui/qs/QSFooter;->setQSPanel(Lcom/android/systemui/qs/QSPanel;)V

    .line 226
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQSDetail:Lcom/android/systemui/qs/QSDetail;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/QSDetail;->setHost(Lcom/android/systemui/qs/QSTileHost;)V

    .line 228
    iget-object p0, p0, Lcom/android/systemui/qs/QSFragment;->mQSAnimator:Lcom/android/systemui/qs/QSAnimator;

    if-eqz p0, :cond_0

    .line 229
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/QSAnimator;->setHost(Lcom/android/systemui/qs/QSTileHost;)V

    :cond_0
    return-void
.end method

.method public setListening(Z)V
    .locals 1

    .line 344
    iput-boolean p1, p0, Lcom/android/systemui/qs/QSFragment;->mListening:Z

    .line 345
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mHeader:Lcom/android/systemui/qs/QuickStatusBarHeader;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/QuickStatusBarHeader;->setListening(Z)V

    .line 346
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mFooter:Lcom/android/systemui/qs/QSFooter;

    invoke-interface {v0, p1}, Lcom/android/systemui/qs/QSFooter;->setListening(Z)V

    .line 347
    iget-object p1, p0, Lcom/android/systemui/qs/QSFragment;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    iget-boolean v0, p0, Lcom/android/systemui/qs/QSFragment;->mListening:Z

    iget-boolean p0, p0, Lcom/android/systemui/qs/QSFragment;->mQsExpanded:Z

    invoke-virtual {p1, v0, p0}, Lcom/android/systemui/qs/QSPanel;->setListening(ZZ)V

    return-void
.end method

.method public setOverscrolling(Z)V
    .locals 0

    .line 337
    iput-boolean p1, p0, Lcom/android/systemui/qs/QSFragment;->mStackScrollerOverscrolling:Z

    .line 338
    invoke-direct {p0}, Lcom/android/systemui/qs/QSFragment;->updateQsState()V

    return-void
.end method

.method public setPanelView(Lcom/android/systemui/plugins/qs/QS$HeightListener;)V
    .locals 0

    .line 187
    iput-object p1, p0, Lcom/android/systemui/qs/QSFragment;->mPanelView:Lcom/android/systemui/plugins/qs/QS$HeightListener;

    return-void
.end method

.method public setQsExpansion(FF)V
    .locals 6

    .line 359
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mContainer:Lcom/android/systemui/qs/QSContainerImpl;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/QSContainerImpl;->setExpansion(F)V

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float v1, p1, v0

    .line 361
    invoke-direct {p0}, Lcom/android/systemui/qs/QSFragment;->isKeyguardShowing()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/systemui/qs/QSFragment;->mShowCollapsedOnKeyguard:Z

    if-nez v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v4

    .line 362
    :goto_0
    iget-boolean v5, p0, Lcom/android/systemui/qs/QSFragment;->mHeaderAnimating:Z

    if-nez v5, :cond_2

    invoke-direct {p0}, Lcom/android/systemui/qs/QSFragment;->headerWillBeAnimating()Z

    move-result v5

    if-nez v5, :cond_2

    .line 363
    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v5

    if-eqz v2, :cond_1

    .line 365
    iget-object p2, p0, Lcom/android/systemui/qs/QSFragment;->mHeader:Lcom/android/systemui/qs/QuickStatusBarHeader;

    invoke-virtual {p2}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result p2

    int-to-float p2, p2

    mul-float/2addr p2, v1

    .line 363
    :cond_1
    invoke-virtual {v5, p2}, Landroid/view/View;->setTranslationY(F)V

    .line 368
    :cond_2
    iget p2, p0, Lcom/android/systemui/qs/QSFragment;->mLastQSExpansion:F

    cmpl-float p2, p1, p2

    if-nez p2, :cond_3

    iget-boolean p2, p0, Lcom/android/systemui/qs/QSFragment;->mLastKeyguardAndExpanded:Z

    if-ne p2, v2, :cond_3

    return-void

    .line 371
    :cond_3
    iput p1, p0, Lcom/android/systemui/qs/QSFragment;->mLastQSExpansion:F

    .line 372
    iput-boolean v2, p0, Lcom/android/systemui/qs/QSFragment;->mLastKeyguardAndExpanded:Z

    cmpl-float p2, p1, v0

    if-nez p2, :cond_4

    goto :goto_1

    :cond_4
    move v3, v4

    .line 375
    :goto_1
    iget-object p2, p0, Lcom/android/systemui/qs/QSFragment;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getBottom()I

    move-result p2

    iget-object v4, p0, Lcom/android/systemui/qs/QSFragment;->mHeader:Lcom/android/systemui/qs/QuickStatusBarHeader;

    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->getBottom()I

    move-result v4

    sub-int/2addr p2, v4

    iget-object v4, p0, Lcom/android/systemui/qs/QSFragment;->mHeader:Lcom/android/systemui/qs/QuickStatusBarHeader;

    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->getPaddingBottom()I

    move-result v4

    add-int/2addr p2, v4

    iget-object v4, p0, Lcom/android/systemui/qs/QSFragment;->mFooter:Lcom/android/systemui/qs/QSFooter;

    .line 376
    invoke-interface {v4}, Lcom/android/systemui/qs/QSFooter;->getHeight()I

    move-result v4

    add-int/2addr p2, v4

    int-to-float p2, p2

    mul-float/2addr v1, p2

    .line 380
    iget-object p2, p0, Lcom/android/systemui/qs/QSFragment;->mHeader:Lcom/android/systemui/qs/QuickStatusBarHeader;

    invoke-virtual {p2, v2, p1, v1}, Lcom/android/systemui/qs/QuickStatusBarHeader;->setExpansion(ZFF)V

    .line 382
    iget-object p2, p0, Lcom/android/systemui/qs/QSFragment;->mFooter:Lcom/android/systemui/qs/QSFooter;

    if-eqz v2, :cond_5

    goto :goto_2

    :cond_5
    move v0, p1

    :goto_2
    invoke-interface {p2, v0}, Lcom/android/systemui/qs/QSFooter;->setExpansion(F)V

    .line 383
    iget-object p2, p0, Lcom/android/systemui/qs/QSFragment;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {p2}, Lcom/android/systemui/qs/QSPanel;->getQsTileRevealController()Lcom/android/systemui/qs/QSTileRevealController;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/android/systemui/qs/QSTileRevealController;->setExpansion(F)V

    .line 384
    iget-object p2, p0, Lcom/android/systemui/qs/QSFragment;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {p2}, Lcom/android/systemui/qs/QSPanel;->getTileLayout()Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/android/systemui/qs/QSPanel$QSTileLayout;->setExpansion(F)V

    .line 385
    iget-object p2, p0, Lcom/android/systemui/qs/QSFragment;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {p2, v1}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    .line 386
    iget-object p2, p0, Lcom/android/systemui/qs/QSFragment;->mQSDetail:Lcom/android/systemui/qs/QSDetail;

    invoke-virtual {p2, v3}, Lcom/android/systemui/qs/QSDetail;->setFullyExpanded(Z)V

    if-eqz v3, :cond_6

    .line 390
    iget-object p2, p0, Lcom/android/systemui/qs/QSFragment;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setClipBounds(Landroid/graphics/Rect;)V

    goto :goto_3

    .line 393
    :cond_6
    iget-object p2, p0, Lcom/android/systemui/qs/QSFragment;->mQsBounds:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getTranslationY()F

    move-result v0

    neg-float v0, v0

    float-to-int v0, v0

    iput v0, p2, Landroid/graphics/Rect;->top:I

    .line 394
    iget-object p2, p0, Lcom/android/systemui/qs/QSFragment;->mQsBounds:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v0

    iput v0, p2, Landroid/graphics/Rect;->right:I

    .line 395
    iget-object p2, p0, Lcom/android/systemui/qs/QSFragment;->mQsBounds:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v0

    iput v0, p2, Landroid/graphics/Rect;->bottom:I

    .line 396
    iget-object p2, p0, Lcom/android/systemui/qs/QSFragment;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQsBounds:Landroid/graphics/Rect;

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setClipBounds(Landroid/graphics/Rect;)V

    .line 399
    :goto_3
    iget-object p0, p0, Lcom/android/systemui/qs/QSFragment;->mQSAnimator:Lcom/android/systemui/qs/QSAnimator;

    if-eqz p0, :cond_7

    .line 400
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/QSAnimator;->setPosition(F)V

    :cond_7
    return-void
.end method

.method public setShowCollapsedOnKeyguard(Z)V
    .locals 1

    .line 279
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSFragment;->mShowCollapsedOnKeyguard:Z

    if-eq p1, v0, :cond_1

    .line 280
    iput-boolean p1, p0, Lcom/android/systemui/qs/QSFragment;->mShowCollapsedOnKeyguard:Z

    .line 281
    invoke-direct {p0}, Lcom/android/systemui/qs/QSFragment;->updateQsState()V

    .line 282
    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment;->mQSAnimator:Lcom/android/systemui/qs/QSAnimator;

    if-eqz v0, :cond_0

    .line 283
    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/QSAnimator;->setShowCollapsedOnKeyguard(Z)V

    :cond_0
    if-nez p1, :cond_1

    .line 285
    invoke-direct {p0}, Lcom/android/systemui/qs/QSFragment;->isKeyguardShowing()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 286
    iget p1, p0, Lcom/android/systemui/qs/QSFragment;->mLastQSExpansion:F

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/qs/QSFragment;->setQsExpansion(FF)V

    :cond_1
    return-void
.end method
