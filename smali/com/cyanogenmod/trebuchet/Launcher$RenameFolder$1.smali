.class Lcom/cyanogenmod/trebuchet/Launcher$RenameFolder$1;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cyanogenmod/trebuchet/Launcher$RenameFolder;->createDialog()Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/cyanogenmod/trebuchet/Launcher$RenameFolder;


# direct methods
.method constructor <init>(Lcom/cyanogenmod/trebuchet/Launcher$RenameFolder;)V
    .locals 0
    .parameter

    .prologue
    .line 2198
    iput-object p1, p0, Lcom/cyanogenmod/trebuchet/Launcher$RenameFolder$1;->this$1:Lcom/cyanogenmod/trebuchet/Launcher$RenameFolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 2200
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/Launcher$RenameFolder$1;->this$1:Lcom/cyanogenmod/trebuchet/Launcher$RenameFolder;

    #calls: Lcom/cyanogenmod/trebuchet/Launcher$RenameFolder;->cleanup()V
    invoke-static {v0}, Lcom/cyanogenmod/trebuchet/Launcher$RenameFolder;->access$2000(Lcom/cyanogenmod/trebuchet/Launcher$RenameFolder;)V

    .line 2201
    return-void
.end method
