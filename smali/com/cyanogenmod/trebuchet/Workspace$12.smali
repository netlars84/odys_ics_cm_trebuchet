.class Lcom/cyanogenmod/trebuchet/Workspace$12;
.super Ljava/lang/Object;
.source "Workspace.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cyanogenmod/trebuchet/Workspace;->onDropExternal([ILjava/lang/Object;Lcom/cyanogenmod/trebuchet/CellLayout;ZLcom/cyanogenmod/trebuchet/DropTarget$DragObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cyanogenmod/trebuchet/Workspace;

.field final synthetic val$cellLayout:Lcom/cyanogenmod/trebuchet/CellLayout;

.field final synthetic val$container:J

.field final synthetic val$pendingInfo:Lcom/cyanogenmod/trebuchet/PendingAddItemInfo;

.field final synthetic val$screen:I


# direct methods
.method constructor <init>(Lcom/cyanogenmod/trebuchet/Workspace;Lcom/cyanogenmod/trebuchet/PendingAddItemInfo;JILcom/cyanogenmod/trebuchet/CellLayout;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 3292
    iput-object p1, p0, Lcom/cyanogenmod/trebuchet/Workspace$12;->this$0:Lcom/cyanogenmod/trebuchet/Workspace;

    iput-object p2, p0, Lcom/cyanogenmod/trebuchet/Workspace$12;->val$pendingInfo:Lcom/cyanogenmod/trebuchet/PendingAddItemInfo;

    iput-wide p3, p0, Lcom/cyanogenmod/trebuchet/Workspace$12;->val$container:J

    iput p5, p0, Lcom/cyanogenmod/trebuchet/Workspace$12;->val$screen:I

    iput-object p6, p0, Lcom/cyanogenmod/trebuchet/Workspace$12;->val$cellLayout:Lcom/cyanogenmod/trebuchet/CellLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 3297
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Workspace$12;->val$pendingInfo:Lcom/cyanogenmod/trebuchet/PendingAddItemInfo;

    iget v0, v0, Lcom/cyanogenmod/trebuchet/PendingAddItemInfo;->itemType:I

    packed-switch v0, :pswitch_data_0

    .line 3307
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown item type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/cyanogenmod/trebuchet/Workspace$12;->val$pendingInfo:Lcom/cyanogenmod/trebuchet/PendingAddItemInfo;

    iget v2, v2, Lcom/cyanogenmod/trebuchet/PendingAddItemInfo;->itemType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3299
    :pswitch_1
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Workspace$12;->this$0:Lcom/cyanogenmod/trebuchet/Workspace;

    #getter for: Lcom/cyanogenmod/trebuchet/Workspace;->mLauncher:Lcom/cyanogenmod/trebuchet/Launcher;
    invoke-static {v0}, Lcom/cyanogenmod/trebuchet/Workspace;->access$2800(Lcom/cyanogenmod/trebuchet/Workspace;)Lcom/cyanogenmod/trebuchet/Launcher;

    move-result-object v0

    iget-object v1, p0, Lcom/cyanogenmod/trebuchet/Workspace$12;->val$pendingInfo:Lcom/cyanogenmod/trebuchet/PendingAddItemInfo;

    check-cast v1, Lcom/cyanogenmod/trebuchet/PendingAddWidgetInfo;

    iget-wide v2, p0, Lcom/cyanogenmod/trebuchet/Workspace$12;->val$container:J

    iget v4, p0, Lcom/cyanogenmod/trebuchet/Workspace$12;->val$screen:I

    iget-object v5, p0, Lcom/cyanogenmod/trebuchet/Workspace$12;->this$0:Lcom/cyanogenmod/trebuchet/Workspace;

    #getter for: Lcom/cyanogenmod/trebuchet/Workspace;->mTargetCell:[I
    invoke-static {v5}, Lcom/cyanogenmod/trebuchet/Workspace;->access$3200(Lcom/cyanogenmod/trebuchet/Workspace;)[I

    move-result-object v5

    invoke-virtual/range {v0 .. v6}, Lcom/cyanogenmod/trebuchet/Launcher;->addAppWidgetFromDrop(Lcom/cyanogenmod/trebuchet/PendingAddWidgetInfo;JI[I[I)V

    .line 3310
    :goto_0
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Workspace$12;->val$cellLayout:Lcom/cyanogenmod/trebuchet/CellLayout;

    invoke-virtual {v0}, Lcom/cyanogenmod/trebuchet/CellLayout;->onDragExit()V

    .line 3311
    return-void

    .line 3303
    :pswitch_2
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Workspace$12;->this$0:Lcom/cyanogenmod/trebuchet/Workspace;

    #getter for: Lcom/cyanogenmod/trebuchet/Workspace;->mLauncher:Lcom/cyanogenmod/trebuchet/Launcher;
    invoke-static {v0}, Lcom/cyanogenmod/trebuchet/Workspace;->access$2800(Lcom/cyanogenmod/trebuchet/Workspace;)Lcom/cyanogenmod/trebuchet/Launcher;

    move-result-object v0

    iget-object v1, p0, Lcom/cyanogenmod/trebuchet/Workspace$12;->val$pendingInfo:Lcom/cyanogenmod/trebuchet/PendingAddItemInfo;

    iget-object v1, v1, Lcom/cyanogenmod/trebuchet/PendingAddItemInfo;->componentName:Landroid/content/ComponentName;

    iget-wide v2, p0, Lcom/cyanogenmod/trebuchet/Workspace$12;->val$container:J

    iget v4, p0, Lcom/cyanogenmod/trebuchet/Workspace$12;->val$screen:I

    iget-object v5, p0, Lcom/cyanogenmod/trebuchet/Workspace$12;->this$0:Lcom/cyanogenmod/trebuchet/Workspace;

    #getter for: Lcom/cyanogenmod/trebuchet/Workspace;->mTargetCell:[I
    invoke-static {v5}, Lcom/cyanogenmod/trebuchet/Workspace;->access$3200(Lcom/cyanogenmod/trebuchet/Workspace;)[I

    move-result-object v5

    invoke-virtual/range {v0 .. v6}, Lcom/cyanogenmod/trebuchet/Launcher;->processShortcutFromDrop(Landroid/content/ComponentName;JI[I[I)V

    goto :goto_0

    .line 3297
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
