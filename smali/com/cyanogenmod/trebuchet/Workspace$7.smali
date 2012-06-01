.class Lcom/cyanogenmod/trebuchet/Workspace$7;
.super Lcom/cyanogenmod/trebuchet/LauncherAnimatorUpdateListener;
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


# direct methods
.method constructor <init>(Lcom/cyanogenmod/trebuchet/Workspace;)V
    .locals 0
    .parameter

    .prologue
    .line 2079
    iput-object p1, p0, Lcom/cyanogenmod/trebuchet/Workspace$7;->this$0:Lcom/cyanogenmod/trebuchet/Workspace;

    invoke-direct {p0}, Lcom/cyanogenmod/trebuchet/LauncherAnimatorUpdateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(FF)V
    .locals 4
    .parameter "a"
    .parameter "b"

    .prologue
    .line 2081
    const/4 v2, 0x0

    cmpl-float v2, p2, v2

    if-nez v2, :cond_1

    .line 2092
    :cond_0
    return-void

    .line 2085
    :cond_1
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/cyanogenmod/trebuchet/Workspace$7;->this$0:Lcom/cyanogenmod/trebuchet/Workspace;

    invoke-virtual {v2}, Lcom/cyanogenmod/trebuchet/Workspace;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 2086
    iget-object v2, p0, Lcom/cyanogenmod/trebuchet/Workspace$7;->this$0:Lcom/cyanogenmod/trebuchet/Workspace;

    invoke-virtual {v2, v1}, Lcom/cyanogenmod/trebuchet/Workspace;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/cyanogenmod/trebuchet/CellLayout;

    .line 2087
    .local v0, cl:Lcom/cyanogenmod/trebuchet/CellLayout;
    iget-object v2, p0, Lcom/cyanogenmod/trebuchet/Workspace$7;->this$0:Lcom/cyanogenmod/trebuchet/Workspace;

    #getter for: Lcom/cyanogenmod/trebuchet/Workspace;->mOldRotations:[F
    invoke-static {v2}, Lcom/cyanogenmod/trebuchet/Workspace;->access$2400(Lcom/cyanogenmod/trebuchet/Workspace;)[F

    move-result-object v2

    aget v2, v2, v1

    iget-object v3, p0, Lcom/cyanogenmod/trebuchet/Workspace$7;->this$0:Lcom/cyanogenmod/trebuchet/Workspace;

    #getter for: Lcom/cyanogenmod/trebuchet/Workspace;->mNewRotations:[F
    invoke-static {v3}, Lcom/cyanogenmod/trebuchet/Workspace;->access$2500(Lcom/cyanogenmod/trebuchet/Workspace;)[F

    move-result-object v3

    aget v3, v3, v1

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_2

    .line 2088
    iget-object v2, p0, Lcom/cyanogenmod/trebuchet/Workspace$7;->this$0:Lcom/cyanogenmod/trebuchet/Workspace;

    #getter for: Lcom/cyanogenmod/trebuchet/Workspace;->mOldRotations:[F
    invoke-static {v2}, Lcom/cyanogenmod/trebuchet/Workspace;->access$2400(Lcom/cyanogenmod/trebuchet/Workspace;)[F

    move-result-object v2

    aget v2, v2, v1

    mul-float/2addr v2, p1

    iget-object v3, p0, Lcom/cyanogenmod/trebuchet/Workspace$7;->this$0:Lcom/cyanogenmod/trebuchet/Workspace;

    #getter for: Lcom/cyanogenmod/trebuchet/Workspace;->mNewRotations:[F
    invoke-static {v3}, Lcom/cyanogenmod/trebuchet/Workspace;->access$2500(Lcom/cyanogenmod/trebuchet/Workspace;)[F

    move-result-object v3

    aget v3, v3, v1

    mul-float/2addr v3, p2

    add-float/2addr v2, v3

    invoke-virtual {v0, v2}, Lcom/cyanogenmod/trebuchet/CellLayout;->setRotation(F)V

    .line 2090
    :cond_2
    iget-object v2, p0, Lcom/cyanogenmod/trebuchet/Workspace$7;->this$0:Lcom/cyanogenmod/trebuchet/Workspace;

    #getter for: Lcom/cyanogenmod/trebuchet/Workspace;->mOldRotationYs:[F
    invoke-static {v2}, Lcom/cyanogenmod/trebuchet/Workspace;->access$2600(Lcom/cyanogenmod/trebuchet/Workspace;)[F

    move-result-object v2

    aget v2, v2, v1

    mul-float/2addr v2, p1

    iget-object v3, p0, Lcom/cyanogenmod/trebuchet/Workspace$7;->this$0:Lcom/cyanogenmod/trebuchet/Workspace;

    #getter for: Lcom/cyanogenmod/trebuchet/Workspace;->mNewRotationYs:[F
    invoke-static {v3}, Lcom/cyanogenmod/trebuchet/Workspace;->access$2700(Lcom/cyanogenmod/trebuchet/Workspace;)[F

    move-result-object v3

    aget v3, v3, v1

    mul-float/2addr v3, p2

    add-float/2addr v2, v3

    invoke-virtual {v0, v2}, Lcom/cyanogenmod/trebuchet/CellLayout;->setFastRotationY(F)V

    .line 2085
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
