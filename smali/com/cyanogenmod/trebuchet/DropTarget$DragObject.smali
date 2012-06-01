.class public Lcom/cyanogenmod/trebuchet/DropTarget$DragObject;
.super Ljava/lang/Object;
.source "DropTarget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyanogenmod/trebuchet/DropTarget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DragObject"
.end annotation


# instance fields
.field public cancelled:Z

.field public dragComplete:Z

.field public dragInfo:Ljava/lang/Object;

.field public dragSource:Lcom/cyanogenmod/trebuchet/DragSource;

.field public dragView:Lcom/cyanogenmod/trebuchet/DragView;

.field public postAnimationRunnable:Ljava/lang/Runnable;

.field public x:I

.field public xOffset:I

.field public y:I

.field public yOffset:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput v0, p0, Lcom/cyanogenmod/trebuchet/DropTarget$DragObject;->x:I

    .line 29
    iput v0, p0, Lcom/cyanogenmod/trebuchet/DropTarget$DragObject;->y:I

    .line 32
    iput v0, p0, Lcom/cyanogenmod/trebuchet/DropTarget$DragObject;->xOffset:I

    .line 35
    iput v0, p0, Lcom/cyanogenmod/trebuchet/DropTarget$DragObject;->yOffset:I

    .line 41
    iput-boolean v2, p0, Lcom/cyanogenmod/trebuchet/DropTarget$DragObject;->dragComplete:Z

    .line 44
    iput-object v1, p0, Lcom/cyanogenmod/trebuchet/DropTarget$DragObject;->dragView:Lcom/cyanogenmod/trebuchet/DragView;

    .line 47
    iput-object v1, p0, Lcom/cyanogenmod/trebuchet/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    .line 50
    iput-object v1, p0, Lcom/cyanogenmod/trebuchet/DropTarget$DragObject;->dragSource:Lcom/cyanogenmod/trebuchet/DragSource;

    .line 53
    iput-object v1, p0, Lcom/cyanogenmod/trebuchet/DropTarget$DragObject;->postAnimationRunnable:Ljava/lang/Runnable;

    .line 56
    iput-boolean v2, p0, Lcom/cyanogenmod/trebuchet/DropTarget$DragObject;->cancelled:Z

    .line 59
    return-void
.end method
