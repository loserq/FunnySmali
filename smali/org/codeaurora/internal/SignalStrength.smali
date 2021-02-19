.class public Lorg/codeaurora/internal/SignalStrength;
.super Ljava/lang/Object;
.source "SignalStrength.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lorg/codeaurora/internal/SignalStrength;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mNrRsrp:I

.field private mNrSnr:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 95
    new-instance v0, Lorg/codeaurora/internal/SignalStrength$1;

    invoke-direct {v0}, Lorg/codeaurora/internal/SignalStrength$1;-><init>()V

    sput-object v0, Lorg/codeaurora/internal/SignalStrength;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, -0x8000

    .line 58
    iput v0, p0, Lorg/codeaurora/internal/SignalStrength;->mNrRsrp:I

    .line 59
    iput v0, p0, Lorg/codeaurora/internal/SignalStrength;->mNrSnr:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lorg/codeaurora/internal/SignalStrength;->mNrRsrp:I

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lorg/codeaurora/internal/SignalStrength;->mNrSnr:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getRsrp()I
    .locals 0

    .line 73
    iget p0, p0, Lorg/codeaurora/internal/SignalStrength;->mNrRsrp:I

    return p0
.end method

.method public getSnr()I
    .locals 0

    .line 77
    iget p0, p0, Lorg/codeaurora/internal/SignalStrength;->mNrSnr:I

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SignalStrength: Rsrp: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/codeaurora/internal/SignalStrength;->getRsrp()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " Snr: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/codeaurora/internal/SignalStrength;->getSnr()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 91
    iget p2, p0, Lorg/codeaurora/internal/SignalStrength;->mNrRsrp:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 92
    iget p0, p0, Lorg/codeaurora/internal/SignalStrength;->mNrSnr:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
