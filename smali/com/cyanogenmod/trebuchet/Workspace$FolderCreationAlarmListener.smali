.class Lcom/cyanogenmod/trebuchet/Workspace$FolderCreationAlarmListener;
.super Ljava/lang/Object;
.source "Workspace.java"

# interfaces
.implements Lcom/cyanogenmod/trebuchet/OnAlarmListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyanogenmod/trebuchet/Workspace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FolderCreationAlarmListener"
.end annotation


# instance fields
.field cellX:I

.field cellY:I

.field layout:Lcom/cyanogenmod/trebuchet/CellLayout;

.field final synthetic this$0:Lcom/cyanogenmod/trebuchet/Workspace;


# direct methods
.method public constructor <init>(Lcom/cyanogenmod/trebuchet/Workspace;Lcom/cyanogenmod/trebuchet/CellLayout;II)V
    .locals 0
    .parameter
    .parameter "layout"
    .parameter "cellX"
    .parameter "cellY"

    .prologue
    .line 3196
    iput-object p1, p0, Lcom/cyanogenmod/trebuchet/Workspace$FolderCreationAlarmListener;->this$0:Lcom/cyanogenmod/trebuchet/Workspace;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3197
    iput-object p2, p0, Lcom/cyanogenmod/trebuchet/Workspace$FolderCreationAlarmListener;->layout:Lcom/cyanogenmod/trebuchet/CellLayout;

    .line 3198
    iput p3, p0, Lcom/cyanogenmod/trebuchet/Workspace$FolderCreationAlarmListener;->cellX:I

    .line 3199
    iput p4, p0, Lcom/cyanogenmod/trebuchet/Workspace$FolderCreationAlarmListener;->cellY:I

    .line 3200
    return-void
.end method


