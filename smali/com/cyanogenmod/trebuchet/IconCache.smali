.class public Lcom/cyanogenmod/trebuchet/IconCache;
.super Ljava/lang/Object;
.source "IconCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cyanogenmod/trebuchet/IconCache$1;,
        Lcom/cyanogenmod/trebuchet/IconCache$CacheEntry;
    }
.end annotation


# instance fields
.field private final mCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/ComponentName;",
            "Lcom/cyanogenmod/trebuchet/IconCache$CacheEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Lcom/cyanogenmod/trebuchet/LauncherApplication;

.field private final mDefaultIcon:Landroid/graphics/Bitmap;

.field private mIconDpi:I

.field private final mPackageManager:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>(Lcom/cyanogenmod/trebuchet/LauncherApplication;)V
    .locals 6
    .parameter "context"

    .prologue
    const/16 v5, 0xa0

    const/16 v4, 0x140

    const/16 v3, 0xf0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v1, Ljava/util/HashMap;

    const/16 v2, 0x32

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    iput-object v1, p0, Lcom/cyanogenmod/trebuchet/IconCache;->mCache:Ljava/util/HashMap;

    .line 52
    iput-object p1, p0, Lcom/cyanogenmod/trebuchet/IconCache;->mContext:Lcom/cyanogenmod/trebuchet/LauncherApplication;

    .line 53
    invoke-virtual {p1}, Lcom/cyanogenmod/trebuchet/LauncherApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/cyanogenmod/trebuchet/IconCache;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 54
    invoke-virtual {p1}, Lcom/cyanogenmod/trebuchet/LauncherApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 55
    .local v0, density:I
    invoke-static {}, Lcom/cyanogenmod/trebuchet/LauncherApplication;->isScreenLarge()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 56
    const/16 v1, 0x78

    if-ne v0, v1, :cond_0

    .line 57
    iput v5, p0, Lcom/cyanogenmod/trebuchet/IconCache;->mIconDpi:I

    .line 73
    :goto_0
    invoke-direct {p0}, Lcom/cyanogenmod/trebuchet/IconCache;->makeDefaultIcon()Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/cyanogenmod/trebuchet/IconCache;->mDefaultIcon:Landroid/graphics/Bitmap;

    .line 74
    return-void

    .line 58
    :cond_0
    if-ne v0, v5, :cond_1

    .line 59
    iput v3, p0, Lcom/cyanogenmod/trebuchet/IconCache;->mIconDpi:I

    goto :goto_0

    .line 60
    :cond_1
    if-ne v0, v3, :cond_2

    .line 61
    iput v4, p0, Lcom/cyanogenmod/trebuchet/IconCache;->mIconDpi:I

    goto :goto_0

    .line 62
    :cond_2
    if-ne v0, v4, :cond_3

    .line 64
    iput v4, p0, Lcom/cyanogenmod/trebuchet/IconCache;->mIconDpi:I

    goto :goto_0

    .line 67
    :cond_3
    iput v3, p0, Lcom/cyanogenmod/trebuchet/IconCache;->mIconDpi:I

    goto :goto_0

    .line 70
    :cond_4
    invoke-virtual {p1}, Lcom/cyanogenmod/trebuchet/LauncherApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v1, p0, Lcom/cyanogenmod/trebuchet/IconCache;->mIconDpi:I

    goto :goto_0
.end method

