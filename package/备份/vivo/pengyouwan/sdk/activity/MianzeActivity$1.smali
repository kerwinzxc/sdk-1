.class Lcom/pengyouwan/sdk/activity/MianzeActivity$1;
.super Ljava/lang/Object;
.source "MianzeActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pengyouwan/sdk/activity/MianzeActivity;->g()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/pengyouwan/sdk/activity/MianzeActivity;


# direct methods
.method constructor <init>(Lcom/pengyouwan/sdk/activity/MianzeActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pengyouwan/sdk/activity/MianzeActivity$1;->a:Lcom/pengyouwan/sdk/activity/MianzeActivity;

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/pengyouwan/sdk/activity/MianzeActivity$1;->a:Lcom/pengyouwan/sdk/activity/MianzeActivity;

    invoke-virtual {v0}, Lcom/pengyouwan/sdk/activity/MianzeActivity;->finish()V

    .line 43
    return-void
.end method
