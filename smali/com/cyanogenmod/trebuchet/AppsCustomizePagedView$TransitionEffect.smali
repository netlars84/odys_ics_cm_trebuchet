.class public final enum Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView$TransitionEffect;
.super Ljava/lang/Enum;
.source "AppsCustomizePagedView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TransitionEffect"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView$TransitionEffect;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView$TransitionEffect;

.field public static final enum CubeIn:Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView$TransitionEffect;

.field public static final enum CubeOut:Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView$TransitionEffect;

.field public static final enum RotateDown:Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView$TransitionEffect;

.field public static final enum RotateUp:Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView$TransitionEffect;

.field public static final enum Stack:Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView$TransitionEffect;

.field public static final enum Standard:Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView$TransitionEffect;

.field public static final enum Tablet:Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView$TransitionEffect;

.field public static final enum ZoomIn:Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView$TransitionEffect;

.field public static final enum ZoomOut:Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView$TransitionEffect;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 232
    new-instance v0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView$TransitionEffect;

    const-string v1, "Standard"

    invoke-direct {v0, v1, v3}, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView$TransitionEffect;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView$TransitionEffect;->Standard:Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView$TransitionEffect;

    .line 233
    new-instance v0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView$TransitionEffect;

    const-string v1, "Tablet"

    invoke-direct {v0, v1, v4}, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView$TransitionEffect;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView$TransitionEffect;->Tablet:Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView$TransitionEffect;

    .line 234
    new-instance v0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView$TransitionEffect;

    const-string v1, "ZoomIn"

    invoke-direct {v0, v1, v5}, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView$TransitionEffect;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView$TransitionEffect;->ZoomIn:Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView$TransitionEffect;

    .line 235
    new-instance v0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView$TransitionEffect;

    const-string v1, "ZoomOut"

    invoke-direct {v0, v1, v6}, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView$TransitionEffect;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView$TransitionEffect;->ZoomOut:Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView$TransitionEffect;

    .line 236
    new-instance v0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView$TransitionEffect;

    const-string v1, "RotateUp"

    invoke-direct {v0, v1, v7}, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView$TransitionEffect;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView$TransitionEffect;->RotateUp:Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView$TransitionEffect;

    .line 237
    new-instance v0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView$TransitionEffect;

    const-string v1, "RotateDown"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView$TransitionEffect;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView$TransitionEffect;->RotateDown:Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView$TransitionEffect;

    .line 238
    new-instance v0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView$TransitionEffect;

    const-string v1, "CubeIn"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView$TransitionEffect;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView$TransitionEffect;->CubeIn:Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView$TransitionEffect;

    .line 239
    new-instance v0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView$TransitionEffect;

    const-string v1, "CubeOut"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView$TransitionEffect;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView$TransitionEffect;->CubeOut:Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView$TransitionEffect;

    .line 240
    new-instance v0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView$TransitionEffect;

    const-string v1, "Stack"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView$TransitionEffect;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView$TransitionEffect;->Stack:Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView$TransitionEffect;

    .line 231
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView$TransitionEffect;

    sget-object v1, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView$TransitionEffect;->Standard:Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView$TransitionEffect;

    aput-object v1, v0, v3

    sget-object v1, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView$TransitionEffect;->Tablet:Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView$TransitionEffect;

    aput-object v1, v0, v4

    sget-object v1, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView$TransitionEffect;->ZoomIn:Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView$TransitionEffect;

    aput-object v1, v0, v5

    sget-object v1, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView$TransitionEffect;->ZoomOut:Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView$TransitionEffect;

    aput-object v1, v0, v6

    sget-object v1, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView$TransitionEffect;->RotateUp:Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView$TransitionEffect;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView$TransitionEffect;->RotateDown:Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView$TransitionEffect;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView$TransitionEffect;->CubeIn:Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView$TransitionEffect;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView$TransitionEffect;->CubeOut:Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView$TransitionEffect;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView$TransitionEffect;->Stack:Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView$TransitionEffect;

    aput-object v2, v0, v1

    sput-object v0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView$TransitionEffect;->$VALUES:[Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView$TransitionEffect;

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
    .line 231
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView$TransitionEffect;
    .locals 1
    .parameter

    .prologue
    .line 231
    const-class v0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView$TransitionEffect;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView$TransitionEffect;

    return-object v0
.end method

.method public static values()[Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView$TransitionEffect;
    .locals 1

    .prologue
    .line 231
    sget-object v0, Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView$TransitionEffect;->$VALUES:[Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView$TransitionEffect;

    invoke-virtual {v0}, [Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView$TransitionEffect;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/cyanogenmod/trebuchet/AppsCustomizePagedView$TransitionEffect;

    return-object v0
.end method