# virtual methods
.method public onAlarm(Lcom/cyanogenmod/trebuchet/Alarm;)V
    .locals 4
    .parameter "alarm"

    .prologue
    .line 3203
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Workspace$FolderCreationAlarmListener;->this$0:Lcom/cyanogenmod/trebuchet/Workspace;

    #getter for: Lcom/cyanogenmod/trebuchet/Workspace;->mDragFolderRingAnimator:Lcom/cyanogenmod/trebuchet/FolderIcon$FolderRingAnimator;
    invoke-static {v0}, Lcom/cyanogenmod/trebuchet/Workspace;->access$3000(Lcom/cyanogenmod/trebuchet/Workspace;)Lcom/cyanogenmod/trebuchet/FolderIcon$FolderRingAnimator;

    move-result-object v0

    if-nez v0, :cond_0

    .line 3204
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Workspace$FolderCreationAlarmListener;->this$0:Lcom/cyanogenmod/trebuchet/Workspace;

    new-instance v1, Lcom/cyanogenmod/trebuchet/FolderIcon$FolderRingAnimator;

    iget-object v2, p0, Lcom/cyanogenmod/trebuchet/Workspace$FolderCreationAlarmListener;->this$0:Lcom/cyanogenmod/trebuchet/Workspace;

    #getter for: Lcom/cyanogenmod/trebuchet/Workspace;->mLauncher:Lcom/cyanogenmod/trebuchet/Launcher;
    invoke-static {v2}, Lcom/cyanogenmod/trebuchet/Workspace;->access$2800(Lcom/cyanogenmod/trebuchet/Workspace;)Lcom/cyanogenmod/trebuchet/Launcher;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/cyanogenmod/trebuchet/FolderIcon$FolderRingAnimator;-><init>(Lcom/cyanogenmod/trebuchet/Launcher;Lcom/cyanogenmod/trebuchet/FolderIcon;)V

    #setter for: Lcom/cyanogenmod/trebuchet/Workspace;->mDragFolderRingAnimator:Lcom/cyanogenmod/trebuchet/FolderIcon$FolderRingAnimator;
    invoke-static {v0, v1}, Lcom/cyanogenmod/trebuchet/Workspace;->access$3002(Lcom/cyanogenmod/trebuchet/Workspace;Lcom/cyanogenmod/trebuchet/FolderIcon$FolderRingAnimator;)Lcom/cyanogenmod/trebuchet/FolderIcon$FolderRingAnimator;

    .line 3206
    :cond_0
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Workspace$FolderCreationAlarmListener;->this$0:Lcom/cyanogenmod/trebuchet/Workspace;

    #getter for: Lcom/cyanogenmod/trebuchet/Workspace;->mDragFolderRingAnimator:Lcom/cyanogenmod/trebuchet/FolderIcon$FolderRingAnimator;
    invoke-static {v0}, Lcom/cyanogenmod/trebuchet/Workspace;->access$3000(Lcom/cyanogenmod/trebuchet/Workspace;)Lcom/cyanogenmod/trebuchet/FolderIcon$FolderRingAnimator;

    move-result-object v0

    iget v1, p0, Lcom/cyanogenmod/trebuchet/Workspace$FolderCreationAlarmListener;->cellX:I

    iget v2, p0, Lcom/cyanogenmod/trebuchet/Workspace$FolderCreationAlarmListener;->cellY:I

    invoke-virtual {v0, v1, v2}, Lcom/cyanogenmod/trebuchet/FolderIcon$FolderRingAnimator;->setCell(II)V

    .line 3207
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Workspace$FolderCreationAlarmListener;->this$0:Lcom/cyanogenmod/trebuchet/Workspace;

    #getter for: Lcom/cyanogenmod/trebuchet/Workspace;->mDragFolderRingAnimator:Lcom/cyanogenmod/trebuchet/FolderIcon$FolderRingAnimator;
    invoke-static {v0}, Lcom/cyanogenmod/trebuchet/Workspace;->access$3000(Lcom/cyanogenmod/trebuchet/Workspace;)Lcom/cyanogenmod/trebuchet/FolderIcon$FolderRingAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/cyanogenmod/trebuchet/Workspace$FolderCreationAlarmListener;->layout:Lcom/cyanogenmod/trebuchet/CellLayout;

    invoke-virtual {v0, v1}, Lcom/cyanogenmod/trebuchet/FolderIcon$FolderRingAnimator;->setCellLayout(Lcom/cyanogenmod/trebuchet/CellLayout;)V

    .line 3208
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Workspace$FolderCreationAlarmListener;->this$0:Lcom/cyanogenmod/trebuchet/Workspace;

    #getter for: Lcom/cyanogenmod/trebuchet/Workspace;->mDragFolderRingAnimator:Lcom/cyanogenmod/trebuchet/FolderIcon$FolderRingAnimator;
    invoke-static {v0}, Lcom/cyanogenmod/trebuchet/Workspace;->access$3000(Lcom/cyanogenmod/trebuchet/Workspace;)Lcom/cyanogenmod/trebuchet/FolderIcon$FolderRingAnimator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cyanogenmod/trebuchet/FolderIcon$FolderRingAnimator;->animateToAcceptState()V

    .line 3209
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Workspace$FolderCreationAlarmListener;->layout:Lcom/cyanogenmod/trebuchet/CellLayout;

    iget-object v1, p0, Lcom/cyanogenmod/trebuchet/Workspace$FolderCreationAlarmListener;->this$0:Lcom/cyanogenmod/trebuchet/Workspace;

    #getter for: Lcom/cyanogenmod/trebuchet/Workspace;->mDragFolderRingAnimator:Lcom/cyanogenmod/trebuchet/FolderIcon$FolderRingAnimator;
    invoke-static {v1}, Lcom/cyanogenmod/trebuchet/Workspace;->access$3000(Lcom/cyanogenmod/trebuchet/Workspace;)Lcom/cyanogenmod/trebuchet/FolderIcon$FolderRingAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cyanogenmod/trebuchet/CellLayout;->showFolderAccept(Lcom/cyanogenmod/trebuchet/FolderIcon$FolderRingAnimator;)V

    .line 3210
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Workspace$FolderCreationAlarmListener;->layout:Lcom/cyanogenmod/trebuchet/CellLayout;

    invoke-virtual {v0}, Lcom/cyanogenmod/trebuchet/CellLayout;->clearDragOutlines()V

    .line 3211
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Workspace$FolderCreationAlarmListener;->this$0:Lcom/cyanogenmod/trebuchet/Workspace;

    const/4 v1, 0x1

    #setter for: Lcom/cyanogenmod/trebuchet/Workspace;->mCreateUserFolderOnDrop:Z
    invoke-static {v0, v1}, Lcom/cyanogenmod/trebuchet/Workspace;->access$3102(Lcom/cyanogenmod/trebuchet/Workspace;Z)Z

    .line 3212
    return-void
.end method
