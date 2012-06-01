.class public Lcom/cyanogenmod/trebuchet/LauncherModel$WidgetAndShortcutNameComparator;
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
    name = "WidgetAndShortcutNameComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Ljava/lang/Object;",
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
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPackageManager:Landroid/content/pm/PackageManager;


# direct methods
.method constructor <init>(Landroid/content/pm/PackageManager;)V
    .locals 1
    .parameter "pm"

    .prologue
    .line 1993
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1994
    iput-object p1, p0, Lcom/cyanogenmod/trebuchet/LauncherModel$WidgetAndShortcutNameComparator;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 1995
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/cyanogenmod/trebuchet/LauncherModel$WidgetAndShortcutNameComparator;->mLabelCache:Ljava/util/HashMap;

    .line 1996
    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 4
    .parameter "a"
    .parameter "b"

    .prologue
    .line 1999
    iget-object v2, p0, Lcom/cyanogenmod/trebuchet/LauncherModel$WidgetAndShortcutNameComparator;->mLabelCache:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2000
    iget-object v2, p0, Lcom/cyanogenmod/trebuchet/LauncherModel$WidgetAndShortcutNameComparator;->mLabelCache:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2007
    .local v0, labelA:Ljava/lang/String;
    :goto_0
    iget-object v2, p0, Lcom/cyanogenmod/trebuchet/LauncherModel$WidgetAndShortcutNameComparator;->mLabelCache:Ljava/util/HashMap;

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2008
    iget-object v2, p0, Lcom/cyanogenmod/trebuchet/LauncherModel$WidgetAndShortcutNameComparator;->mLabelCache:Ljava/util/HashMap;

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2015
    .local v1, labelB:Ljava/lang/String;
    :goto_1
    invoke-static {}, Lcom/cyanogenmod/trebuchet/LauncherModel;->access$1500()Ljava/text/Collator;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    return v2

    .line 2002
    .end local v0           #labelA:Ljava/lang/String;
    .end local v1           #labelB:Ljava/lang/String;
    :cond_0
    instance-of v2, p1, Landroid/appwidget/AppWidgetProviderInfo;

    if-eqz v2, :cond_1

    move-object v2, p1

    check-cast v2, Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v0, v2, Landroid/appwidget/AppWidgetProviderInfo;->label:Ljava/lang/String;

    .line 2005
    .restart local v0       #labelA:Ljava/lang/String;
    :goto_2
    iget-object v2, p0, Lcom/cyanogenmod/trebuchet/LauncherModel$WidgetAndShortcutNameComparator;->mLabelCache:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .end local v0           #labelA:Ljava/lang/String;
    :cond_1
    move-object v2, p1

    .line 2002
    check-cast v2, Landroid/content/pm/ResolveInfo;

    iget-object v3, p0, Lcom/cyanogenmod/trebuchet/LauncherModel$WidgetAndShortcutNameComparator;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, v3}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 2010
    .restart local v0       #labelA:Ljava/lang/String;
    :cond_2
    instance-of v2, p2, Landroid/appwidget/AppWidgetProviderInfo;

    if-eqz v2, :cond_3

    move-object v2, p2

    check-cast v2, Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v1, v2, Landroid/appwidget/AppWidgetProviderInfo;->label:Ljava/lang/String;

    .line 2013
    .restart local v1       #labelB:Ljava/lang/String;
    :goto_3
    iget-object v2, p0, Lcom/cyanogenmod/trebuchet/LauncherModel$WidgetAndShortcutNameComparator;->mLabelCache:Ljava/util/HashMap;

    invoke-virtual {v2, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .end local v1           #labelB:Ljava/lang/String;
    :cond_3
    move-object v2, p2

    .line 2010
    check-cast v2, Landroid/content/pm/ResolveInfo;

    iget-object v3, p0, Lcom/cyanogenmod/trebuchet/LauncherModel$WidgetAndShortcutNameComparator;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, v3}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_3
.end method
