.class Lcom/cyanogenmod/trebuchet/FolderInfo;
.super Lcom/cyanogenmod/trebuchet/ItemInfo;
.source "FolderInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cyanogenmod/trebuchet/FolderInfo$FolderListener;
    }
.end annotation


# instance fields
.field contents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cyanogenmod/trebuchet/ShortcutInfo;",
            ">;"
        }
    .end annotation
.end field

.field listeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cyanogenmod/trebuchet/FolderInfo$FolderListener;",
            ">;"
        }
    .end annotation
.end field

.field opened:Z

.field title:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/cyanogenmod/trebuchet/ItemInfo;-><init>()V

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cyanogenmod/trebuchet/FolderInfo;->contents:Ljava/util/ArrayList;

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cyanogenmod/trebuchet/FolderInfo;->listeners:Ljava/util/ArrayList;

    .line 46
    const/4 v0, 0x2

    iput v0, p0, Lcom/cyanogenmod/trebuchet/FolderInfo;->itemType:I

    .line 47
    return-void
.end method


# virtual methods
.method public add(Lcom/cyanogenmod/trebuchet/ShortcutInfo;)V
    .locals 3
    .parameter "item"

    .prologue
    .line 55
    iget-object v2, p0, Lcom/cyanogenmod/trebuchet/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    iget-object v2, p0, Lcom/cyanogenmod/trebuchet/FolderInfo;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cyanogenmod/trebuchet/FolderInfo$FolderListener;

    .line 57
    .local v1, listener:Lcom/cyanogenmod/trebuchet/FolderInfo$FolderListener;
    invoke-interface {v1, p1}, Lcom/cyanogenmod/trebuchet/FolderInfo$FolderListener;->onAdd(Lcom/cyanogenmod/trebuchet/ShortcutInfo;)V

    goto :goto_0

    .line 59
    .end local v1           #listener:Lcom/cyanogenmod/trebuchet/FolderInfo$FolderListener;
    :cond_0
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/FolderInfo;->itemsChanged()V

    .line 60
    return-void
.end method

.method addListener(Lcom/cyanogenmod/trebuchet/FolderInfo$FolderListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/FolderInfo;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    return-void
.end method

.method itemsChanged()V
    .locals 3

    .prologue
    .line 99
    iget-object v2, p0, Lcom/cyanogenmod/trebuchet/FolderInfo;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cyanogenmod/trebuchet/FolderInfo$FolderListener;

    .line 100
    .local v1, listener:Lcom/cyanogenmod/trebuchet/FolderInfo$FolderListener;
    invoke-interface {v1}, Lcom/cyanogenmod/trebuchet/FolderInfo$FolderListener;->onItemsChanged()V

    goto :goto_0

    .line 102
    .end local v1           #listener:Lcom/cyanogenmod/trebuchet/FolderInfo$FolderListener;
    :cond_0
    return-void
.end method

.method onAddToDatabase(Landroid/content/ContentValues;)V
    .locals 2
    .parameter "values"

    .prologue
    .line 84
    invoke-super {p0, p1}, Lcom/cyanogenmod/trebuchet/ItemInfo;->onAddToDatabase(Landroid/content/ContentValues;)V

    .line 85
    const-string v0, "title"

    iget-object v1, p0, Lcom/cyanogenmod/trebuchet/FolderInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    return-void
.end method

.method public remove(Lcom/cyanogenmod/trebuchet/ShortcutInfo;)V
    .locals 3
    .parameter "item"

    .prologue
    .line 68
    iget-object v2, p0, Lcom/cyanogenmod/trebuchet/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 69
    iget-object v2, p0, Lcom/cyanogenmod/trebuchet/FolderInfo;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cyanogenmod/trebuchet/FolderInfo$FolderListener;

    .line 70
    .local v1, listener:Lcom/cyanogenmod/trebuchet/FolderInfo$FolderListener;
    invoke-interface {v1, p1}, Lcom/cyanogenmod/trebuchet/FolderInfo$FolderListener;->onRemove(Lcom/cyanogenmod/trebuchet/ShortcutInfo;)V

    goto :goto_0

    .line 72
    .end local v1           #listener:Lcom/cyanogenmod/trebuchet/FolderInfo$FolderListener;
    :cond_0
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/FolderInfo;->itemsChanged()V

    .line 73
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 3
    .parameter "title"

    .prologue
    .line 76
    iput-object p1, p0, Lcom/cyanogenmod/trebuchet/FolderInfo;->title:Ljava/lang/CharSequence;

    .line 77
    iget-object v2, p0, Lcom/cyanogenmod/trebuchet/FolderInfo;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cyanogenmod/trebuchet/FolderInfo$FolderListener;

    .line 78
    .local v1, listener:Lcom/cyanogenmod/trebuchet/FolderInfo$FolderListener;
    invoke-interface {v1, p1}, Lcom/cyanogenmod/trebuchet/FolderInfo$FolderListener;->onTitleChanged(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 80
    .end local v1           #listener:Lcom/cyanogenmod/trebuchet/FolderInfo$FolderListener;
    :cond_0
    return-void
.end method

.method unbind()V
    .locals 1

    .prologue
    .line 106
    invoke-super {p0}, Lcom/cyanogenmod/trebuchet/ItemInfo;->unbind()V

    .line 107
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/FolderInfo;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 108
    return-void
.end method