.method private cacheLocked(Landroid/content/ComponentName;Landroid/content/pm/ResolveInfo;Ljava/util/HashMap;)Lcom/cyanogenmod/trebuchet/IconCache$CacheEntry;
    .locals 4
    .parameter "componentName"
    .parameter "info"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Landroid/content/pm/ResolveInfo;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/CharSequence;",
            ">;)",
            "Lcom/cyanogenmod/trebuchet/IconCache$CacheEntry;"
        }
    .end annotation

    .prologue
    .line 199
    .local p3, labelCache:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Object;Ljava/lang/CharSequence;>;"
    iget-object v2, p0, Lcom/cyanogenmod/trebuchet/IconCache;->mCache:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cyanogenmod/trebuchet/IconCache$CacheEntry;

    .line 200
    .local v0, entry:Lcom/cyanogenmod/trebuchet/IconCache$CacheEntry;
    if-nez v0, :cond_2

    .line 201
    new-instance v0, Lcom/cyanogenmod/trebuchet/IconCache$CacheEntry;

    .end local v0           #entry:Lcom/cyanogenmod/trebuchet/IconCache$CacheEntry;
    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/cyanogenmod/trebuchet/IconCache$CacheEntry;-><init>(Lcom/cyanogenmod/trebuchet/IconCache$1;)V

    .line 203
    .restart local v0       #entry:Lcom/cyanogenmod/trebuchet/IconCache$CacheEntry;
    iget-object v2, p0, Lcom/cyanogenmod/trebuchet/IconCache;->mCache:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    invoke-static {p2}, Lcom/cyanogenmod/trebuchet/LauncherModel;->getComponentNameFromResolveInfo(Landroid/content/pm/ResolveInfo;)Landroid/content/ComponentName;

    move-result-object v1

    .line 206
    .local v1, key:Landroid/content/ComponentName;
    if-eqz p3, :cond_3

    invoke-virtual {p3, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 207
    invoke-virtual {p3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/cyanogenmod/trebuchet/IconCache$CacheEntry;->title:Ljava/lang/String;

    .line 214
    :cond_0
    :goto_0
    iget-object v2, v0, Lcom/cyanogenmod/trebuchet/IconCache$CacheEntry;->title:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 215
    iget-object v2, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iput-object v2, v0, Lcom/cyanogenmod/trebuchet/IconCache$CacheEntry;->title:Ljava/lang/String;

    .line 218
    :cond_1
    invoke-virtual {p0, p2}, Lcom/cyanogenmod/trebuchet/IconCache;->getFullResIcon(Landroid/content/pm/ResolveInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget-object v3, p0, Lcom/cyanogenmod/trebuchet/IconCache;->mContext:Lcom/cyanogenmod/trebuchet/LauncherApplication;

    invoke-static {v2, v3}, Lcom/cyanogenmod/trebuchet/Utilities;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, v0, Lcom/cyanogenmod/trebuchet/IconCache$CacheEntry;->icon:Landroid/graphics/Bitmap;

    .line 221
    .end local v1           #key:Landroid/content/ComponentName;
    :cond_2
    return-object v0

    .line 209
    .restart local v1       #key:Landroid/content/ComponentName;
    :cond_3
    iget-object v2, p0, Lcom/cyanogenmod/trebuchet/IconCache;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p2, v2}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/cyanogenmod/trebuchet/IconCache$CacheEntry;->title:Ljava/lang/String;

    .line 210
    if-eqz p3, :cond_0

    .line 211
    iget-object v2, v0, Lcom/cyanogenmod/trebuchet/IconCache$CacheEntry;->title:Ljava/lang/String;

    invoke-virtual {p3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private makeDefaultIcon()Landroid/graphics/Bitmap;
    .locals 7

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 125
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/IconCache;->getFullResDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 126
    .local v2, d:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 129
    .local v0, b:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 130
    .local v1, c:Landroid/graphics/Canvas;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-virtual {v2, v6, v6, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 131
    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 132
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 133
    return-object v0
.end method


# virtual methods
.method public flush()V
    .locals 2

    .prologue
    .line 149
    iget-object v1, p0, Lcom/cyanogenmod/trebuchet/IconCache;->mCache:Ljava/util/HashMap;

    monitor-enter v1

    .line 150
    :try_start_0
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/IconCache;->mCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 151
    monitor-exit v1

    .line 152
    return-void

    .line 151
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getAllIcons()Ljava/util/HashMap;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/ComponentName;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 225
    iget-object v5, p0, Lcom/cyanogenmod/trebuchet/IconCache;->mCache:Ljava/util/HashMap;

    monitor-enter v5

    .line 226
    :try_start_0
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 227
    .local v3, set:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/ComponentName;Landroid/graphics/Bitmap;>;"
    iget-object v4, p0, Lcom/cyanogenmod/trebuchet/IconCache;->mCache:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 228
    .local v0, cn:Landroid/content/ComponentName;
    iget-object v4, p0, Lcom/cyanogenmod/trebuchet/IconCache;->mCache:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cyanogenmod/trebuchet/IconCache$CacheEntry;

    .line 229
    .local v1, e:Lcom/cyanogenmod/trebuchet/IconCache$CacheEntry;
    iget-object v4, v1, Lcom/cyanogenmod/trebuchet/IconCache$CacheEntry;->icon:Landroid/graphics/Bitmap;

    invoke-virtual {v3, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 232
    .end local v0           #cn:Landroid/content/ComponentName;
    .end local v1           #e:Lcom/cyanogenmod/trebuchet/IconCache$CacheEntry;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #set:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/ComponentName;Landroid/graphics/Bitmap;>;"
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 231
    .restart local v2       #i$:Ljava/util/Iterator;
    .restart local v3       #set:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/ComponentName;Landroid/graphics/Bitmap;>;"
    :cond_0
    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v3
.end method

.method public getFullResDefaultActivityIcon()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 77
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x10d

    invoke-virtual {p0, v0, v1}, Lcom/cyanogenmod/trebuchet/IconCache;->getFullResIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getFullResIcon(Landroid/content/pm/ResolveInfo;)Landroid/graphics/drawable/Drawable;
    .locals 5
    .parameter "info"

    .prologue
    .line 110
    :try_start_0
    iget-object v3, p0, Lcom/cyanogenmod/trebuchet/IconCache;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v4, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 115
    .local v2, resources:Landroid/content/res/Resources;
    :goto_0
    if-eqz v2, :cond_0

    .line 116
    iget-object v3, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v3}, Landroid/content/pm/ActivityInfo;->getIconResource()I

    move-result v1

    .line 117
    .local v1, iconId:I
    if-eqz v1, :cond_0

    .line 118
    invoke-virtual {p0, v2, v1}, Lcom/cyanogenmod/trebuchet/IconCache;->getFullResIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 121
    .end local v1           #iconId:I
    :goto_1
    return-object v3

    .line 112
    .end local v2           #resources:Landroid/content/res/Resources;
    :catch_0
    move-exception v0

    .line 113
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v2, 0x0

    .restart local v2       #resources:Landroid/content/res/Resources;
    goto :goto_0

    .line 121
    .end local v0           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/IconCache;->getFullResDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    goto :goto_1
.end method

.method public getFullResIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;
    .locals 3
    .parameter "resources"
    .parameter "iconId"

    .prologue
    .line 84
    :try_start_0
    iget v2, p0, Lcom/cyanogenmod/trebuchet/IconCache;->mIconDpi:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 89
    .local v0, d:Landroid/graphics/drawable/Drawable;
    :goto_0
    if-eqz v0, :cond_0

    .end local v0           #d:Landroid/graphics/drawable/Drawable;
    :goto_1
    return-object v0

    .line 85
    :catch_0
    move-exception v1

    .line 86
    .local v1, e:Landroid/content/res/Resources$NotFoundException;
    const/4 v0, 0x0

    .restart local v0       #d:Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 89
    .end local v1           #e:Landroid/content/res/Resources$NotFoundException;
    :cond_0
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/IconCache;->getFullResDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_1
.end method

.method public getFullResIcon(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;
    .locals 3
    .parameter "packageName"
    .parameter "iconId"

    .prologue
    .line 95
    :try_start_0
    iget-object v2, p0, Lcom/cyanogenmod/trebuchet/IconCache;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, p1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 99
    .local v1, resources:Landroid/content/res/Resources;
    :goto_0
    if-eqz v1, :cond_0

    .line 100
    if-eqz p2, :cond_0

    .line 101
    invoke-virtual {p0, v1, p2}, Lcom/cyanogenmod/trebuchet/IconCache;->getFullResIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 104
    :goto_1
    return-object v2

    .line 96
    .end local v1           #resources:Landroid/content/res/Resources;
    :catch_0
    move-exception v0

    .line 97
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v1, 0x0

    .restart local v1       #resources:Landroid/content/res/Resources;
    goto :goto_0

    .line 104
    .end local v0           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    invoke-virtual {p0}, Lcom/cyanogenmod/trebuchet/IconCache;->getFullResDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_1
.end method

.method public getIcon(Landroid/content/ComponentName;Landroid/content/pm/ResolveInfo;Ljava/util/HashMap;)Landroid/graphics/Bitmap;
    .locals 3
    .parameter "component"
    .parameter "resolveInfo"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Landroid/content/pm/ResolveInfo;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/CharSequence;",
            ">;)",
            "Landroid/graphics/Bitmap;"
        }
    .end annotation

    .prologue
    .line 183
    .local p3, labelCache:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Object;Ljava/lang/CharSequence;>;"
    iget-object v2, p0, Lcom/cyanogenmod/trebuchet/IconCache;->mCache:Ljava/util/HashMap;

    monitor-enter v2

    .line 184
    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    .line 185
    :cond_0
    const/4 v1, 0x0

    :try_start_0
    monitor-exit v2

    .line 189
    :goto_0
    return-object v1

    .line 188
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/cyanogenmod/trebuchet/IconCache;->cacheLocked(Landroid/content/ComponentName;Landroid/content/pm/ResolveInfo;Ljava/util/HashMap;)Lcom/cyanogenmod/trebuchet/IconCache$CacheEntry;

    move-result-object v0

    .line 189
    .local v0, entry:Lcom/cyanogenmod/trebuchet/IconCache$CacheEntry;
    iget-object v1, v0, Lcom/cyanogenmod/trebuchet/IconCache$CacheEntry;->icon:Landroid/graphics/Bitmap;

    monitor-exit v2

    goto :goto_0

    .line 190
    .end local v0           #entry:Lcom/cyanogenmod/trebuchet/IconCache$CacheEntry;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getIcon(Landroid/content/Intent;)Landroid/graphics/Bitmap;
    .locals 6
    .parameter "intent"

    .prologue
    .line 168
    iget-object v4, p0, Lcom/cyanogenmod/trebuchet/IconCache;->mCache:Ljava/util/HashMap;

    monitor-enter v4

    .line 169
    :try_start_0
    iget-object v3, p0, Lcom/cyanogenmod/trebuchet/IconCache;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v5, 0x0

    invoke-virtual {v3, p1, v5}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    .line 170
    .local v2, resolveInfo:Landroid/content/pm/ResolveInfo;
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 172
    .local v0, component:Landroid/content/ComponentName;
    if-eqz v2, :cond_0

    if-nez v0, :cond_1

    .line 173
    :cond_0
    iget-object v3, p0, Lcom/cyanogenmod/trebuchet/IconCache;->mDefaultIcon:Landroid/graphics/Bitmap;

    monitor-exit v4

    .line 177
    :goto_0
    return-object v3

    .line 176
    :cond_1
    const/4 v3, 0x0

    invoke-direct {p0, v0, v2, v3}, Lcom/cyanogenmod/trebuchet/IconCache;->cacheLocked(Landroid/content/ComponentName;Landroid/content/pm/ResolveInfo;Ljava/util/HashMap;)Lcom/cyanogenmod/trebuchet/IconCache$CacheEntry;

    move-result-object v1

    .line 177
    .local v1, entry:Lcom/cyanogenmod/trebuchet/IconCache$CacheEntry;
    iget-object v3, v1, Lcom/cyanogenmod/trebuchet/IconCache$CacheEntry;->icon:Landroid/graphics/Bitmap;

    monitor-exit v4

    goto :goto_0

    .line 178
    .end local v0           #component:Landroid/content/ComponentName;
    .end local v1           #entry:Lcom/cyanogenmod/trebuchet/IconCache$CacheEntry;
    .end local v2           #resolveInfo:Landroid/content/pm/ResolveInfo;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public getTitleAndIcon(Lcom/cyanogenmod/trebuchet/ApplicationInfo;Landroid/content/pm/ResolveInfo;Ljava/util/HashMap;)V
    .locals 3
    .parameter "application"
    .parameter "info"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cyanogenmod/trebuchet/ApplicationInfo;",
            "Landroid/content/pm/ResolveInfo;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/CharSequence;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 159
    .local p3, labelCache:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Object;Ljava/lang/CharSequence;>;"
    iget-object v2, p0, Lcom/cyanogenmod/trebuchet/IconCache;->mCache:Ljava/util/HashMap;

    monitor-enter v2

    .line 160
    :try_start_0
    iget-object v1, p1, Lcom/cyanogenmod/trebuchet/ApplicationInfo;->componentName:Landroid/content/ComponentName;

    invoke-direct {p0, v1, p2, p3}, Lcom/cyanogenmod/trebuchet/IconCache;->cacheLocked(Landroid/content/ComponentName;Landroid/content/pm/ResolveInfo;Ljava/util/HashMap;)Lcom/cyanogenmod/trebuchet/IconCache$CacheEntry;

    move-result-object v0

    .line 162
    .local v0, entry:Lcom/cyanogenmod/trebuchet/IconCache$CacheEntry;
    iget-object v1, v0, Lcom/cyanogenmod/trebuchet/IconCache$CacheEntry;->title:Ljava/lang/String;

    iput-object v1, p1, Lcom/cyanogenmod/trebuchet/ApplicationInfo;->title:Ljava/lang/CharSequence;

    .line 163
    iget-object v1, v0, Lcom/cyanogenmod/trebuchet/IconCache$CacheEntry;->icon:Landroid/graphics/Bitmap;

    iput-object v1, p1, Lcom/cyanogenmod/trebuchet/ApplicationInfo;->iconBitmap:Landroid/graphics/Bitmap;

    .line 164
    monitor-exit v2

    .line 165
    return-void

    .line 164
    .end local v0           #entry:Lcom/cyanogenmod/trebuchet/IconCache$CacheEntry;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isDefaultIcon(Landroid/graphics/Bitmap;)Z
    .locals 1
    .parameter "icon"

    .prologue
    .line 194
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/IconCache;->mDefaultIcon:Landroid/graphics/Bitmap;

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public remove(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "componentName"

    .prologue
    .line 140
    iget-object v1, p0, Lcom/cyanogenmod/trebuchet/IconCache;->mCache:Ljava/util/HashMap;

    monitor-enter v1

    .line 141
    :try_start_0
    iget-object v0, p0, Lcom/cyanogenmod/trebuchet/IconCache;->mCache:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    monitor-exit v1

    .line 143
    return-void

    .line 142
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
