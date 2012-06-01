.class Lcom/cyanogenmod/trebuchet/Workspace$4;
.super Ljava/lang/Object;
.source "Workspace.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cyanogenmod/trebuchet/Workspace;->onLayout(ZIIII)V
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
    .line 1547
    iput-object p1, p0, Lcom/cyanogenmod/trebuchet/Workspace$4;->this$0:Lcom/cyanogenmod/trebuchet/Workspace;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1549
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Workspace$4;->this$0:Lcom/cyanogenmod/trebuchet/Workspace;

    iget-object v1, p0, Lcom/cyanogenmod/trebuchet/Workspace$4;->this$0:Lcom/cyanogenmod/trebuchet/Workspace;

    #getter for: Lcom/cyanogenmod/trebuchet/Workspace;->mStateAfterFirstLayout:Lcom/cyanogenmod/trebuchet/Workspace$State;
    invoke-static {v1}, Lcom/cyanogenmod/trebuchet/Workspace;->access$700(Lcom/cyanogenmod/trebuchet/Workspace;)Lcom/cyanogenmod/trebuchet/Workspace$State;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/cyanogenmod/trebuchet/Workspace;->changeState(Lcom/cyanogenmod/trebuchet/Workspace$State;Z)V

    .line 1550
    return-void
.end method
