.class Lcom/cyanogenmod/trebuchet/Workspace$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "Workspace.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cyanogenmod/trebuchet/Workspace;->changeState(Lcom/cyanogenmod/trebuchet/Workspace$State;ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cyanogenmod/trebuchet/Workspace;

.field final synthetic val$oldStateIsSmall:Z

.field final synthetic val$stateIsNormal:Z


# direct methods
.method constructor <init>(Lcom/cyanogenmod/trebuchet/Workspace;ZZ)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2035
    iput-object p1, p0, Lcom/cyanogenmod/trebuchet/Workspace$5;->this$0:Lcom/cyanogenmod/trebuchet/Workspace;

    iput-boolean p2, p0, Lcom/cyanogenmod/trebuchet/Workspace$5;->val$stateIsNormal:Z

    iput-boolean p3, p0, Lcom/cyanogenmod/trebuchet/Workspace$5;->val$oldStateIsSmall:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .parameter "animation"

    .prologue
    .line 2042
    iget-object v2, p0, Lcom/cyanogenmod/trebuchet/Workspace$5;->this$0:Lcom/cyanogenmod/trebuchet/Workspace;

    iget-boolean v2, v2, Lcom/cyanogenmod/trebuchet/Workspace;->mFadeInAdjacentScreens:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/cyanogenmod/trebuchet/Workspace$5;->val$stateIsNormal:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/cyanogenmod/trebuchet/Workspace$5;->val$oldStateIsSmall:Z

    if-eqz v2, :cond_0

    .line 2043
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/cyanogenmod/trebuchet/Workspace$5;->this$0:Lcom/cyanogenmod/trebuchet/Workspace;

    invoke-virtual {v2}, Lcom/cyanogenmod/trebuchet/Workspace;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 2044
    iget-object v2, p0, Lcom/cyanogenmod/trebuchet/Workspace$5;->this$0:Lcom/cyanogenmod/trebuchet/Workspace;

    invoke-virtual {v2, v1}, Lcom/cyanogenmod/trebuchet/Workspace;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/cyanogenmod/trebuchet/CellLayout;

    .line 2045
    .local v0, cl:Lcom/cyanogenmod/trebuchet/CellLayout;
    const/high16 v2, 0x3f80

    invoke-virtual {v0, v2}, Lcom/cyanogenmod/trebuchet/CellLayout;->setAlpha(F)V

    .line 2043
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2048
    .end local v0           #cl:Lcom/cyanogenmod/trebuchet/CellLayout;
    .end local v1           #i:I
    :cond_0
    return-void
.end method
