.class Llineageos/weatherservice/ServiceRequestResult$1;
.super Ljava/lang/Object;
.source "ServiceRequestResult.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llineageos/weatherservice/ServiceRequestResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Llineageos/weatherservice/ServiceRequestResult;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 72
    invoke-virtual {p0, p1}, Llineageos/weatherservice/ServiceRequestResult$1;->createFromParcel(Landroid/os/Parcel;)Llineageos/weatherservice/ServiceRequestResult;

    move-result-object p0

    return-object p0
.end method

.method public createFromParcel(Landroid/os/Parcel;)Llineageos/weatherservice/ServiceRequestResult;
    .locals 1

    .line 75
    new-instance p0, Llineageos/weatherservice/ServiceRequestResult;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Llineageos/weatherservice/ServiceRequestResult;-><init>(Landroid/os/Parcel;Llineageos/weatherservice/ServiceRequestResult$1;)V

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 72
    invoke-virtual {p0, p1}, Llineageos/weatherservice/ServiceRequestResult$1;->newArray(I)[Llineageos/weatherservice/ServiceRequestResult;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Llineageos/weatherservice/ServiceRequestResult;
    .locals 0

    .line 80
    new-array p0, p1, [Llineageos/weatherservice/ServiceRequestResult;

    return-object p0
.end method
