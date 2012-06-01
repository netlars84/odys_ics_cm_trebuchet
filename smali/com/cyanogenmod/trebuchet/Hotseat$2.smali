.class Lcom/cyanogenmod/trebuchet/Hotseat$2;
.super Ljava/lang/Object;
.source "Hotseat.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cyanogenmod/trebuchet/Hotseat;->resetLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cyanogenmod/trebuchet/Hotseat;


# direct methods
.method constructor <init>(Lcom/cyanogenmod/trebuchet/Hotseat;)V
    .locals 0
    .parameter

    .prologue
    .line 117
    iput-object p1, p0, Lcom/cyanogenmod/trebuchet/Hotseat$2;->this$0:Lcom/cyanogenmod/trebuchet/Hotseat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 120
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Hotseat$2;->this$0:Lcom/cyanogenmod/trebuchet/Hotseat;

    #getter for: Lcom/cyanogenmod/trebuchet/Hotseat;->mLauncher:Lcom/cyanogenmod/trebuchet/Launcher;
    invoke-static {v0}, Lcom/cyanogenmod/trebuchet/Hotseat;->access$000(Lcom/cyanogenmod/trebuchet/Hotseat;)Lcom/cyanogenmod/trebuchet/Launcher;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Hotseat$2;->this$0:Lcom/cyanogenmod/trebuchet/Hotseat;

    #getter for: Lcom/cyanogenmod/trebuchet/Hotseat;->mLauncher:Lcom/cyanogenmod/trebuchet/Launcher;
    invoke-static {v0}, Lcom/cyanogenmod/trebuchet/Hotseat;->access$000(Lcom/cyanogenmod/trebuchet/Hotseat;)Lcom/cyanogenmod/trebuchet/Launcher;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/cyanogenmod/trebuchet/Launcher;->onClickAllAppsButton(Landroid/view/View;)V

    .line 123
    :cond_0
    return-void
.end method
