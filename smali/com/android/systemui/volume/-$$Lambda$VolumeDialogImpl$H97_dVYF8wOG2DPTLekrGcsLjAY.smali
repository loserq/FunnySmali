.class public final synthetic Lcom/android/systemui/volume/-$$Lambda$VolumeDialogImpl$H97_dVYF8wOG2DPTLekrGcsLjAY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/volume/VolumeDialogImpl;

.field private final synthetic f$1:Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

.field private final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/volume/VolumeDialogImpl;Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/volume/-$$Lambda$VolumeDialogImpl$H97_dVYF8wOG2DPTLekrGcsLjAY;->f$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    iput-object p2, p0, Lcom/android/systemui/volume/-$$Lambda$VolumeDialogImpl$H97_dVYF8wOG2DPTLekrGcsLjAY;->f$1:Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    iput p3, p0, Lcom/android/systemui/volume/-$$Lambda$VolumeDialogImpl$H97_dVYF8wOG2DPTLekrGcsLjAY;->f$2:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/volume/-$$Lambda$VolumeDialogImpl$H97_dVYF8wOG2DPTLekrGcsLjAY;->f$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    iget-object v1, p0, Lcom/android/systemui/volume/-$$Lambda$VolumeDialogImpl$H97_dVYF8wOG2DPTLekrGcsLjAY;->f$1:Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    iget p0, p0, Lcom/android/systemui/volume/-$$Lambda$VolumeDialogImpl$H97_dVYF8wOG2DPTLekrGcsLjAY;->f$2:I

    invoke-virtual {v0, v1, p0, p1}, Lcom/android/systemui/volume/VolumeDialogImpl;->lambda$initRow$4$VolumeDialogImpl(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;ILandroid/view/View;)V

    return-void
.end method
