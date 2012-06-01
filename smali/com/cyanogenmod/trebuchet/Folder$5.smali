.class Lcom/cyanogenmod/trebuchet/Folder$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "Folder.java"


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
    .line 494
    iput-object p1, p0, Lcom/cyanogenmod/trebuchet/Folder$5;->this$0:Lcom/cyanogenmod/trebuchet/Folder;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 497
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Folder$5;->this$0:Lcom/cyanogenmod/trebuchet/Folder;

    #calls: Lcom/cyanogenmod/trebuchet/Folder;->onCloseComplete()V
    invoke-static {v0}, Lcom/cyanogenmod/trebuchet/Folder;->access$400(Lcom/cyanogenmod/trebuchet/Folder;)V

    .line 498
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Folder$5;->this$0:Lcom/cyanogenmod/trebuchet/Folder;

    const/4 v1, 0x0

    #setter for: Lcom/cyanogenmod/trebuchet/Folder;->mState:I
    invoke-static {v0, v1}, Lcom/cyanogenmod/trebuchet/Folder;->access$202(Lcom/cyanogenmod/trebuchet/Folder;I)I

    .line 499
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 4
    .parameter "animation"

    .prologue
    .line 502
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Folder$5;->this$0:Lcom/cyanogenmod/trebuchet/Folder;

    const/16 v1, 0x20

    iget-object v2, p0, Lcom/cyanogenmod/trebuchet/Folder$5;->this$0:Lcom/cyanogenmod/trebuchet/Folder;

    #getter for: Lcom/cyanogenmod/trebuchet/Folder;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/cyanogenmod/trebuchet/Folder;->access$500(Lcom/cyanogenmod/trebuchet/Folder;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f090060

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/cyanogenmod/trebuchet/Folder;->sendCustomAccessibilityEvent(ILjava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/cyanogenmod/trebuchet/Folder;->access$100(Lcom/cyanogenmod/trebuchet/Folder;ILjava/lang/String;)V

    .line 504
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Folder$5;->this$0:Lcom/cyanogenmod/trebuchet/Folder;

    const/4 v1, 0x1

    #setter for: Lcom/cyanogenmod/trebuchet/Folder;->mState:I
    invoke-static {v0, v1}, Lcom/cyanogenmod/trebuchet/Folder;->access$202(Lcom/cyanogenmod/trebuchet/Folder;I)I

    .line 505
    return-void
.end method
