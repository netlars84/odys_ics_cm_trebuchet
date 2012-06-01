.class public final enum Lcom/cyanogenmod/trebuchet/AppsCustomizeView$SortMode;
.super Ljava/lang/Enum;
.source "AppsCustomizeView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyanogenmod/trebuchet/AppsCustomizeView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SortMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/cyanogenmod/trebuchet/AppsCustomizeView$SortMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/cyanogenmod/trebuchet/AppsCustomizeView$SortMode;

.field public static final enum InstallDate:Lcom/cyanogenmod/trebuchet/AppsCustomizeView$SortMode;

.field public static final enum Title:Lcom/cyanogenmod/trebuchet/AppsCustomizeView$SortMode;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 29
    new-instance v0, Lcom/cyanogenmod/trebuchet/AppsCustomizeView$SortMode;

    const-string v1, "Title"

    invoke-direct {v0, v1, v2}, Lcom/cyanogenmod/trebuchet/AppsCustomizeView$SortMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cyanogenmod/trebuchet/AppsCustomizeView$SortMode;->Title:Lcom/cyanogenmod/trebuchet/AppsCustomizeView$SortMode;

    .line 30
    new-instance v0, Lcom/cyanogenmod/trebuchet/AppsCustomizeView$SortMode;

    const-string v1, "InstallDate"

    invoke-direct {v0, v1, v3}, Lcom/cyanogenmod/trebuchet/AppsCustomizeView$SortMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cyanogenmod/trebuchet/AppsCustomizeView$SortMode;->InstallDate:Lcom/cyanogenmod/trebuchet/AppsCustomizeView$SortMode;

    .line 28
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/cyanogenmod/trebuchet/AppsCustomizeView$SortMode;

    sget-object v1, Lcom/cyanogenmod/trebuchet/AppsCustomizeView$SortMode;->Title:Lcom/cyanogenmod/trebuchet/AppsCustomizeView$SortMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/cyanogenmod/trebuchet/AppsCustomizeView$SortMode;->InstallDate:Lcom/cyanogenmod/trebuchet/AppsCustomizeView$SortMode;

    aput-object v1, v0, v3

    sput-object v0, Lcom/cyanogenmod/trebuchet/AppsCustomizeView$SortMode;->$VALUES:[Lcom/cyanogenmod/trebuchet/AppsCustomizeView$SortMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/cyanogenmod/trebuchet/AppsCustomizeView$SortMode;
    .locals 1
    .parameter

    .prologue
    .line 28
    const-class v0, Lcom/cyanogenmod/trebuchet/AppsCustomizeView$SortMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/cyanogenmod/trebuchet/AppsCustomizeView$SortMode;

    return-object v0
.end method

.method public static values()[Lcom/cyanogenmod/trebuchet/AppsCustomizeView$SortMode;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/cyanogenmod/trebuchet/AppsCustomizeView$SortMode;->$VALUES:[Lcom/cyanogenmod/trebuchet/AppsCustomizeView$SortMode;

    invoke-virtual {v0}, [Lcom/cyanogenmod/trebuchet/AppsCustomizeView$SortMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/cyanogenmod/trebuchet/AppsCustomizeView$SortMode;

    return-object v0
.end method
