.class Lcom/cyanogenmod/trebuchet/Launcher$8$1;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cyanogenmod/trebuchet/Launcher$8;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/cyanogenmod/trebuchet/Launcher$8;

.field final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/cyanogenmod/trebuchet/Launcher$8;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1166
    iput-object p1, p0, Lcom/cyanogenmod/trebuchet/Launcher$8$1;->this$1:Lcom/cyanogenmod/trebuchet/Launcher$8;

    iput-object p2, p0, Lcom/cyanogenmod/trebuchet/Launcher$8$1;->val$v:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1168
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Launcher$8$1;->val$v:Landroid/view/View;

    check-cast v0, Landroid/widget/Advanceable;

    invoke-interface {v0}, Landroid/widget/Advanceable;->advance()V

    .line 1169
    return-void
.end method
