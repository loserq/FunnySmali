.class public Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;
.super Ljava/lang/Object;
.source "HeadsUpTouchHelper.java"

# interfaces
.implements Lcom/android/systemui/Gefingerpoken;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper$Callback;
    }
.end annotation


# instance fields
.field private mCallback:Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper$Callback;

.field private mCollapseSnoozes:Z

.field private mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

.field private mInitialTouchX:F

.field private mInitialTouchY:F

.field private mPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

.field private mPickedChild:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

.field private mTouchSlop:F

.field private mTouchingHeadsUpView:Z

.field private mTrackingHeadsUp:Z

.field private mTrackingPointer:I


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper$Callback;Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    .line 49
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->mCallback:Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper$Callback;

    .line 50
    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->mPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    .line 51
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->mCallback:Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper$Callback;

    invoke-interface {p1}, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper$Callback;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 52
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    .line 53
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->mTouchSlop:F

    return-void
.end method

.method private endMotion()V
    .locals 1

    const/4 v0, -0x1

    .line 173
    iput v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->mTrackingPointer:I

    const/4 v0, 0x0

    .line 174
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->mPickedChild:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    const/4 v0, 0x0

    .line 175
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->mTouchingHeadsUpView:Z

    return-void
.end method

.method private setTrackingHeadsUp(Z)V
    .locals 1

    .line 145
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->mTrackingHeadsUp:Z

    .line 146
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->setTrackingHeadsUp(Z)V

    .line 147
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->mPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->mPickedChild:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setTrackedHeadsUp(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    return-void
.end method


# virtual methods
.method public isTrackingHeadsUp()Z
    .locals 0

    .line 57
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->mTrackingHeadsUp:Z

    return p0
.end method

.method public notifyFling(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 151
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->mCollapseSnoozes:Z

    if-eqz p1, :cond_0

    .line 152
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->snooze()V

    :cond_0
    const/4 p1, 0x0

    .line 154
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->mCollapseSnoozes:Z

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .line 62
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->mTouchingHeadsUpView:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 65
    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->mTrackingPointer:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    if-gez v0, :cond_1

    .line 68
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->mTrackingPointer:I

    move v0, v1

    .line 70
    :cond_1
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    .line 71
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    .line 72
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_9

    if-eq v3, v4, :cond_7

    const/4 v5, 0x2

    if-eq v3, v5, :cond_4

    const/4 v0, 0x3

    if-eq v3, v0, :cond_7

    const/4 v0, 0x6

    if-eq v3, v0, :cond_2

    goto/16 :goto_1

    .line 94
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    .line 95
    iget v2, p0, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->mTrackingPointer:I

    if-ne v2, v0, :cond_c

    .line 97
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    if-eq v2, v0, :cond_3

    move v4, v1

    .line 98
    :cond_3
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->mTrackingPointer:I

    .line 99
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->mInitialTouchX:F

    .line 100
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->mInitialTouchY:F

    goto/16 :goto_1

    .line 105
    :cond_4
    iget p1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->mInitialTouchY:F

    sub-float p1, v0, p1

    .line 106
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->mTouchingHeadsUpView:Z

    if-eqz v3, :cond_c

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v5, p0, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->mTouchSlop:F

    cmpl-float v3, v3, v5

    if-lez v3, :cond_c

    .line 107
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v5, p0, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->mInitialTouchX:F

    sub-float v5, v2, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpl-float v3, v3, v5

    if-lez v3, :cond_c

    .line 108
    invoke-direct {p0, v4}, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->setTrackingHeadsUp(Z)V

    const/4 v3, 0x0

    cmpg-float p1, p1, v3

    if-gez p1, :cond_5

    move v1, v4

    .line 109
    :cond_5
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->mCollapseSnoozes:Z

    .line 110
    iput v2, p0, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->mInitialTouchX:F

    .line 111
    iput v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->mInitialTouchY:F

    .line 112
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->mPickedChild:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getActualHeight()I

    move-result p1

    int-to-float p1, p1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->mPickedChild:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 113
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v1

    add-float/2addr p1, v1

    float-to-int p1, p1

    .line 114
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->mPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getMaxPanelHeight()I

    move-result v1

    int-to-float v1, v1

    .line 115
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->mPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    cmpl-float v6, v1, v3

    if-lez v6, :cond_6

    int-to-float v3, p1

    div-float/2addr v3, v1

    :cond_6
    invoke-virtual {v5, v3}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setPanelScrimMinFraction(F)V

    .line 117
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->mPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    int-to-float p1, p1

    invoke-virtual {v1, v2, v0, v4, p1}, Lcom/android/systemui/statusbar/phone/PanelView;->startExpandMotion(FFZF)V

    .line 118
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->mPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/PanelView;->startExpandingFromPeek()V

    .line 121
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    invoke-virtual {p1, v4}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->unpinAll(Z)V

    .line 122
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->mPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->clearNotificationEffects()V

    .line 123
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->endMotion()V

    return v4

    .line 130
    :cond_7
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->mPickedChild:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz p1, :cond_8

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->mTouchingHeadsUpView:Z

    if-eqz v0, :cond_8

    .line 132
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    .line 133
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object p1

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object p1

    .line 132
    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->shouldSwallowClick(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 134
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->endMotion()V

    return v4

    .line 138
    :cond_8
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->endMotion()V

    goto :goto_1

    .line 74
    :cond_9
    iput v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->mInitialTouchY:F

    .line 75
    iput v2, p0, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->mInitialTouchX:F

    .line 76
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->setTrackingHeadsUp(Z)V

    .line 77
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->mCallback:Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper$Callback;

    invoke-interface {p1, v2, v0}, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper$Callback;->getChildAtRawPosition(FF)Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    move-result-object p1

    .line 78
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->mTouchingHeadsUpView:Z

    .line 79
    instance-of v0, p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz v0, :cond_b

    .line 80
    check-cast p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->mPickedChild:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 81
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->mCallback:Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper$Callback;

    invoke-interface {p1}, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper$Callback;->isExpanded()Z

    move-result p1

    if-nez p1, :cond_a

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->mPickedChild:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 82
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isHeadsUp()Z

    move-result p1

    if-eqz p1, :cond_a

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->mPickedChild:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isPinned()Z

    move-result p1

    if-eqz p1, :cond_a

    goto :goto_0

    :cond_a
    move v4, v1

    :goto_0
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->mTouchingHeadsUpView:Z

    goto :goto_1

    :cond_b
    if-nez p1, :cond_c

    .line 83
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->mCallback:Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper$Callback;

    invoke-interface {p1}, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper$Callback;->isExpanded()Z

    move-result p1

    if-nez p1, :cond_c

    .line 86
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->getTopEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object p1

    if-eqz p1, :cond_c

    .line 87
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isRowPinned()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 88
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getRow()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->mPickedChild:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 89
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->mTouchingHeadsUpView:Z

    :cond_c
    :goto_1
    return v1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 159
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->mTrackingHeadsUp:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 162
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v2, 0x3

    if-eq p1, v2, :cond_1

    goto :goto_0

    .line 165
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->endMotion()V

    .line 166
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->setTrackingHeadsUp(Z)V

    :goto_0
    return v0
.end method
