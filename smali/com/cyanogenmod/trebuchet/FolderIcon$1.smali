.class Lcom/cyanogenmod/trebuchet/FolderIcon$1;
.super Ljava/lang/Object;
.source "FolderIcon.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cyanogenmod/trebuchet/FolderIcon;->performCreateAnimation(Lcom/cyanogenmod/trebuchet/ShortcutInfo;Landroid/view/View;Lcom/cyanogenmod/trebuchet/ShortcutInfo;Landroid/view/View;Landroid/graphics/Rect;FLjava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cyanogenmod/trebuchet/FolderIcon;

.field final synthetic val$destInfo:Lcom/cyanogenmod/trebuchet/ShortcutInfo;


# direct methods
.method constructor <init>(Lcom/cyanogenmod/trebuchet/FolderIcon;Lcom/cyanogenmod/trebuchet/ShortcutInfo;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 306
    iput-object p1, p0, Lcom/cyanogenmod/trebuchet/FolderIcon$1;->this$0:Lcom/cyanogenmod/trebuchet/FolderIcon;

    iput-object p2, p0, Lcom/cyanogenmod/trebuchet/FolderIcon$1;->val$destInfo:Lcom/cyanogenmod/trebuchet/ShortcutInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 308
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/FolderIcon$1;->this$0:Lcom/cyanogenmod/trebuchet/FolderIcon;

    iget-object v1, p0, Lcom/cyanogenmod/trebuchet/FolderIcon$1;->val$destInfo:Lcom/cyanogenmod/trebuchet/ShortcutInfo;

    invoke-virtual {v0, v1}, Lcom/cyanogenmod/trebuchet/FolderIcon;->addItem(Lcom/cyanogenmod/trebuchet/ShortcutInfo;)V

    .line 309
    return-void
.end method
