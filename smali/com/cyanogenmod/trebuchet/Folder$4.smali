.class Lcom/cyanogenmod/trebuchet/Folder$4;
.super Ljava/lang/Object;
.source "Folder.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cyanogenmod/trebuchet/Folder;->animateClosed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cyanogenmod/trebuchet/Folder;


# direct methods
.method constructor <init>(Lcom/cyanogenmod/trebuchet/Folder;)V
    .locals 0
    .parameter

    .prologue
    .line 481
    iput-object p1, p0, Lcom/cyanogenmod/trebuchet/Folder$4;->this$0:Lcom/cyanogenmod/trebuchet/Folder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1
    .parameter "animation"

    .prologue
    .line 483
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Folder$4;->this$0:Lcom/cyanogenmod/trebuchet/Folder;

    invoke-virtual {v0}, Lcom/cyanogenmod/trebuchet/Folder;->requestLayout()V

    .line 484
    return-void
.end method
