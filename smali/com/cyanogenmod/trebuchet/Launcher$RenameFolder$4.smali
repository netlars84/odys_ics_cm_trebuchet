.class Lcom/cyanogenmod/trebuchet/Launcher$RenameFolder$4;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


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
    .line 2220
    iput-object p1, p0, Lcom/cyanogenmod/trebuchet/Launcher$RenameFolder$4;->this$1:Lcom/cyanogenmod/trebuchet/Launcher$RenameFolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .locals 3
    .parameter "dialog"

    .prologue
    .line 2222
    iget-object v1, p0, Lcom/cyanogenmod/trebuchet/Launcher$RenameFolder$4;->this$1:Lcom/cyanogenmod/trebuchet/Launcher$RenameFolder;

    iget-object v1, v1, Lcom/cyanogenmod/trebuchet/Launcher$RenameFolder;->this$0:Lcom/cyanogenmod/trebuchet/Launcher;

    const/4 v2, 0x1

    #setter for: Lcom/cyanogenmod/trebuchet/Launcher;->mWaitingForResult:Z
    invoke-static {v1, v2}, Lcom/cyanogenmod/trebuchet/Launcher;->access$2202(Lcom/cyanogenmod/trebuchet/Launcher;Z)Z

    .line 2223
    iget-object v1, p0, Lcom/cyanogenmod/trebuchet/Launcher$RenameFolder$4;->this$1:Lcom/cyanogenmod/trebuchet/Launcher$RenameFolder;

    #getter for: Lcom/cyanogenmod/trebuchet/Launcher$RenameFolder;->mInput:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/cyanogenmod/trebuchet/Launcher$RenameFolder;->access$2300(Lcom/cyanogenmod/trebuchet/Launcher$RenameFolder;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    .line 2224
    iget-object v1, p0, Lcom/cyanogenmod/trebuchet/Launcher$RenameFolder$4;->this$1:Lcom/cyanogenmod/trebuchet/Launcher$RenameFolder;

    iget-object v1, v1, Lcom/cyanogenmod/trebuchet/Launcher$RenameFolder;->this$0:Lcom/cyanogenmod/trebuchet/Launcher;

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Lcom/cyanogenmod/trebuchet/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 2226
    .local v0, inputManager:Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/cyanogenmod/trebuchet/Launcher$RenameFolder$4;->this$1:Lcom/cyanogenmod/trebuchet/Launcher$RenameFolder;

    #getter for: Lcom/cyanogenmod/trebuchet/Launcher$RenameFolder;->mInput:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/cyanogenmod/trebuchet/Launcher$RenameFolder;->access$2300(Lcom/cyanogenmod/trebuchet/Launcher$RenameFolder;)Landroid/widget/EditText;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 2227
    return-void
.end method
