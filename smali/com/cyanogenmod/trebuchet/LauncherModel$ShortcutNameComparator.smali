.class public Lcom/cyanogenmod/trebuchet/LauncherModel$ShortcutNameComparator;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyanogenmod/trebuchet/LauncherModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ShortcutNameComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Landroid/content/pm/ResolveInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private mLabelCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private mPackageManager:Landroid/content/pm/PackageManager;


# direct methods
.method constructor <init>(Landroid/content/pm/PackageManager;Ljava/util/HashMap;)V
    .locals 0
    .parameter "pm"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/CharSequence;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1965
    .local p2, labelCache:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Object;Ljava/lang/CharSequence;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1966
    iput-object p1, p0, Lcom/cyanogenmod/trebuchet/LauncherModel$ShortcutNameComparator;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 1967
    iput-object p2, p0, Lcom/cyanogenmod/trebuchet/LauncherModel$ShortcutNameComparator;->mLabelCache:Ljava/util/HashMap;

    .line 1968
    return-void
.end method


# virtual methods
.method public final compare(Landroid/content/pm/ResolveInfo;Landroid/content/pm/ResolveInfo;)I
    .locals 5
    .parameter "a"
    .parameter "b"

    .prologue
    .line 1971
    invoke-static {p1}, Lcom/cyanogenmod/trebuchet/LauncherModel;->getComponentNameFromResolveInfo(Landroid/content/pm/ResolveInfo;)Landroid/content/ComponentName;

    move-result-object v0

    .line 1972
    .local v0, keyA:Landroid/content/ComponentName;
    invoke-static {p2}, Lcom/cyanogenmod/trebuchet/LauncherModel;->getComponentNameFromResolveInfo(Landroid/content/pm/ResolveInfo;)Landroid/content/ComponentName;

    move-result-object v1

    .line 1973
    .local v1, keyB:Landroid/content/ComponentName;
    iget-object v4, p0, Lcom/cyanogenmod/trebuchet/LauncherModel$ShortcutNameComparator;->mLabelCache:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1974
    iget-object v4, p0, Lcom/cyanogenmod/trebuchet/LauncherModel$ShortcutNameComparator;->mLabelCache:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    .line 1980
    .local v2, labelA:Ljava/lang/CharSequence;
    :goto_0
    iget-object v4, p0, Lcom/cyanogenmod/trebuchet/LauncherModel$ShortcutNameComparator;->mLabelCache:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1981
    iget-object v4, p0, Lcom/cyanogenmod/trebuchet/LauncherModel$ShortcutNameComparator;->mLabelCache:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    .line 1987
    .local v3, labelB:Ljava/lang/CharSequence;
    :goto_1
    invoke-static {}, Lcom/cyanogenmod/trebuchet/LauncherModel;->access$1500()Ljava/text/Collator;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/text/Collator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v4

    return v4

    .line 1976
    .end local v2           #labelA:Ljava/lang/CharSequence;
    .end local v3           #labelB:Ljava/lang/CharSequence;
    :cond_0
    iget-object v4, p0, Lcom/cyanogenmod/trebuchet/LauncherModel$ShortcutNameComparator;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p1, v4}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1978
    .restart local v2       #labelA:Ljava/lang/CharSequence;
    iget-object v4, p0, Lcom/cyanogenmod/trebuchet/LauncherModel$ShortcutNameComparator;->mLabelCache:Ljava/util/HashMap;

    invoke-virtual {v4, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1983
    :cond_1
    iget-object v4, p0, Lcom/cyanogenmod/trebuchet/LauncherModel$ShortcutNameComparator;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p2, v4}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1985
    .restart local v3       #labelB:Ljava/lang/CharSequence;
    iget-object v4, p0, Lcom/cyanogenmod/trebuchet/LauncherModel$ShortcutNameComparator;->mLabelCache:Ljava/util/HashMap;

    invoke-virtual {v4, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1958
    check-cast p1, Landroid/content/pm/ResolveInfo;

    .end local p1
    check-cast p2, Landroid/content/pm/ResolveInfo;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/cyanogenmod/trebuchet/LauncherModel$ShortcutNameComparator;->compare(Landroid/content/pm/ResolveInfo;Landroid/content/pm/ResolveInfo;)I

    move-result v0

    return v0
.end method
