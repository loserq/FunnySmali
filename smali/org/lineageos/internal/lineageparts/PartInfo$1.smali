.class Lorg/lineageos/internal/lineageparts/PartInfo$1;
.super Ljava/lang/Object;
.source "PartInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/lineageos/internal/lineageparts/PartInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lorg/lineageos/internal/lineageparts/PartInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 187
    invoke-virtual {p0, p1}, Lorg/lineageos/internal/lineageparts/PartInfo$1;->createFromParcel(Landroid/os/Parcel;)Lorg/lineageos/internal/lineageparts/PartInfo;

    move-result-object p0

    return-object p0
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lorg/lineageos/internal/lineageparts/PartInfo;
    .locals 0

    .line 190
    new-instance p0, Lorg/lineageos/internal/lineageparts/PartInfo;

    invoke-direct {p0, p1}, Lorg/lineageos/internal/lineageparts/PartInfo;-><init>(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 187
    invoke-virtual {p0, p1}, Lorg/lineageos/internal/lineageparts/PartInfo$1;->newArray(I)[Lorg/lineageos/internal/lineageparts/PartInfo;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lorg/lineageos/internal/lineageparts/PartInfo;
    .locals 0

    .line 195
    new-array p0, p1, [Lorg/lineageos/internal/lineageparts/PartInfo;

    return-object p0
.end method
