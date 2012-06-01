.class public interface abstract Lcom/cyanogenmod/trebuchet/AppsCustomizeView;
.super Ljava/lang/Object;
.source "AppsCustomizeView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cyanogenmod/trebuchet/AppsCustomizeView$SortMode;,
        Lcom/cyanogenmod/trebuchet/AppsCustomizeView$ContentType;
    }
.end annotation


# virtual methods
.method public abstract addApps(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cyanogenmod/trebuchet/ApplicationInfo;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract clearAllWidgetPreviews()V
.end method

.method public abstract dumpState()V
.end method

.method public abstract getSaveInstanceStateIndex()I
.end method

.method public abstract getSortMode()Lcom/cyanogenmod/trebuchet/AppsCustomizeView$SortMode;
.end method

.method public abstract hideIndicator(Z)V
.end method

.method public abstract loadContent()V
.end method

.method public abstract loadContent(Z)V
.end method

.method public abstract onPackagesUpdated()V
.end method

.method public abstract onTabChanged(Lcom/cyanogenmod/trebuchet/AppsCustomizeView$ContentType;)V
.end method

.method public abstract removeApps(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cyanogenmod/trebuchet/ApplicationInfo;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract reset()V
.end method

.method public abstract restore(I)V
.end method

.method public abstract setApps(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cyanogenmod/trebuchet/ApplicationInfo;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setContentType(Lcom/cyanogenmod/trebuchet/AppsCustomizeView$ContentType;)V
.end method

.method public abstract setCurrentToWidgets()V
.end method

.method public abstract setSortMode(Lcom/cyanogenmod/trebuchet/AppsCustomizeView$SortMode;)V
.end method

.method public abstract setup(Lcom/cyanogenmod/trebuchet/Launcher;Lcom/cyanogenmod/trebuchet/DragController;)V
.end method

.method public abstract showAllAppsCling()V
.end method

.method public abstract showIndicator(Z)V
.end method

.method public abstract surrender()V
.end method

.method public abstract updateApps(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cyanogenmod/trebuchet/ApplicationInfo;",
            ">;)V"
        }
    .end annotation
.end method
