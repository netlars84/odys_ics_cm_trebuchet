.class public Lcom/cyanogenmod/trebuchet/DragLayer$LayoutParams;
.super Landroid/widget/FrameLayout$LayoutParams;
.source "DragLayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyanogenmod/trebuchet/DragLayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# instance fields
.field public customPosition:Z

.field public x:I

.field public y:I


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .parameter "width"
    .parameter "height"

    .prologue
    .line 319
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 313
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cyanogenmod/trebuchet/DragLayer$LayoutParams;->customPosition:Z

    .line 320
    return-void
.end method


# virtual methods
.method public getHeight()I
    .locals 1

    .prologue
    .line 335
    iget v0, p0, Lcom/cyanogenmod/trebuchet/DragLayer$LayoutParams;->height:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 327
    iget v0, p0, Lcom/cyanogenmod/trebuchet/DragLayer$LayoutParams;->width:I

    return v0
.end method

.method public getX()I
    .locals 1

    .prologue
    .line 343
    iget v0, p0, Lcom/cyanogenmod/trebuchet/DragLayer$LayoutParams;->x:I

    return v0
.end method

.method public getY()I
    .locals 1

    .prologue
    .line 351
    iget v0, p0, Lcom/cyanogenmod/trebuchet/DragLayer$LayoutParams;->y:I

    return v0
.end method

.method public setHeight(I)V
    .locals 0
    .parameter "height"

    .prologue
    .line 331
    iput p1, p0, Lcom/cyanogenmod/trebuchet/DragLayer$LayoutParams;->height:I

    .line 332
    return-void
.end method

.method public setWidth(I)V
    .locals 0
    .parameter "width"

    .prologue
    .line 323
    iput p1, p0, Lcom/cyanogenmod/trebuchet/DragLayer$LayoutParams;->width:I

    .line 324
    return-void
.end method

.method public setX(I)V
    .locals 0
    .parameter "x"

    .prologue
    .line 339
    iput p1, p0, Lcom/cyanogenmod/trebuchet/DragLayer$LayoutParams;->x:I

    .line 340
    return-void
.end method

.method public setY(I)V
    .locals 0
    .parameter "y"

    .prologue
    .line 347
    iput p1, p0, Lcom/cyanogenmod/trebuchet/DragLayer$LayoutParams;->y:I

    .line 348
    return-void
.end method
