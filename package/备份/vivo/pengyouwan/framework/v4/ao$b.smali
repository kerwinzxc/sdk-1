.class Lcom/pengyouwan/framework/v4/ao$b;
.super Ljava/lang/Object;
.source "VelocityTrackerCompat.java"

# interfaces
.implements Lcom/pengyouwan/framework/v4/ao$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pengyouwan/framework/v4/ao;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/VelocityTracker;I)F
    .locals 1
    .param p1, "tracker"    # Landroid/view/VelocityTracker;
    .param p2, "pointerId"    # I

    .prologue
    .line 54
    invoke-static {p1, p2}, Lcom/pengyouwan/framework/v4/ap;->a(Landroid/view/VelocityTracker;I)F

    move-result v0

    return v0
.end method
