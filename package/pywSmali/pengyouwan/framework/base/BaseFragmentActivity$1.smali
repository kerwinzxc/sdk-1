.class Lcom/pengyouwan/framework/base/BaseFragmentActivity$1;
.super Lcom/pengyouwan/framework/base/BaseBroadcastReceiver;
.source "BaseFragmentActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pengyouwan/framework/base/BaseFragmentActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/pengyouwan/framework/base/BaseFragmentActivity;


# direct methods
.method constructor <init>(Lcom/pengyouwan/framework/base/BaseFragmentActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pengyouwan/framework/base/BaseFragmentActivity$1;->a:Lcom/pengyouwan/framework/base/BaseFragmentActivity;

    .line 58
    invoke-direct {p0}, Lcom/pengyouwan/framework/base/BaseBroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 61
    invoke-super {p0, p1, p2}, Lcom/pengyouwan/framework/base/BaseBroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 62
    iget-object v0, p0, Lcom/pengyouwan/framework/base/BaseFragmentActivity$1;->a:Lcom/pengyouwan/framework/base/BaseFragmentActivity;

    invoke-virtual {v0, p1, p2}, Lcom/pengyouwan/framework/base/BaseFragmentActivity;->a(Landroid/content/Context;Landroid/content/Intent;)V

    .line 63
    return-void
.end method
