.class Llineageos/power/PerformanceProfile$1;
.super Ljava/lang/Object;
.source "PerformanceProfile.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llineageos/power/PerformanceProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Llineageos/power/PerformanceProfile;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 119
    invoke-virtual {p0, p1}, Llineageos/power/PerformanceProfile$1;->createFromParcel(Landroid/os/Parcel;)Llineageos/power/PerformanceProfile;

    move-result-object p0

    return-object p0
.end method

.method public createFromParcel(Landroid/os/Parcel;)Llineageos/power/PerformanceProfile;
    .locals 1

    .line 122
    new-instance p0, Llineageos/power/PerformanceProfile;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Llineageos/power/PerformanceProfile;-><init>(Landroid/os/Parcel;Llineageos/power/PerformanceProfile$1;)V

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 119
    invoke-virtual {p0, p1}, Llineageos/power/PerformanceProfile$1;->newArray(I)[Llineageos/power/PerformanceProfile;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Llineageos/power/PerformanceProfile;
    .locals 0

    .line 127
    new-array p0, p1, [Llineageos/power/PerformanceProfile;

    return-object p0
.end method
