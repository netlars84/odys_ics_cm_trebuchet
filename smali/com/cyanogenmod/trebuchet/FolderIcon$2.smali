.class Lcom/cyanogenmod/trebuchet/FolderIcon$2;
.super Ljava/lang/Object;
.source "FolderIcon.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cyanogenmod/trebuchet/FolderIcon;->onDrop(Lcom/cyanogenmod/trebuchet/ShortcutInfo;Landroid/view/View;Landroid/graphics/Rect;FILjava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cyanogenmod/trebuchet/FolderIcon;

.field final synthetic val$item:Lcom/cyanogenmod/trebuchet/ShortcutInfo;


# direct methods
.method constructor <init>(Lcom/cyanogenmod/trebuchet/FolderIcon;Lcom/cyanogenmod/trebuchet/ShortcutInfo;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 361
    iput-object p1, p0, Lcom/cyanogenmod/trebuchet/FolderIcon$2;->this$0:Lcom/cyanogenmod/trebuchet/FolderIcon;

    iput-object p2, p0, Lcom/cyanogenmod/trebuchet/FolderIcon$2;->val$item:Lcom/cyanogenmod/trebuchet/ShortcutInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 363
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/FolderIcon$2;->this$0:Lcom/cyanogenmod/trebuchet/FolderIcon;

    iget-object v1, p0, Lcom/cyanogenmod/trebuchet/FolderIcon$2;->val$item:Lcom/cyanogenmod/trebuchet/ShortcutInfo;

    invoke-virtual {v0, v1}, Lcom/cyanogenmod/trebuchet/FolderIcon;->addItem(Lcom/cyanogenmod/trebuchet/ShortcutInfo;)V

    .line 364
    return-void
.end method
