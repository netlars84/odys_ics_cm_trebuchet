.class Lcom/cyanogenmod/trebuchet/ShortcutInfo;
.super Lcom/cyanogenmod/trebuchet/ItemInfo;
.source "ShortcutInfo.java"


# instance fields
.field customIcon:Z

.field iconResource:Landroid/content/Intent$ShortcutIconResource;

.field intent:Landroid/content/Intent;

.field private mIcon:Landroid/graphics/Bitmap;

.field title:Ljava/lang/CharSequence;

.field usingFallbackIcon:Z


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/cyanogenmod/trebuchet/ItemInfo;-><init>()V

    .line 66
    const/4 v0, 0x1

    iput v0, p0, Lcom/cyanogenmod/trebuchet/ShortcutInfo;->itemType:I

    .line 67
    return-void
.end method

.method public constructor <init>(Lcom/cyanogenmod/trebuchet/ApplicationInfo;)V
    .locals 2
    .parameter "info"

    .prologue
    .line 84
    invoke-direct {p0, p1}, Lcom/cyanogenmod/trebuchet/ItemInfo;-><init>(Lcom/cyanogenmod/trebuchet/ItemInfo;)V

    .line 85
    iget-object v0, p1, Lcom/cyanogenmod/trebuchet/ApplicationInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cyanogenmod/trebuchet/ShortcutInfo;->title:Ljava/lang/CharSequence;

    .line 86
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p1, Lcom/cyanogenmod/trebuchet/ApplicationInfo;->intent:Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iput-object v0, p0, Lcom/cyanogenmod/trebuchet/ShortcutInfo;->intent:Landroid/content/Intent;

    .line 87
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cyanogenmod/trebuchet/ShortcutInfo;->customIcon:Z

    .line 88
    return-void
.end method


# virtual methods
.method public getIcon(Lcom/cyanogenmod/trebuchet/IconCache;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "iconCache"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/ShortcutInfo;->mIcon:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/ShortcutInfo;->intent:Landroid/content/Intent;

    invoke-virtual {p1, v0}, Lcom/cyanogenmod/trebuchet/IconCache;->getIcon(Landroid/content/Intent;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/cyanogenmod/trebuchet/ShortcutInfo;->mIcon:Landroid/graphics/Bitmap;

    .line 97
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/ShortcutInfo;->mIcon:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0}, Lcom/cyanogenmod/trebuchet/IconCache;->isDefaultIcon(Landroid/graphics/Bitmap;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/cyanogenmod/trebuchet/ShortcutInfo;->usingFallbackIcon:Z

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/ShortcutInfo;->mIcon:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method onAddToDatabase(Landroid/content/ContentValues;)V
    .locals 5
    .parameter "values"

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 119
    invoke-super {p0, p1}, Lcom/cyanogenmod/trebuchet/ItemInfo;->onAddToDatabase(Landroid/content/ContentValues;)V

    .line 121
    iget-object v3, p0, Lcom/cyanogenmod/trebuchet/ShortcutInfo;->title:Ljava/lang/CharSequence;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/cyanogenmod/trebuchet/ShortcutInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 122
    .local v0, titleStr:Ljava/lang/String;
    :goto_0
    const-string v3, "title"

    invoke-virtual {p1, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    iget-object v3, p0, Lcom/cyanogenmod/trebuchet/ShortcutInfo;->intent:Landroid/content/Intent;

    if-eqz v3, :cond_2

    iget-object v2, p0, Lcom/cyanogenmod/trebuchet/ShortcutInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v2, v4}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v1

    .line 125
    .local v1, uri:Ljava/lang/String;
    :goto_1
    const-string v2, "intent"

    invoke-virtual {p1, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    iget-boolean v2, p0, Lcom/cyanogenmod/trebuchet/ShortcutInfo;->customIcon:Z

    if-eqz v2, :cond_3

    .line 128
    const-string v2, "iconType"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 130
    iget-object v2, p0, Lcom/cyanogenmod/trebuchet/ShortcutInfo;->mIcon:Landroid/graphics/Bitmap;

    invoke-static {p1, v2}, Lcom/cyanogenmod/trebuchet/ShortcutInfo;->writeBitmap(Landroid/content/ContentValues;Landroid/graphics/Bitmap;)V

    .line 144
    :cond_0
    :goto_2
    return-void

    .end local v0           #titleStr:Ljava/lang/String;
    .end local v1           #uri:Ljava/lang/String;
    :cond_1
    move-object v0, v2

    .line 121
    goto :goto_0

    .restart local v0       #titleStr:Ljava/lang/String;
    :cond_2
    move-object v1, v2

    .line 124
    goto :goto_1

    .line 132
    .restart local v1       #uri:Ljava/lang/String;
    :cond_3
    iget-boolean v2, p0, Lcom/cyanogenmod/trebuchet/ShortcutInfo;->usingFallbackIcon:Z

    if-nez v2, :cond_4

    .line 133
    iget-object v2, p0, Lcom/cyanogenmod/trebuchet/ShortcutInfo;->mIcon:Landroid/graphics/Bitmap;

    invoke-static {p1, v2}, Lcom/cyanogenmod/trebuchet/ShortcutInfo;->writeBitmap(Landroid/content/ContentValues;Landroid/graphics/Bitmap;)V

    .line 135
    :cond_4
    const-string v2, "iconType"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 137
    iget-object v2, p0, Lcom/cyanogenmod/trebuchet/ShortcutInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    if-eqz v2, :cond_0

    .line 138
    const-string v2, "iconPackage"

    iget-object v3, p0, Lcom/cyanogenmod/trebuchet/ShortcutInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    iget-object v3, v3, Landroid/content/Intent$ShortcutIconResource;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    const-string v2, "iconResource"

    iget-object v3, p0, Lcom/cyanogenmod/trebuchet/ShortcutInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    iget-object v3, v3, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method final setActivity(Landroid/content/ComponentName;I)V
    .locals 2
    .parameter "className"
    .parameter "launchFlags"

    .prologue
    .line 110
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/cyanogenmod/trebuchet/ShortcutInfo;->intent:Landroid/content/Intent;

    .line 111
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/ShortcutInfo;->intent:Landroid/content/Intent;

    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 112
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/ShortcutInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 113
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/ShortcutInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v0, p2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 114
    const/4 v0, 0x0

    iput v0, p0, Lcom/cyanogenmod/trebuchet/ShortcutInfo;->itemType:I

    .line 115
    return-void
.end method

.method public setIcon(Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "b"

    .prologue
    .line 91
    iput-object p1, p0, Lcom/cyanogenmod/trebuchet/ShortcutInfo;->mIcon:Landroid/graphics/Bitmap;

    .line 92
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 148
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ShortcutInfo(title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/cyanogenmod/trebuchet/ShortcutInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
