.class Lcom/android/systemui/bubbles/BubbleController$3;
.super Ljava/lang/Object;
.source "BubbleController.java"

# interfaces
.implements Lcom/android/systemui/statusbar/NotificationRemoveInterceptor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/bubbles/BubbleController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/bubbles/BubbleController;


# direct methods
.method constructor <init>(Lcom/android/systemui/bubbles/BubbleController;)V
    .locals 0

    .line 537
    iput-object p1, p0, Lcom/android/systemui/bubbles/BubbleController$3;->this$0:Lcom/android/systemui/bubbles/BubbleController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNotificationRemoveRequested(Ljava/lang/String;I)Z
    .locals 8

    .line 540
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleController$3;->this$0:Lcom/android/systemui/bubbles/BubbleController;

    invoke-static {v0}, Lcom/android/systemui/bubbles/BubbleController;->access$500(Lcom/android/systemui/bubbles/BubbleController;)Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->getNotificationData()Lcom/android/systemui/statusbar/notification/collection/NotificationData;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->get(Ljava/lang/String;)Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 541
    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 542
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/bubbles/BubbleController$3;->this$0:Lcom/android/systemui/bubbles/BubbleController;

    invoke-static {v2}, Lcom/android/systemui/bubbles/BubbleController;->access$100(Lcom/android/systemui/bubbles/BubbleController;)Lcom/android/systemui/bubbles/BubbleData;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/systemui/bubbles/BubbleData;->getBubblesInGroup(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 544
    iget-object v3, p0, Lcom/android/systemui/bubbles/BubbleController$3;->this$0:Lcom/android/systemui/bubbles/BubbleController;

    invoke-static {v3}, Lcom/android/systemui/bubbles/BubbleController;->access$100(Lcom/android/systemui/bubbles/BubbleController;)Lcom/android/systemui/bubbles/BubbleData;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/systemui/bubbles/BubbleData;->hasBubbleWithKey(Ljava/lang/String;)Z

    move-result v3

    .line 545
    iget-object v4, p0, Lcom/android/systemui/bubbles/BubbleController$3;->this$0:Lcom/android/systemui/bubbles/BubbleController;

    invoke-static {v4}, Lcom/android/systemui/bubbles/BubbleController;->access$100(Lcom/android/systemui/bubbles/BubbleController;)Lcom/android/systemui/bubbles/BubbleData;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/android/systemui/bubbles/BubbleData;->isSummarySuppressed(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/systemui/bubbles/BubbleController$3;->this$0:Lcom/android/systemui/bubbles/BubbleController;

    .line 546
    invoke-static {v4}, Lcom/android/systemui/bubbles/BubbleController;->access$100(Lcom/android/systemui/bubbles/BubbleController;)Lcom/android/systemui/bubbles/BubbleData;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/android/systemui/bubbles/BubbleData;->getSummaryKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v5

    goto :goto_1

    :cond_1
    move v1, v6

    :goto_1
    if-eqz v0, :cond_2

    .line 547
    iget-object v4, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    .line 548
    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Notification;->isGroupSummary()Z

    move-result v4

    if-eqz v4, :cond_2

    move v4, v5

    goto :goto_2

    :cond_2
    move v4, v6

    :goto_2
    if-nez v1, :cond_3

    if-eqz v4, :cond_4

    :cond_3
    if-eqz v2, :cond_4

    .line 550
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    move v1, v5

    goto :goto_3

    :cond_4
    move v1, v6

    :goto_3
    if-nez v3, :cond_5

    if-nez v1, :cond_5

    return v6

    :cond_5
    const/4 v2, 0x3

    if-ne p2, v2, :cond_6

    move v2, v5

    goto :goto_4

    :cond_6
    move v2, v6

    :goto_4
    const/4 v3, 0x2

    if-eq p2, v3, :cond_8

    if-ne p2, v5, :cond_7

    goto :goto_5

    :cond_7
    move v3, v6

    goto :goto_6

    :cond_8
    :goto_5
    move v3, v5

    :goto_6
    const/16 v4, 0x8

    if-eq p2, v4, :cond_a

    const/16 v4, 0x9

    if-ne p2, v4, :cond_9

    goto :goto_7

    :cond_9
    move v4, v6

    goto :goto_8

    :cond_a
    :goto_7
    move v4, v5

    :goto_8
    const/16 v7, 0xc

    if-ne p2, v7, :cond_b

    move p2, v5

    goto :goto_9

    :cond_b
    move p2, v6

    :goto_9
    if-eqz v0, :cond_c

    .line 564
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isRowDismissed()Z

    move-result v7

    if-eqz v7, :cond_c

    if-eqz v4, :cond_e

    :cond_c
    if-nez v2, :cond_e

    if-nez v3, :cond_e

    if-eqz p2, :cond_d

    goto :goto_a

    :cond_d
    move p2, v6

    goto :goto_b

    :cond_e
    :goto_a
    move p2, v5

    :goto_b
    if-eqz v1, :cond_f

    .line 568
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleController$3;->this$0:Lcom/android/systemui/bubbles/BubbleController;

    invoke-static {p0, v0, p2}, Lcom/android/systemui/bubbles/BubbleController;->access$600(Lcom/android/systemui/bubbles/BubbleController;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Z)Z

    move-result p0

    return p0

    .line 573
    :cond_f
    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleController$3;->this$0:Lcom/android/systemui/bubbles/BubbleController;

    invoke-static {v1}, Lcom/android/systemui/bubbles/BubbleController;->access$100(Lcom/android/systemui/bubbles/BubbleController;)Lcom/android/systemui/bubbles/BubbleData;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/systemui/bubbles/BubbleData;->getBubbleWithKey(Ljava/lang/String;)Lcom/android/systemui/bubbles/Bubble;

    move-result-object p1

    if-eqz v0, :cond_10

    .line 574
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isBubble()Z

    move-result v1

    if-eqz v1, :cond_10

    if-eqz p2, :cond_10

    move v1, v5

    goto :goto_c

    :cond_10
    move v1, v6

    :goto_c
    if-eqz v1, :cond_12

    .line 576
    invoke-virtual {p1, v6}, Lcom/android/systemui/bubbles/Bubble;->setShowInShadeWhenBubble(Z)V

    .line 577
    invoke-virtual {p1, v6}, Lcom/android/systemui/bubbles/Bubble;->setShowBubbleDot(Z)V

    .line 578
    iget-object p1, p0, Lcom/android/systemui/bubbles/BubbleController$3;->this$0:Lcom/android/systemui/bubbles/BubbleController;

    invoke-static {p1}, Lcom/android/systemui/bubbles/BubbleController;->access$000(Lcom/android/systemui/bubbles/BubbleController;)Lcom/android/systemui/bubbles/BubbleStackView;

    move-result-object p1

    if-eqz p1, :cond_11

    .line 579
    iget-object p1, p0, Lcom/android/systemui/bubbles/BubbleController$3;->this$0:Lcom/android/systemui/bubbles/BubbleController;

    invoke-static {p1}, Lcom/android/systemui/bubbles/BubbleController;->access$000(Lcom/android/systemui/bubbles/BubbleController;)Lcom/android/systemui/bubbles/BubbleStackView;

    move-result-object p1

    iget-object p2, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->key:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/android/systemui/bubbles/BubbleStackView;->updateDotVisibility(Ljava/lang/String;)V

    .line 581
    :cond_11
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleController$3;->this$0:Lcom/android/systemui/bubbles/BubbleController;

    invoke-static {p0}, Lcom/android/systemui/bubbles/BubbleController;->access$500(Lcom/android/systemui/bubbles/BubbleController;)Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->updateNotifications()V

    return v5

    :cond_12
    if-nez p2, :cond_13

    if-eqz v0, :cond_13

    .line 585
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleController$3;->this$0:Lcom/android/systemui/bubbles/BubbleController;

    invoke-static {p0}, Lcom/android/systemui/bubbles/BubbleController;->access$100(Lcom/android/systemui/bubbles/BubbleController;)Lcom/android/systemui/bubbles/BubbleData;

    move-result-object p0

    const/4 p1, 0x5

    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/bubbles/BubbleData;->notificationEntryRemoved(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;I)V

    :cond_13
    return v6
.end method
