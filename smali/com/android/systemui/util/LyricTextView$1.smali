.class Lcom/android/systemui/util/LyricTextView$1;
.super Ljava/lang/Object;
.source "LyricTextView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/util/LyricTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/util/LyricTextView;


# direct methods
.method constructor <init>(Lcom/android/systemui/util/LyricTextView;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/android/systemui/util/LyricTextView$1;->this$0:Lcom/android/systemui/util/LyricTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/android/systemui/util/LyricTextView$1;->this$0:Lcom/android/systemui/util/LyricTextView;

    invoke-virtual {p0}, Lcom/android/systemui/util/LyricTextView;->startScroll()V

    return-void
.end method
