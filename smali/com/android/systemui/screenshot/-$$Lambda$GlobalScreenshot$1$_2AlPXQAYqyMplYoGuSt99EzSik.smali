.class public final synthetic Lcom/android/systemui/screenshot/-$$Lambda$GlobalScreenshot$1$_2AlPXQAYqyMplYoGuSt99EzSik;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/screenshot/GlobalScreenshot$1;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/screenshot/GlobalScreenshot$1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/screenshot/-$$Lambda$GlobalScreenshot$1$_2AlPXQAYqyMplYoGuSt99EzSik;->f$0:Lcom/android/systemui/screenshot/GlobalScreenshot$1;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/screenshot/-$$Lambda$GlobalScreenshot$1$_2AlPXQAYqyMplYoGuSt99EzSik;->f$0:Lcom/android/systemui/screenshot/GlobalScreenshot$1;

    invoke-virtual {p0}, Lcom/android/systemui/screenshot/GlobalScreenshot$1;->lambda$onTaskStackChanged$0$GlobalScreenshot$1()V

    return-void
.end method
