.class Lcom/cyanogenmod/trebuchet/DragView$2;
.super Ljava/lang/Object;
.source "DragView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cyanogenmod/trebuchet/DragView;->remove()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cyanogenmod/trebuchet/DragView;


# direct methods
.method constructor <init>(Lcom/cyanogenmod/trebuchet/DragView;)V
    .locals 0
    .parameter

    .prologue
    .line 215
    iput-object p1, p0, Lcom/cyanogenmod/trebuchet/DragView$2;->this$0:Lcom/cyanogenmod/trebuchet/DragView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 217
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/DragView$2;->this$0:Lcom/cyanogenmod/trebuchet/DragView;

    #getter for: Lcom/cyanogenmod/trebuchet/DragView;->mDragLayer:Lcom/cyanogenmod/trebuchet/DragLayer;
    invoke-static {v0}, Lcom/cyanogenmod/trebuchet/DragView;->access$300(Lcom/cyanogenmod/trebuchet/DragView;)Lcom/cyanogenmod/trebuchet/DragLayer;

    move-result-object v0

    iget-object v1, p0, Lcom/cyanogenmod/trebuchet/DragView$2;->this$0:Lcom/cyanogenmod/trebuchet/DragView;

    invoke-virtual {v0, v1}, Lcom/cyanogenmod/trebuchet/DragLayer;->removeView(Landroid/view/View;)V

    .line 218
    return-void
.end method
