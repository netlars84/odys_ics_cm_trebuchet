.class final enum Lcom/cyanogenmod/trebuchet/Launcher$State;
.super Ljava/lang/Enum;
.source "Launcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyanogenmod/trebuchet/Launcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/cyanogenmod/trebuchet/Launcher$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/cyanogenmod/trebuchet/Launcher$State;

.field public static final enum APPS_CUSTOMIZE:Lcom/cyanogenmod/trebuchet/Launcher$State;

.field public static final enum APPS_CUSTOMIZE_SPRING_LOADED:Lcom/cyanogenmod/trebuchet/Launcher$State;

.field public static final enum WORKSPACE:Lcom/cyanogenmod/trebuchet/Launcher$State;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 170
    new-instance v0, Lcom/cyanogenmod/trebuchet/Launcher$State;

    const-string v1, "WORKSPACE"

    invoke-direct {v0, v1, v2}, Lcom/cyanogenmod/trebuchet/Launcher$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cyanogenmod/trebuchet/Launcher$State;->WORKSPACE:Lcom/cyanogenmod/trebuchet/Launcher$State;

    new-instance v0, Lcom/cyanogenmod/trebuchet/Launcher$State;

    const-string v1, "APPS_CUSTOMIZE"

    invoke-direct {v0, v1, v3}, Lcom/cyanogenmod/trebuchet/Launcher$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cyanogenmod/trebuchet/Launcher$State;->APPS_CUSTOMIZE:Lcom/cyanogenmod/trebuchet/Launcher$State;

    new-instance v0, Lcom/cyanogenmod/trebuchet/Launcher$State;

    const-string v1, "APPS_CUSTOMIZE_SPRING_LOADED"

    invoke-direct {v0, v1, v4}, Lcom/cyanogenmod/trebuchet/Launcher$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cyanogenmod/trebuchet/Launcher$State;->APPS_CUSTOMIZE_SPRING_LOADED:Lcom/cyanogenmod/trebuchet/Launcher$State;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/cyanogenmod/trebuchet/Launcher$State;

    sget-object v1, Lcom/cyanogenmod/trebuchet/Launcher$State;->WORKSPACE:Lcom/cyanogenmod/trebuchet/Launcher$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/cyanogenmod/trebuchet/Launcher$State;->APPS_CUSTOMIZE:Lcom/cyanogenmod/trebuchet/Launcher$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/cyanogenmod/trebuchet/Launcher$State;->APPS_CUSTOMIZE_SPRING_LOADED:Lcom/cyanogenmod/trebuchet/Launcher$State;

    aput-object v1, v0, v4

    sput-object v0, Lcom/cyanogenmod/trebuchet/Launcher$State;->$VALUES:[Lcom/cyanogenmod/trebuchet/Launcher$State;

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
    .line 170
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/cyanogenmod/trebuchet/Launcher$State;
    .locals 1
    .parameter

    .prologue
    .line 170
    const-class v0, Lcom/cyanogenmod/trebuchet/Launcher$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/cyanogenmod/trebuchet/Launcher$State;

    return-object v0
.end method

.method public static values()[Lcom/cyanogenmod/trebuchet/Launcher$State;
    .locals 1

    .prologue
    .line 170
    sget-object v0, Lcom/cyanogenmod/trebuchet/Launcher$State;->$VALUES:[Lcom/cyanogenmod/trebuchet/Launcher$State;

    invoke-virtual {v0}, [Lcom/cyanogenmod/trebuchet/Launcher$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/cyanogenmod/trebuchet/Launcher$State;

    return-object v0
.end method
