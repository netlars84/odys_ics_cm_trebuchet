.class public final enum Lcom/cyanogenmod/trebuchet/AppsCustomizeView$ContentType;
.super Ljava/lang/Enum;
.source "AppsCustomizeView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyanogenmod/trebuchet/AppsCustomizeView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ContentType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/cyanogenmod/trebuchet/AppsCustomizeView$ContentType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/cyanogenmod/trebuchet/AppsCustomizeView$ContentType;

.field public static final enum Apps:Lcom/cyanogenmod/trebuchet/AppsCustomizeView$ContentType;

.field public static final enum Widgets:Lcom/cyanogenmod/trebuchet/AppsCustomizeView$ContentType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 24
    new-instance v0, Lcom/cyanogenmod/trebuchet/AppsCustomizeView$ContentType;

    const-string v1, "Apps"

    invoke-direct {v0, v1, v2}, Lcom/cyanogenmod/trebuchet/AppsCustomizeView$ContentType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cyanogenmod/trebuchet/AppsCustomizeView$ContentType;->Apps:Lcom/cyanogenmod/trebuchet/AppsCustomizeView$ContentType;

    .line 25
    new-instance v0, Lcom/cyanogenmod/trebuchet/AppsCustomizeView$ContentType;

    const-string v1, "Widgets"

    invoke-direct {v0, v1, v3}, Lcom/cyanogenmod/trebuchet/AppsCustomizeView$ContentType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cyanogenmod/trebuchet/AppsCustomizeView$ContentType;->Widgets:Lcom/cyanogenmod/trebuchet/AppsCustomizeView$ContentType;

    .line 23
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/cyanogenmod/trebuchet/AppsCustomizeView$ContentType;

    sget-object v1, Lcom/cyanogenmod/trebuchet/AppsCustomizeView$ContentType;->Apps:Lcom/cyanogenmod/trebuchet/AppsCustomizeView$ContentType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/cyanogenmod/trebuchet/AppsCustomizeView$ContentType;->Widgets:Lcom/cyanogenmod/trebuchet/AppsCustomizeView$ContentType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/cyanogenmod/trebuchet/AppsCustomizeView$ContentType;->$VALUES:[Lcom/cyanogenmod/trebuchet/AppsCustomizeView$ContentType;

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
    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/cyanogenmod/trebuchet/AppsCustomizeView$ContentType;
    .locals 1
    .parameter

    .prologue
    .line 23
    const-class v0, Lcom/cyanogenmod/trebuchet/AppsCustomizeView$ContentType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/cyanogenmod/trebuchet/AppsCustomizeView$ContentType;

    return-object v0
.end method

.method public static values()[Lcom/cyanogenmod/trebuchet/AppsCustomizeView$ContentType;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/cyanogenmod/trebuchet/AppsCustomizeView$ContentType;->$VALUES:[Lcom/cyanogenmod/trebuchet/AppsCustomizeView$ContentType;

    invoke-virtual {v0}, [Lcom/cyanogenmod/trebuchet/AppsCustomizeView$ContentType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/cyanogenmod/trebuchet/AppsCustomizeView$ContentType;

    return-object v0
.end method
