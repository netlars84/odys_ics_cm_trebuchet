.class public Lcom/cyanogenmod/trebuchet/SpringLoadedDragController;
.super Ljava/lang/Object;
.source "SpringLoadedDragController.java"

# interfaces
.implements Lcom/cyanogenmod/trebuchet/OnAlarmListener;


# instance fields
.field final ENTER_SPRING_LOAD_CANCEL_HOVER_TIME:J

.field final ENTER_SPRING_LOAD_HOVER_TIME:J

.field mAlarm:Lcom/cyanogenmod/trebuchet/Alarm;

.field private mLauncher:Lcom/cyanogenmod/trebuchet/Launcher;

.field private mScreen:Lcom/cyanogenmod/trebuchet/CellLayout;


# direct methods
.method public constructor <init>(Lcom/cyanogenmod/trebuchet/Launcher;)V
    .locals 2
    .parameter "launcher"

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const-wide/16 v0, 0x226

    iput-wide v0, p0, Lcom/cyanogenmod/trebuchet/SpringLoadedDragController;->ENTER_SPRING_LOAD_HOVER_TIME:J

    .line 22
    const-wide/16 v0, 0x3b6

    iput-wide v0, p0, Lcom/cyanogenmod/trebuchet/SpringLoadedDragController;->ENTER_SPRING_LOAD_CANCEL_HOVER_TIME:J

    .line 31
    iput-object p1, p0, Lcom/cyanogenmod/trebuchet/SpringLoadedDragController;->mLauncher:Lcom/cyanogenmod/trebuchet/Launcher;

    .line 32
    new-instance v0, Lcom/cyanogenmod/trebuchet/Alarm;

    invoke-direct {v0}, Lcom/cyanogenmod/trebuchet/Alarm;-><init>()V

    iput-object v0, p0, Lcom/cyanogenmod/trebuchet/SpringLoadedDragController;->mAlarm:Lcom/cyanogenmod/trebuchet/Alarm;

    .line 33
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/SpringLoadedDragController;->mAlarm:Lcom/cyanogenmod/trebuchet/Alarm;

    invoke-virtual {v0, p0}, Lcom/cyanogenmod/trebuchet/Alarm;->setOnAlarmListener(Lcom/cyanogenmod/trebuchet/OnAlarmListener;)V

    .line 34
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/SpringLoadedDragController;->mAlarm:Lcom/cyanogenmod/trebuchet/Alarm;

    invoke-virtual {v0}, Lcom/cyanogenmod/trebuchet/Alarm;->cancelAlarm()V

    .line 38
    return-void
.end method

.method public onAlarm(Lcom/cyanogenmod/trebuchet/Alarm;)V
    .locals 3
    .parameter "alarm"

    .prologue
    .line 50
    iget-object v2, p0, Lcom/cyanogenmod/trebuchet/SpringLoadedDragController;->mScreen:Lcom/cyanogenmod/trebuchet/CellLayout;

    if-eqz v2, :cond_1

    .line 52
    iget-object v2, p0, Lcom/cyanogenmod/trebuchet/SpringLoadedDragController;->mLauncher:Lcom/cyanogenmod/trebuchet/Launcher;

    invoke-virtual {v2}, Lcom/cyanogenmod/trebuchet/Launcher;->getWorkspace()Lcom/cyanogenmod/trebuchet/Workspace;

    move-result-object v1

    .line 53
    .local v1, w:Lcom/cyanogenmod/trebuchet/Workspace;
    iget-object v2, p0, Lcom/cyanogenmod/trebuchet/SpringLoadedDragController;->mScreen:Lcom/cyanogenmod/trebuchet/CellLayout;

    invoke-virtual {v1, v2}, Lcom/cyanogenmod/trebuchet/Workspace;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 54
    .local v0, page:I
    invoke-virtual {v1}, Lcom/cyanogenmod/trebuchet/Workspace;->getCurrentPage()I

    move-result v2

    if-eq v0, v2, :cond_0

    .line 55
    invoke-virtual {v1, v0}, Lcom/cyanogenmod/trebuchet/Workspace;->snapToPage(I)V

    .line 60
    .end local v0           #page:I
    .end local v1           #w:Lcom/cyanogenmod/trebuchet/Workspace;
    :cond_0
    :goto_0
    return-void

    .line 58
    :cond_1
    iget-object v2, p0, Lcom/cyanogenmod/trebuchet/SpringLoadedDragController;->mLauncher:Lcom/cyanogenmod/trebuchet/Launcher;

    invoke-virtual {v2}, Lcom/cyanogenmod/trebuchet/Launcher;->getDragController()Lcom/cyanogenmod/trebuchet/DragController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cyanogenmod/trebuchet/DragController;->cancelDrag()V

    goto :goto_0
.end method

.method public setAlarm(Lcom/cyanogenmod/trebuchet/CellLayout;)V
    .locals 3
    .parameter "cl"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/SpringLoadedDragController;->mAlarm:Lcom/cyanogenmod/trebuchet/Alarm;

    invoke-virtual {v0}, Lcom/cyanogenmod/trebuchet/Alarm;->cancelAlarm()V

    .line 43
    iget-object v2, p0, Lcom/cyanogenmod/trebuchet/SpringLoadedDragController;->mAlarm:Lcom/cyanogenmod/trebuchet/Alarm;

    if-nez p1, :cond_0

    const-wide/16 v0, 0x3b6

    :goto_0
    invoke-virtual {v2, v0, v1}, Lcom/cyanogenmod/trebuchet/Alarm;->setAlarm(J)V

    .line 45
    iput-object p1, p0, Lcom/cyanogenmod/trebuchet/SpringLoadedDragController;->mScreen:Lcom/cyanogenmod/trebuchet/CellLayout;

    .line 46
    return-void

    .line 43
    :cond_0
    const-wide/16 v0, 0x226

    goto :goto_0
.end method
