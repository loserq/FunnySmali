.class public Lcom/android/systemui/HardwareUiLayout;
.super Lcom/android/systemui/MultiListLayout;
.source "HardwareUiLayout.java"

# interfaces
.implements Lcom/android/systemui/tuner/TunerService$Tunable;


# instance fields
.field private mAnimator:Landroid/animation/Animator;

.field private mCollapse:Z

.field private mDivision:Landroid/view/View;

.field private mEdgeBleed:Z

.field private mEndPoint:I

.field private final mInsetsListener:Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

.field private mList:Landroid/view/ViewGroup;

.field private mListBackground:Lcom/android/systemui/HardwareBgDrawable;

.field private mOldHeight:I

.field private mRotatedBackground:Z

.field private mRoundedDivider:Z

.field private mSeparatedView:Landroid/view/ViewGroup;

.field private mSeparatedViewBackground:Lcom/android/systemui/HardwareBgDrawable;

.field private mSwapOrientation:Z

.field private final mTmp2:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 65
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/MultiListLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x2

    new-array p1, p1, [I

    .line 47
    iput-object p1, p0, Lcom/android/systemui/HardwareUiLayout;->mTmp2:[I

    const/4 p1, 0x1

    .line 62
    iput-boolean p1, p0, Lcom/android/systemui/HardwareUiLayout;->mSwapOrientation:Z

    .line 535
    new-instance p1, Lcom/android/systemui/-$$Lambda$HardwareUiLayout$Wopid983i_OFN_0DzaqL8EnwZHc;

    invoke-direct {p1, p0}, Lcom/android/systemui/-$$Lambda$HardwareUiLayout$Wopid983i_OFN_0DzaqL8EnwZHc;-><init>(Lcom/android/systemui/HardwareUiLayout;)V

    iput-object p1, p0, Lcom/android/systemui/HardwareUiLayout;->mInsetsListener:Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

    const/4 p1, 0x0

    .line 68
    iput p1, p0, Lcom/android/systemui/MultiListLayout;->mRotation:I

    .line 69
    invoke-direct {p0}, Lcom/android/systemui/HardwareUiLayout;->updateSettings()V

    return-void
.end method

.method private animateChild(II)V
    .locals 0

    return-void
.end method

.method private getAnimationDistance()F
    .locals 1

    .line 548
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/systemui/R$dimen;->global_actions_panel_width:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p0, v0

    return p0
.end method

.method private getEdgePadding()I
    .locals 1

    .line 146
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/systemui/R$dimen;->edge_margin:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method

.method private rotateGravityLeft(I)I
    .locals 4

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const p1, 0x800033

    .line 342
    :cond_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getLayoutDirection()I

    move-result p0

    .line 343
    invoke-static {p1, p0}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result p0

    and-int/lit8 p1, p1, 0x70

    and-int/lit8 p0, p0, 0x7

    const/16 v0, 0x10

    const/16 v1, 0x50

    const/4 v2, 0x5

    const/4 v3, 0x1

    if-eq p0, v3, :cond_2

    if-eq p0, v2, :cond_1

    move p0, v1

    goto :goto_0

    :cond_1
    const/16 p0, 0x30

    goto :goto_0

    :cond_2
    move p0, v0

    :goto_0
    if-eq p1, v0, :cond_4

    if-eq p1, v1, :cond_3

    or-int/lit8 p0, p0, 0x3

    goto :goto_1

    :cond_3
    or-int/2addr p0, v2

    goto :goto_1

    :cond_4
    or-int/2addr p0, v3

    :goto_1
    return p0
.end method

.method private rotateGravityRight(I)I
    .locals 4

    .line 289
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getLayoutDirection()I

    move-result p0

    .line 290
    invoke-static {p1, p0}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result p0

    and-int/lit8 p1, p1, 0x70

    and-int/lit8 p0, p0, 0x7

    const/16 v0, 0x50

    const/16 v1, 0x10

    const/4 v2, 0x5

    const/4 v3, 0x1

    if-eq p0, v3, :cond_1

    if-eq p0, v2, :cond_0

    const/16 p0, 0x30

    goto :goto_0

    :cond_0
    move p0, v0

    goto :goto_0

    :cond_1
    move p0, v1

    :goto_0
    if-eq p1, v1, :cond_3

    if-eq p1, v0, :cond_2

    or-int/2addr p0, v2

    goto :goto_1

    :cond_2
    or-int/lit8 p0, p0, 0x3

    goto :goto_1

    :cond_3
    or-int/2addr p0, v3

    :goto_1
    return p0
.end method

.method private rotateLeft()V
    .locals 2

    .line 322
    invoke-direct {p0, p0}, Lcom/android/systemui/HardwareUiLayout;->rotateLeft(Landroid/view/View;)V

    .line 323
    iget-object v0, p0, Lcom/android/systemui/HardwareUiLayout;->mList:Landroid/view/ViewGroup;

    invoke-direct {p0, v0}, Lcom/android/systemui/HardwareUiLayout;->rotateLeft(Landroid/view/View;)V

    .line 324
    invoke-direct {p0, p0}, Lcom/android/systemui/HardwareUiLayout;->swapDimens(Landroid/view/View;)V

    .line 326
    iget-object v0, p0, Lcom/android/systemui/HardwareUiLayout;->mList:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 327
    iget v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    invoke-direct {p0, v1}, Lcom/android/systemui/HardwareUiLayout;->rotateGravityLeft(I)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 328
    iget-object v1, p0, Lcom/android/systemui/HardwareUiLayout;->mList:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 330
    iget-object v0, p0, Lcom/android/systemui/HardwareUiLayout;->mSeparatedView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 331
    iget v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    invoke-direct {p0, v1}, Lcom/android/systemui/HardwareUiLayout;->rotateGravityLeft(I)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 332
    iget-object v1, p0, Lcom/android/systemui/HardwareUiLayout;->mSeparatedView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 334
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getGravity()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/HardwareUiLayout;->rotateGravityLeft(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    return-void
.end method

.method private rotateLeft(Landroid/view/View;)V
    .locals 4

    .line 375
    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result p0

    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    .line 376
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    .line 375
    invoke-virtual {p1, p0, v0, v1, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 377
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 378
    iget v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget v2, p0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iget v3, p0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 380
    invoke-virtual {p1, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private rotateRight()V
    .locals 2

    .line 264
    invoke-direct {p0, p0}, Lcom/android/systemui/HardwareUiLayout;->rotateRight(Landroid/view/View;)V

    .line 265
    iget-object v0, p0, Lcom/android/systemui/HardwareUiLayout;->mList:Landroid/view/ViewGroup;

    invoke-direct {p0, v0}, Lcom/android/systemui/HardwareUiLayout;->rotateRight(Landroid/view/View;)V

    .line 266
    invoke-direct {p0, p0}, Lcom/android/systemui/HardwareUiLayout;->swapDimens(Landroid/view/View;)V

    .line 268
    iget-object v0, p0, Lcom/android/systemui/HardwareUiLayout;->mList:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 269
    iget v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    invoke-direct {p0, v1}, Lcom/android/systemui/HardwareUiLayout;->rotateGravityRight(I)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 270
    iget-object v1, p0, Lcom/android/systemui/HardwareUiLayout;->mList:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 272
    iget-object v0, p0, Lcom/android/systemui/HardwareUiLayout;->mSeparatedView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 273
    iget v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    invoke-direct {p0, v1}, Lcom/android/systemui/HardwareUiLayout;->rotateGravityRight(I)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 274
    iget-object v1, p0, Lcom/android/systemui/HardwareUiLayout;->mSeparatedView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 276
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getGravity()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/HardwareUiLayout;->rotateGravityRight(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    return-void
.end method

.method private rotateRight(Landroid/view/View;)V
    .locals 4

    .line 384
    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result p0

    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    .line 385
    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    .line 384
    invoke-virtual {p1, p0, v0, v1, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 386
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 387
    iget v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iget v1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v2, p0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v3, p0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 389
    invoke-virtual {p1, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private setCutPoint(I)V
    .locals 4

    .line 464
    iget-object v0, p0, Lcom/android/systemui/HardwareUiLayout;->mListBackground:Lcom/android/systemui/HardwareBgDrawable;

    invoke-virtual {v0}, Lcom/android/systemui/HardwareBgDrawable;->getCutPoint()I

    move-result v0

    if-ne v0, p1, :cond_0

    return-void

    .line 466
    :cond_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getAlpha()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_5

    if-nez v0, :cond_1

    goto :goto_0

    .line 470
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/HardwareUiLayout;->mAnimator:Landroid/animation/Animator;

    if-eqz v1, :cond_3

    .line 471
    iget v2, p0, Lcom/android/systemui/HardwareUiLayout;->mEndPoint:I

    if-ne v2, p1, :cond_2

    return-void

    .line 474
    :cond_2
    invoke-virtual {v1}, Landroid/animation/Animator;->cancel()V

    .line 476
    :cond_3
    iput p1, p0, Lcom/android/systemui/HardwareUiLayout;->mEndPoint:I

    .line 477
    iget-object v1, p0, Lcom/android/systemui/HardwareUiLayout;->mListBackground:Lcom/android/systemui/HardwareBgDrawable;

    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x0

    aput v0, v2, v3

    const/4 v0, 0x1

    aput p1, v2, v0

    const-string p1, "cutPoint"

    invoke-static {v1, p1, v2}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/HardwareUiLayout;->mAnimator:Landroid/animation/Animator;

    .line 478
    iget-boolean p1, p0, Lcom/android/systemui/HardwareUiLayout;->mCollapse:Z

    if-eqz p1, :cond_4

    .line 479
    iget-object p1, p0, Lcom/android/systemui/HardwareUiLayout;->mAnimator:Landroid/animation/Animator;

    const-wide/16 v0, 0x12c

    invoke-virtual {p1, v0, v1}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 480
    iput-boolean v3, p0, Lcom/android/systemui/HardwareUiLayout;->mCollapse:Z

    .line 482
    :cond_4
    iget-object p0, p0, Lcom/android/systemui/HardwareUiLayout;->mAnimator:Landroid/animation/Animator;

    invoke-virtual {p0}, Landroid/animation/Animator;->start()V

    return-void

    .line 467
    :cond_5
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/HardwareUiLayout;->mListBackground:Lcom/android/systemui/HardwareBgDrawable;

    invoke-virtual {p0, p1}, Lcom/android/systemui/HardwareBgDrawable;->setCutPoint(I)V

    return-void
.end method

.method private swapDimens(Landroid/view/View;)V
    .locals 2

    .line 280
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    .line 281
    iget v0, p0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 282
    iget v1, p0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v1, p0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 283
    iput v0, p0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 284
    invoke-virtual {p1, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private swapLeftAndTop(Landroid/view/View;)V
    .locals 4

    .line 393
    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result p0

    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    .line 394
    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    .line 393
    invoke-virtual {p1, p0, v0, v1, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 395
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 396
    iget v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v2, p0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iget v3, p0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 398
    invoke-virtual {p1, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private updateEdgeMargin(I)V
    .locals 4

    .line 119
    iget-object v0, p0, Lcom/android/systemui/HardwareUiLayout;->mList:Landroid/view/ViewGroup;

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 120
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 121
    iget v3, p0, Lcom/android/systemui/MultiListLayout;->mRotation:I

    if-ne v3, v2, :cond_0

    .line 122
    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_0

    :cond_0
    if-ne v3, v1, :cond_1

    .line 124
    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    goto :goto_0

    .line 126
    :cond_1
    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 127
    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 129
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/HardwareUiLayout;->mList:Landroid/view/ViewGroup;

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 132
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/HardwareUiLayout;->mSeparatedView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_5

    .line 133
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 134
    iget v3, p0, Lcom/android/systemui/MultiListLayout;->mRotation:I

    if-ne v3, v2, :cond_3

    .line 135
    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_1

    :cond_3
    if-ne v3, v1, :cond_4

    .line 137
    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    goto :goto_1

    .line 139
    :cond_4
    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 141
    :goto_1
    iget-object p0, p0, Lcom/android/systemui/HardwareUiLayout;->mSeparatedView:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_5
    return-void
.end method

.method private updatePaddingAndGravityIfTooTall()V
    .locals 6

    .line 494
    iget-object v0, p0, Lcom/android/systemui/MultiListLayout;->mAdapter:Lcom/android/systemui/MultiListLayout$MultiListAdapter;

    invoke-virtual {v0}, Lcom/android/systemui/MultiListLayout$MultiListAdapter;->hasSeparatedItems()Z

    move-result v0

    .line 495
    iget-object v1, p0, Lcom/android/systemui/HardwareUiLayout;->mSeparatedView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 496
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/systemui/util/leak/RotationUtils;->getRotation(Landroid/content/Context;)I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq v2, v3, :cond_3

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    .line 512
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v2

    .line 513
    iget-object v3, p0, Lcom/android/systemui/HardwareUiLayout;->mList:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v3

    iget-object v5, p0, Lcom/android/systemui/HardwareUiLayout;->mSeparatedView:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v3, v5

    if-eqz v0, :cond_0

    .line 514
    iget v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_0

    :cond_0
    move v0, v4

    .line 515
    :goto_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v1

    const/16 v5, 0x15

    goto :goto_3

    .line 505
    :cond_1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result v2

    .line 506
    iget-object v3, p0, Lcom/android/systemui/HardwareUiLayout;->mList:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v3

    iget-object v5, p0, Lcom/android/systemui/HardwareUiLayout;->mSeparatedView:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v5

    add-int/2addr v3, v5

    if-eqz v0, :cond_2

    .line 507
    iget v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto :goto_1

    :cond_2
    move v0, v4

    .line 508
    :goto_1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v1

    const/16 v5, 0x51

    goto :goto_3

    .line 498
    :cond_3
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v2

    .line 499
    iget-object v3, p0, Lcom/android/systemui/HardwareUiLayout;->mList:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v3

    iget-object v5, p0, Lcom/android/systemui/HardwareUiLayout;->mSeparatedView:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v5

    add-int/2addr v3, v5

    if-eqz v0, :cond_4

    .line 500
    iget v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto :goto_2

    :cond_4
    move v0, v4

    .line 501
    :goto_2
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v1

    const/16 v5, 0x31

    :goto_3
    add-int/2addr v2, v3

    add-int/2addr v2, v0

    if-lt v2, v1, :cond_5

    .line 521
    invoke-virtual {p0, v4, v4, v4, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 522
    invoke-virtual {p0, v5}, Landroid/widget/LinearLayout;->setGravity(I)V

    :cond_5
    return-void
.end method

.method private updatePosition()V
    .locals 4

    .line 443
    iget-object v0, p0, Lcom/android/systemui/HardwareUiLayout;->mList:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    return-void

    .line 446
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/MultiListLayout;->mAdapter:Lcom/android/systemui/MultiListLayout$MultiListAdapter;

    invoke-virtual {v0}, Lcom/android/systemui/MultiListLayout$MultiListAdapter;->hasSeparatedItems()Z

    move-result v0

    .line 447
    iget-object v1, p0, Lcom/android/systemui/HardwareUiLayout;->mListBackground:Lcom/android/systemui/HardwareBgDrawable;

    invoke-virtual {v1, v0}, Lcom/android/systemui/HardwareBgDrawable;->setRotatedBackground(Z)V

    .line 448
    iget-object v1, p0, Lcom/android/systemui/HardwareUiLayout;->mSeparatedViewBackground:Lcom/android/systemui/HardwareBgDrawable;

    invoke-virtual {v1, v0}, Lcom/android/systemui/HardwareBgDrawable;->setRotatedBackground(Z)V

    .line 449
    iget-object v0, p0, Lcom/android/systemui/HardwareUiLayout;->mDivision:Landroid/view/View;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 450
    iget-boolean v0, p0, Lcom/android/systemui/HardwareUiLayout;->mRotatedBackground:Z

    xor-int/lit8 v0, v0, 0x1

    .line 451
    iget-object v1, p0, Lcom/android/systemui/HardwareUiLayout;->mDivision:Landroid/view/View;

    iget-object v2, p0, Lcom/android/systemui/HardwareUiLayout;->mTmp2:[I

    invoke-virtual {v1, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 452
    iget-boolean v1, p0, Lcom/android/systemui/HardwareUiLayout;->mRotatedBackground:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/HardwareUiLayout;->mDivision:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTranslationX()F

    move-result v1

    goto :goto_0

    .line 453
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/HardwareUiLayout;->mDivision:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTranslationY()F

    move-result v1

    .line 454
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/HardwareUiLayout;->mTmp2:[I

    aget v3, v2, v0

    int-to-float v3, v3

    add-float/2addr v3, v1

    float-to-int v1, v3

    .line 455
    iget-object v3, p0, Lcom/android/systemui/HardwareUiLayout;->mList:Landroid/view/ViewGroup;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    .line 456
    iget-object v2, p0, Lcom/android/systemui/HardwareUiLayout;->mTmp2:[I

    aget v0, v2, v0

    sub-int/2addr v1, v0

    .line 457
    invoke-direct {p0, v1}, Lcom/android/systemui/HardwareUiLayout;->setCutPoint(I)V

    goto :goto_1

    .line 459
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/HardwareUiLayout;->mList:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/HardwareUiLayout;->setCutPoint(I)V

    :goto_1
    return-void
.end method

.method private updateRotation()V
    .locals 2

    .line 182
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/util/leak/RotationUtils;->getRotation(Landroid/content/Context;)I

    move-result v0

    .line 183
    iget v1, p0, Lcom/android/systemui/MultiListLayout;->mRotation:I

    if-eq v0, v1, :cond_0

    .line 184
    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/HardwareUiLayout;->rotate(II)V

    .line 185
    iput v0, p0, Lcom/android/systemui/MultiListLayout;->mRotation:I

    :cond_0
    return-void
.end method

.method private updateSettings()V
    .locals 5

    .line 103
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "sysui_hwui_edge_bleed"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/HardwareUiLayout;->mEdgeBleed:Z

    .line 105
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "sysui_hwui_rounded_divider"

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/android/systemui/HardwareUiLayout;->mRoundedDivider:Z

    .line 107
    iget-boolean v0, p0, Lcom/android/systemui/HardwareUiLayout;->mEdgeBleed:Z

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/HardwareUiLayout;->getEdgePadding()I

    move-result v1

    :goto_2
    invoke-direct {p0, v1}, Lcom/android/systemui/HardwareUiLayout;->updateEdgeMargin(I)V

    .line 108
    new-instance v0, Lcom/android/systemui/HardwareBgDrawable;

    iget-boolean v1, p0, Lcom/android/systemui/HardwareUiLayout;->mRoundedDivider:Z

    iget-boolean v3, p0, Lcom/android/systemui/HardwareUiLayout;->mEdgeBleed:Z

    xor-int/2addr v3, v2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v0, v1, v3, v4}, Lcom/android/systemui/HardwareBgDrawable;-><init>(ZZLandroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/HardwareUiLayout;->mListBackground:Lcom/android/systemui/HardwareBgDrawable;

    .line 109
    new-instance v0, Lcom/android/systemui/HardwareBgDrawable;

    iget-boolean v1, p0, Lcom/android/systemui/HardwareUiLayout;->mRoundedDivider:Z

    iget-boolean v3, p0, Lcom/android/systemui/HardwareUiLayout;->mEdgeBleed:Z

    xor-int/2addr v2, v3

    .line 110
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/HardwareBgDrawable;-><init>(ZZLandroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/HardwareUiLayout;->mSeparatedViewBackground:Lcom/android/systemui/HardwareBgDrawable;

    .line 111
    iget-object v0, p0, Lcom/android/systemui/HardwareUiLayout;->mList:Landroid/view/ViewGroup;

    if-eqz v0, :cond_3

    .line 112
    iget-object v1, p0, Lcom/android/systemui/HardwareUiLayout;->mListBackground:Lcom/android/systemui/HardwareBgDrawable;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 113
    iget-object v0, p0, Lcom/android/systemui/HardwareUiLayout;->mSeparatedView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/systemui/HardwareUiLayout;->mSeparatedViewBackground:Lcom/android/systemui/HardwareBgDrawable;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 114
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    :cond_3
    return-void
.end method


# virtual methods
.method public getAnimationOffsetX()F
    .locals 1

    .line 554
    iget-object v0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/util/leak/RotationUtils;->getRotation(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_0

    .line 555
    invoke-direct {p0}, Lcom/android/systemui/HardwareUiLayout;->getAnimationDistance()F

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getAnimationOffsetY()F
    .locals 2

    .line 562
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/util/leak/RotationUtils;->getRotation(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 566
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/HardwareUiLayout;->getAnimationDistance()F

    move-result p0

    return p0

    .line 564
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/HardwareUiLayout;->getAnimationDistance()F

    move-result p0

    neg-float p0, p0

    return p0
.end method

.method protected getListView()Landroid/view/ViewGroup;
    .locals 1

    const v0, 0x102000a

    .line 79
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    return-object p0
.end method

.method public getOutlineProvider()Landroid/view/ViewOutlineProvider;
    .locals 0

    .line 528
    invoke-super {p0}, Landroid/widget/LinearLayout;->getOutlineProvider()Landroid/view/ViewOutlineProvider;

    move-result-object p0

    return-object p0
.end method

.method protected getSeparatedView()Landroid/view/ViewGroup;
    .locals 1

    .line 74
    sget v0, Lcom/android/systemui/R$id;->separated_button:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    return-object p0
.end method

.method public synthetic lambda$new$5$HardwareUiLayout(Landroid/view/ViewTreeObserver$InternalInsetsInfo;)V
    .locals 4

    .line 536
    iget-boolean v0, p0, Lcom/android/systemui/MultiListLayout;->mHasOutsideTouch:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/HardwareUiLayout;->mList:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 541
    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->setTouchableInsets(I)V

    .line 543
    iget-object p1, p1, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->contentInsets:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/android/systemui/HardwareUiLayout;->mList:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLeft()I

    move-result v0

    iget-object v2, p0, Lcom/android/systemui/HardwareUiLayout;->mList:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getTop()I

    move-result v2

    .line 544
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getBottom()I

    move-result v3

    iget-object p0, p0, Lcom/android/systemui/HardwareUiLayout;->mList:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getBottom()I

    move-result p0

    sub-int/2addr v3, p0

    .line 543
    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/graphics/Rect;->set(IIII)V

    return-void

    .line 537
    :cond_1
    :goto_0
    invoke-virtual {p1, v1}, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->setTouchableInsets(I)V

    return-void
.end method

.method public synthetic lambda$onLayout$2$HardwareUiLayout()V
    .locals 0

    .line 405
    invoke-direct {p0}, Lcom/android/systemui/HardwareUiLayout;->updatePosition()V

    return-void
.end method

.method public synthetic lambda$onMeasure$0$HardwareUiLayout()V
    .locals 0

    .line 173
    invoke-direct {p0}, Lcom/android/systemui/HardwareUiLayout;->updatePaddingAndGravityIfTooTall()V

    return-void
.end method

.method public synthetic lambda$onMeasure$1$HardwareUiLayout()V
    .locals 0

    .line 174
    invoke-direct {p0}, Lcom/android/systemui/HardwareUiLayout;->updatePosition()V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .line 84
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 85
    invoke-direct {p0}, Lcom/android/systemui/HardwareUiLayout;->updateSettings()V

    .line 86
    const-class v0, Lcom/android/systemui/tuner/TunerService;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/tuner/TunerService;

    const-string v1, "sysui_hwui_edge_bleed"

    const-string v2, "sysui_hwui_rounded_divider"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/tuner/TunerService;->addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;[Ljava/lang/String;)V

    .line 87
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/HardwareUiLayout;->mInsetsListener:Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnComputeInternalInsetsListener(Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 92
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 93
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/HardwareUiLayout;->mInsetsListener:Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnComputeInternalInsetsListener(Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;)V

    .line 94
    const-class v0, Lcom/android/systemui/tuner/TunerService;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/tuner/TunerService;

    invoke-virtual {v0, p0}, Lcom/android/systemui/tuner/TunerService;->removeTunable(Lcom/android/systemui/tuner/TunerService$Tunable;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 403
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 405
    new-instance p1, Lcom/android/systemui/-$$Lambda$HardwareUiLayout$cC2d-RGmOoAkRlNqsTu1n43qy3A;

    invoke-direct {p1, p0}, Lcom/android/systemui/-$$Lambda$HardwareUiLayout$cC2d-RGmOoAkRlNqsTu1n43qy3A;-><init>(Lcom/android/systemui/HardwareUiLayout;)V

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 151
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 152
    iget-object p1, p0, Lcom/android/systemui/HardwareUiLayout;->mList:Landroid/view/ViewGroup;

    if-nez p1, :cond_2

    .line 153
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result p1

    if-eqz p1, :cond_1

    .line 154
    invoke-virtual {p0}, Lcom/android/systemui/HardwareUiLayout;->getListView()Landroid/view/ViewGroup;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/HardwareUiLayout;->mList:Landroid/view/ViewGroup;

    .line 155
    iget-object p1, p0, Lcom/android/systemui/HardwareUiLayout;->mList:Landroid/view/ViewGroup;

    iget-object p2, p0, Lcom/android/systemui/HardwareUiLayout;->mListBackground:Lcom/android/systemui/HardwareBgDrawable;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 156
    invoke-virtual {p0}, Lcom/android/systemui/HardwareUiLayout;->getSeparatedView()Landroid/view/ViewGroup;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/HardwareUiLayout;->mSeparatedView:Landroid/view/ViewGroup;

    .line 157
    iget-object p1, p0, Lcom/android/systemui/HardwareUiLayout;->mSeparatedView:Landroid/view/ViewGroup;

    iget-object p2, p0, Lcom/android/systemui/HardwareUiLayout;->mSeparatedViewBackground:Lcom/android/systemui/HardwareBgDrawable;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 158
    iget-boolean p1, p0, Lcom/android/systemui/HardwareUiLayout;->mEdgeBleed:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/HardwareUiLayout;->getEdgePadding()I

    move-result p1

    :goto_0
    invoke-direct {p0, p1}, Lcom/android/systemui/HardwareUiLayout;->updateEdgeMargin(I)V

    .line 159
    iget-object p1, p0, Lcom/android/systemui/HardwareUiLayout;->mList:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result p1

    iput p1, p0, Lcom/android/systemui/HardwareUiLayout;->mOldHeight:I

    .line 163
    invoke-direct {p0}, Lcom/android/systemui/HardwareUiLayout;->updateRotation()V

    goto :goto_1

    :cond_1
    return-void

    .line 168
    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/android/systemui/HardwareUiLayout;->mList:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result p1

    .line 169
    iget p2, p0, Lcom/android/systemui/HardwareUiLayout;->mOldHeight:I

    if-eq p1, p2, :cond_3

    .line 170
    invoke-direct {p0, p2, p1}, Lcom/android/systemui/HardwareUiLayout;->animateChild(II)V

    .line 173
    :cond_3
    new-instance p1, Lcom/android/systemui/-$$Lambda$HardwareUiLayout$e7QpWmSxwKfxOfM1Q3hNoq7i9r0;

    invoke-direct {p1, p0}, Lcom/android/systemui/-$$Lambda$HardwareUiLayout$e7QpWmSxwKfxOfM1Q3hNoq7i9r0;-><init>(Lcom/android/systemui/HardwareUiLayout;)V

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    .line 174
    new-instance p1, Lcom/android/systemui/-$$Lambda$HardwareUiLayout$zQ_qVVlFo_33izIMpEk2X8p8Su8;

    invoke-direct {p1, p0}, Lcom/android/systemui/-$$Lambda$HardwareUiLayout$zQ_qVVlFo_33izIMpEk2X8p8Su8;-><init>(Lcom/android/systemui/HardwareUiLayout;)V

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 99
    invoke-direct {p0}, Lcom/android/systemui/HardwareUiLayout;->updateSettings()V

    return-void
.end method

.method public onUpdateList()V
    .locals 4

    .line 248
    invoke-super {p0}, Lcom/android/systemui/MultiListLayout;->onUpdateList()V

    const/4 v0, 0x0

    .line 250
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/MultiListLayout;->mAdapter:Lcom/android/systemui/MultiListLayout$MultiListAdapter;

    invoke-virtual {v1}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 252
    iget-object v1, p0, Lcom/android/systemui/MultiListLayout;->mAdapter:Lcom/android/systemui/MultiListLayout$MultiListAdapter;

    invoke-virtual {v1, v0}, Lcom/android/systemui/MultiListLayout$MultiListAdapter;->shouldBeSeparated(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 254
    invoke-virtual {p0}, Lcom/android/systemui/HardwareUiLayout;->getSeparatedView()Landroid/view/ViewGroup;

    move-result-object v1

    goto :goto_1

    .line 256
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/HardwareUiLayout;->getListView()Landroid/view/ViewGroup;

    move-result-object v1

    .line 258
    :goto_1
    iget-object v2, p0, Lcom/android/systemui/MultiListLayout;->mAdapter:Lcom/android/systemui/MultiListLayout$MultiListAdapter;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3, v1}, Landroid/widget/BaseAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 259
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected rotate(II)V
    .locals 4

    .line 194
    invoke-super {p0, p1, p2}, Lcom/android/systemui/MultiListLayout;->rotate(II)V

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 197
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/HardwareUiLayout;->rotate(II)V

    .line 198
    invoke-virtual {p0, v0, p2}, Lcom/android/systemui/HardwareUiLayout;->rotate(II)V

    return-void

    :cond_0
    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq p1, v2, :cond_2

    if-ne p2, v1, :cond_1

    goto :goto_0

    .line 204
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/HardwareUiLayout;->rotateLeft()V

    goto :goto_1

    .line 202
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/HardwareUiLayout;->rotateRight()V

    .line 206
    :goto_1
    iget-object v3, p0, Lcom/android/systemui/MultiListLayout;->mAdapter:Lcom/android/systemui/MultiListLayout$MultiListAdapter;

    invoke-virtual {v3}, Lcom/android/systemui/MultiListLayout$MultiListAdapter;->hasSeparatedItems()Z

    move-result v3

    if-eqz v3, :cond_6

    if-eq p1, v1, :cond_5

    if-ne p2, v1, :cond_3

    goto :goto_2

    :cond_3
    if-ne p1, v2, :cond_4

    .line 212
    iget-object p1, p0, Lcom/android/systemui/HardwareUiLayout;->mSeparatedView:Landroid/view/ViewGroup;

    invoke-direct {p0, p1}, Lcom/android/systemui/HardwareUiLayout;->rotateRight(Landroid/view/View;)V

    goto :goto_3

    .line 214
    :cond_4
    iget-object p1, p0, Lcom/android/systemui/HardwareUiLayout;->mSeparatedView:Landroid/view/ViewGroup;

    invoke-direct {p0, p1}, Lcom/android/systemui/HardwareUiLayout;->rotateLeft(Landroid/view/View;)V

    goto :goto_3

    .line 210
    :cond_5
    :goto_2
    iget-object p1, p0, Lcom/android/systemui/HardwareUiLayout;->mSeparatedView:Landroid/view/ViewGroup;

    invoke-direct {p0, p1}, Lcom/android/systemui/HardwareUiLayout;->swapLeftAndTop(Landroid/view/View;)V

    :cond_6
    :goto_3
    if-eqz p2, :cond_8

    .line 218
    iget-object p1, p0, Lcom/android/systemui/HardwareUiLayout;->mList:Landroid/view/ViewGroup;

    instance-of p1, p1, Landroid/widget/LinearLayout;

    if-eqz p1, :cond_a

    .line 219
    iput-boolean v2, p0, Lcom/android/systemui/HardwareUiLayout;->mRotatedBackground:Z

    .line 220
    iget-object p1, p0, Lcom/android/systemui/HardwareUiLayout;->mListBackground:Lcom/android/systemui/HardwareBgDrawable;

    invoke-virtual {p1, v2}, Lcom/android/systemui/HardwareBgDrawable;->setRotatedBackground(Z)V

    .line 221
    iget-object p1, p0, Lcom/android/systemui/HardwareUiLayout;->mSeparatedViewBackground:Lcom/android/systemui/HardwareBgDrawable;

    invoke-virtual {p1, v2}, Lcom/android/systemui/HardwareBgDrawable;->setRotatedBackground(Z)V

    .line 222
    iget-object p1, p0, Lcom/android/systemui/HardwareUiLayout;->mList:Landroid/view/ViewGroup;

    check-cast p1, Landroid/widget/LinearLayout;

    .line 223
    iget-boolean p2, p0, Lcom/android/systemui/HardwareUiLayout;->mSwapOrientation:Z

    if-eqz p2, :cond_7

    .line 224
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 225
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 227
    :cond_7
    iget-object p1, p0, Lcom/android/systemui/HardwareUiLayout;->mList:Landroid/view/ViewGroup;

    invoke-direct {p0, p1}, Lcom/android/systemui/HardwareUiLayout;->swapDimens(Landroid/view/View;)V

    .line 228
    iget-object p1, p0, Lcom/android/systemui/HardwareUiLayout;->mSeparatedView:Landroid/view/ViewGroup;

    invoke-direct {p0, p1}, Lcom/android/systemui/HardwareUiLayout;->swapDimens(Landroid/view/View;)V

    goto :goto_4

    .line 231
    :cond_8
    iget-object p1, p0, Lcom/android/systemui/HardwareUiLayout;->mList:Landroid/view/ViewGroup;

    instance-of p1, p1, Landroid/widget/LinearLayout;

    if-eqz p1, :cond_a

    .line 232
    iput-boolean v0, p0, Lcom/android/systemui/HardwareUiLayout;->mRotatedBackground:Z

    .line 233
    iget-object p1, p0, Lcom/android/systemui/HardwareUiLayout;->mListBackground:Lcom/android/systemui/HardwareBgDrawable;

    invoke-virtual {p1, v0}, Lcom/android/systemui/HardwareBgDrawable;->setRotatedBackground(Z)V

    .line 234
    iget-object p1, p0, Lcom/android/systemui/HardwareUiLayout;->mSeparatedViewBackground:Lcom/android/systemui/HardwareBgDrawable;

    invoke-virtual {p1, v0}, Lcom/android/systemui/HardwareBgDrawable;->setRotatedBackground(Z)V

    .line 235
    iget-object p1, p0, Lcom/android/systemui/HardwareUiLayout;->mList:Landroid/view/ViewGroup;

    check-cast p1, Landroid/widget/LinearLayout;

    .line 236
    iget-boolean p2, p0, Lcom/android/systemui/HardwareUiLayout;->mSwapOrientation:Z

    if-eqz p2, :cond_9

    .line 237
    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 238
    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 240
    :cond_9
    iget-object p1, p0, Lcom/android/systemui/HardwareUiLayout;->mList:Landroid/view/ViewGroup;

    invoke-direct {p0, p1}, Lcom/android/systemui/HardwareUiLayout;->swapDimens(Landroid/view/View;)V

    .line 241
    iget-object p1, p0, Lcom/android/systemui/HardwareUiLayout;->mSeparatedView:Landroid/view/ViewGroup;

    invoke-direct {p0, p1}, Lcom/android/systemui/HardwareUiLayout;->swapDimens(Landroid/view/View;)V

    :cond_a
    :goto_4
    return-void
.end method
