.class Lcom/pengyouwan/framework/v4/h$1;
.super Landroid/view/accessibility/AccessibilityNodeProvider;
.source "AccessibilityNodeProviderCompatJellyBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pengyouwan/framework/v4/h;->a(Lcom/pengyouwan/framework/v4/h$a;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic a:Lcom/pengyouwan/framework/v4/h$a;


# direct methods
.method constructor <init>(Lcom/pengyouwan/framework/v4/h$a;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pengyouwan/framework/v4/h$1;->a:Lcom/pengyouwan/framework/v4/h$a;

    .line 41
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityNodeProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 1
    .param p1, "virtualViewId"    # I

    .prologue
    .line 44
    iget-object v0, p0, Lcom/pengyouwan/framework/v4/h$1;->a:Lcom/pengyouwan/framework/v4/h$a;

    invoke-interface {v0, p1}, Lcom/pengyouwan/framework/v4/h$a;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityNodeInfo;

    return-object v0
.end method

.method public findAccessibilityNodeInfosByText(Ljava/lang/String;I)Ljava/util/List;
    .locals 1
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "virtualViewId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 53
    iget-object v0, p0, Lcom/pengyouwan/framework/v4/h$1;->a:Lcom/pengyouwan/framework/v4/h$a;

    invoke-interface {v0, p1, p2}, Lcom/pengyouwan/framework/v4/h$a;->a(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    .line 52
    return-object v0
.end method

.method public performAction(IILandroid/os/Bundle;)Z
    .locals 1
    .param p1, "virtualViewId"    # I
    .param p2, "action"    # I
    .param p3, "arguments"    # Landroid/os/Bundle;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/pengyouwan/framework/v4/h$1;->a:Lcom/pengyouwan/framework/v4/h$a;

    invoke-interface {v0, p1, p2, p3}, Lcom/pengyouwan/framework/v4/h$a;->a(IILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method
